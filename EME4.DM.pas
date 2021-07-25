unit EME4.DM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase, IBX.IBCustomDataSet,
  IBX.IBQuery;

type
  TDM = class(TDataModule)
    Conexao: TIBDatabase;
    Transacao: TIBTransaction;
    qryPessoa: TIBQuery;
    qryPessoaCODIGO: TIntegerField;
    qryPessoaCNPJ: TIBStringField;
    qryPessoaNOME: TIBStringField;
    qryPessoaFANTASIA: TIBStringField;
    qryPessoaTELEFONE: TIBStringField;
    qryPessoaCEP: TIBStringField;
    qryPessoaRUA: TIBStringField;
    qryPessoaNUMERO: TIBStringField;
    qryPessoaBAIRRO: TIBStringField;
    qryPessoaCIDADE: TIBStringField;
    qryPessoaUF: TIBStringField;
    qryPessoaCOMPLEMENTO: TIBStringField;
    qryPessoaTIPO: TIBStringField;
    qryPessoaPORTE: TIBStringField;
    qryPessoaSITUACAO: TIBStringField;
    qryPessoaDATA_SITUACAO: TDateField;
    qryPessoaEMAIL: TIBStringField;
    qryPessoaDATA_ABERTURA: TDateField;
    qryPessoaCAPITAL_SOCIAL: TIBBCDField;
    qryPessoaNATUREZA_JURIDICA: TIBStringField;
    qryPessoaDATA_ULTIMA_ATUALIZACAO: TDateTimeField;
    qryPessoa_Sociedade: TIBQuery;
    qryPessoa_SociedadeCODIGO: TIntegerField;
    qryPessoa_SociedadeCODIGO_PESSOA: TIntegerField;
    qryPessoa_SociedadeTIPO: TIBStringField;
    qryPessoa_SociedadeNOME: TIBStringField;
    qryPessoa_SociedadeREP_LEGAL_TIPO: TIBStringField;
    qryPessoa_SociedadeREP_LEGAL_NOME: TIBStringField;
    qryPessoa_CNAE: TIBQuery;
    qryPessoa_CNAECODIGO: TIntegerField;
    qryPessoa_CNAECODIGO_PESSOA: TIntegerField;
    qryPessoa_CNAECNAE: TIBStringField;
    qryPessoa_CNAEDESCRICAO: TIBStringField;
    qryPessoa_CNAEPADRAO: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses
  Vcl.Dialogs,
  Vcl.Forms;

{TDM}

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  Conexao.DatabaseName := '.\Base\DB.FDB';
  try
    Conexao.Connected := True;
  except
    ShowMessage('Não foi possível conectar ao banco de dados!' + sLineBreak + sLineBreak +
                'Verifique se o Firebird está instalado e se a base dados (DB.FDB) encontra-se na pasta "Base" na mesma pasta do executável.');

    Application.Terminate;
  end;
end;

procedure TDM.DataModuleDestroy(Sender: TObject);
begin
  Conexao.Close;
end;

end.
