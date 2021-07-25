unit EME4.DB.ComboBox;

interface

uses
  IBX.IBQuery,
  Vcl.StdCtrls;

type
  TCarregarComboBox = class
  private
    FQuery: TIBQuery;
  public
    procedure Carregar(Sender: TComboBox; ACampo: String; ATabela: string);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  EME4.DM,
  EME4.Metodos;

{ TCarregarComboBox }

procedure TCarregarComboBox.Carregar(Sender: TComboBox; ACampo,
  ATabela: string);
begin
  DM.Transacao.StartTransaction;
  try
    Sender.Items.Clear;

    FQuery.SQL.Text := ' SELECT DISTINCT ' + ACampo + ' FROM ' + ATabela;
    FQuery.Open;
    while not FQuery.Eof do
    begin
      Sender.Items.Add(FQuery.Fields[0].AsString);

      FQuery.Next;
    end;
  finally
    DM.Transacao.Rollback;
  end;
end;

constructor TCarregarComboBox.Create;
begin
  FQuery := CriarQuery;
end;

destructor TCarregarComboBox.Destroy;
begin
  FQuery.Free;

  inherited;
end;

end.
