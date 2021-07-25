unit EME4.WebServices.ReceitaWS;

interface

uses
  System.JSON,
  EME4.WebServices.ReceitaWS.Models;

type

  TWebServiceReceitaWS = class
  private
    FPessoa: TPessoaModel;

    function ConsultarWebService(ACNPJ: String; AHTTPS: Boolean = True): TJSONObject;
  public
    property Pessoa: TPessoaModel read FPessoa;

    function Consultar(ACNPJ: String): Boolean;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TWebServiceReceitaWS }

uses
  IdHTTP,
  REST.Json,
  System.Classes,
  System.SysUtils,
  EME4.Metodos;

function TWebServiceReceitaWS.Consultar(ACNPJ: String): Boolean;
var
  vJson: TJSONObject;
  vStatus: TStatusModel;
begin
  try
    vJson := ConsultarWebService(ACNPJ);

    vStatus := TJson.JsonToObject<TStatusModel>(vJson);
    try
      if UpperCase(vStatus.Status) = 'ERROR' then
      begin
        Result := False;
        raise Exception.Create(vStatus.FMessage);
      end;

      FPessoa := TJson.JsonToObject<TPessoaModel>(vJson);
      FPessoa.Json_consulta := vJson.ToString;
      FPessoa.Telefone      := FormatarTelefone(FPessoa.Telefone);
      FPessoa.Cep           := FormatarCEP(FPessoa.Cep);

      Result := FPessoa.Code = 0;

      if not Result then
        raise Exception.Create(IntToStr(FPessoa.Code) + ' - ' + FPessoa.Status);
    finally
      vStatus.Free;
    end;
  except
    On E:Exception do
      raise Exception.Create('O CNPJ não pôde ser consultado na receita!' + sLineBreak + sLineBreak + 'Motivo: ' + E.Message);
  end;
end;

destructor TWebServiceReceitaWS.Destroy;
begin
  if Assigned(FPessoa) then
    FPessoa.Free;

  inherited;
end;

function TWebServiceReceitaWS.ConsultarWebService(ACNPJ: String; AHTTPS: Boolean = True): TJSONObject;
var
  vURL: string;
  vHTTP: TIdHTTP;
  vJSONStream : TStringStream;
begin
  try
    vHTTP := TIdHTTP.Create;
    try
      vJSONStream := TStringStream.Create('', TEncoding.UTF8);
      try
        vURL := 'https://www.receitaws.com.br/v1/cnpj/' + RetornarNumeros(ACNPJ);
        if not AHTTPS then
          vURL := StringReplace(vURL, 'https://', 'http://', [rfReplaceAll, rfIgnoreCase]);

        vHTTP.Get(vURL, vJSONStream);

        Result := TJSONObject.ParseJSONValue(vJSONStream.DataString) as TJSONObject;
      finally
        vJSONStream.Free;
      end;
    finally
      vHTTP.Free;
    end;
  except
    if AHTTPS then
      Result := ConsultarWebService(ACNPJ, False)
    else
      raise ;
  end;
end;

constructor TWebServiceReceitaWS.Create;
begin
  FPessoa := nil;
end;

end.
