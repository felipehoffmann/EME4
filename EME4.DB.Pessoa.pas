unit EME4.DB.Pessoa;

interface

type
  TDBPessoa = class
  public
    class function Gravar(ACodigo: Integer; ACNPJ: String; ANome: String; AFantasia: String;
                          ATelefone: String; ACEP: String; ARua: String; ANumero: String;
                          ABairro: String; ACidade: String; AUF: String; AComplemento: String;
                          ATipo: String; APorte: String; ASituacao: String; AData_Situacao: TDate;
                          AEmail: String; ANatureza_Juridica: String; ACapital_Social: Extended;
                          AData_Abertura: TDate; AData_Ultima_Atualizacao: TDateTime;
                          APesquisarPeloCNPJ: Boolean = False): Integer;
    class procedure Apagar(ACodigo: Integer);

    class function ValidarDuplicidade(ACNPJ: string; ACodigo: Integer): Boolean;
  end;

  TDBSocio = class
  public
    class function Gravar(ACodigo: Integer; ACodigo_Pessoa: Integer; ATipo: string; ANome: string;
                          ARep_Legal_Tipo: string; ARep_Legal_Nome: String): Integer;
    class procedure Apagar(ACodigo: Integer);
    class procedure ApagarTodos(ACodigo_Pessoa: Integer);
  end;

  TDBCNAE = class
  public
    class function Gravar(ACodigo: Integer; ACodigo_Pessoa: Integer; ACNAE: string; ADescricao: string; APadrao: Boolean): Integer;
    class procedure Apagar(ACodigo: Integer);
    class procedure ApagarTodos(ACodigo_Pessoa: Integer);

    class function ValidarDuplicidade(ACNAE: string; ACodigo_Pessoa: Integer; ACodigo: Integer): Boolean;
  end;

implementation

uses
  IBX.IBQuery,
  System.StrUtils,
  EME4.DM,
  EME4.Metodos;

{ TDBPessoa }

class procedure TDBPessoa.Apagar(ACodigo: Integer);
const
  cSQL = ' DELETE FROM PESSOA WHERE CODIGO = :CODIGO ';
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  if vNovaTransacao then
    DM.Transacao.StartTransaction;
  try
    Q := CriarQuery;
    try
      Q.SQL.Text := cSQL;
      Q.ParamByName('CODIGO').AsInteger := ACodigo;
      Q.ExecSQL;
    finally
      Q.Free;
    end;

    if vNovaTransacao then
      DM.Transacao.Commit;
  finally
    if vNovaTransacao and DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

class function TDBPessoa.Gravar(ACodigo: Integer; ACNPJ, ANome, AFantasia,
  ATelefone, ACEP, ARua, ANumero, ABairro, ACidade, AUF, AComplemento, ATipo,
  APorte, ASituacao: String; AData_Situacao: TDate; AEmail,
  ANatureza_Juridica: String; ACapital_Social: Extended; AData_Abertura: TDate;
  AData_Ultima_Atualizacao: TDateTime;
  APesquisarPeloCNPJ: Boolean = False): Integer;
const
  cSQL =
    ' UPDATE OR INSERT INTO PESSOA(CODIGO, CNPJ, NOME, FANTASIA, TELEFONE, ' +
    '                              CEP, RUA, NUMERO, BAIRRO, CIDADE, UF, ' +
    '                              COMPLEMENTO, TIPO, PORTE, SITUACAO, DATA_SITUACAO, ' +
    '                              EMAIL, DATA_ABERTURA, CAPITAL_SOCIAL, NATUREZA_JURIDICA, ' +
    '                              DATA_ULTIMA_ATUALIZACAO) ' +
    '                       VALUES(:CODIGO, :CNPJ, :NOME, :FANTASIA, :TELEFONE, ' +
    '                              :CEP, :RUA, :NUMERO, :BAIRRO, :CIDADE, :UF, ' +
    '                              :COMPLEMENTO, :TIPO, :PORTE, :SITUACAO, :DATA_SITUACAO, ' +
    '                              :EMAIL, :DATA_ABERTURA, :CAPITAL_SOCIAL, :NATUREZA_JURIDICA, ' +
    '                              :DATA_ULTIMA_ATUALIZACAO) ' +
    '                      MATCHING(CODIGO) ';

  cSQLCodigoCNPJ = ' SELECT CODIGO FROM PESSOA WHERE CNPJ = :CNPJ ';
  cSQLGen = ' SELECT GEN_ID(GEN_PESSOA, 0) FROM RDB$DATABASE ';
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  if vNovaTransacao then
    DM.Transacao.StartTransaction;
  try
    Q := CriarQuery;
    try
      if APesquisarPeloCNPJ then
      begin
        Q.SQL.Text := cSQLCodigoCNPJ;
        Q.ParamByName('CNPJ').AsString := ACNPJ;
        Q.Open;
        ACodigo := Q.Fields[0].AsInteger;
        Q.Close;
      end;

      Q.SQL.Text := cSQL;
      Q.ParamByName('CODIGO').AsInteger := ACodigo;
      Q.ParamByName('CNPJ').AsString := ACNPJ;
      Q.ParamByName('NOME').AsString := ANome;
      Q.ParamByName('FANTASIA').AsString := AFantasia;
      Q.ParamByName('TELEFONE').AsString := ATelefone;
      Q.ParamByName('CEP').AsString := ACEP;
      Q.ParamByName('RUA').AsString := ARua;
      Q.ParamByName('NUMERO').AsString := ANumero;
      Q.ParamByName('BAIRRO').AsString := ABairro;
      Q.ParamByName('CIDADE').AsString := ACidade;
      Q.ParamByName('UF').AsString := AUF;
      Q.ParamByName('COMPLEMENTO').AsString := AComplemento;
      Q.ParamByName('TIPO').AsString := ATipo;
      Q.ParamByName('PORTE').AsString := APorte;
      Q.ParamByName('SITUACAO').AsString := ASituacao;
      Q.ParamByName('DATA_SITUACAO').AsDate := AData_Situacao;
      Q.ParamByName('EMAIL').AsString := AEmail;
      Q.ParamByName('DATA_ABERTURA').AsDate := AData_Abertura;
      Q.ParamByName('CAPITAL_SOCIAL').AsFloat := ACapital_Social;
      Q.ParamByName('NATUREZA_JURIDICA').AsString := ANatureza_Juridica;
      Q.ParamByName('DATA_ULTIMA_ATUALIZACAO').AsDateTime := AData_Ultima_Atualizacao;
      Q.ExecSQL;

      if ACodigo = 0 then
      begin
        Q.SQL.Text := cSQLGen;
        Q.Open;
        Result := Q.Fields[0].AsInteger;
      end
      else
        Result := ACodigo;
    finally
      Q.Free;
    end;

    if vNovaTransacao then
      DM.Transacao.Commit;
  finally
    if vNovaTransacao and DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

class function TDBPessoa.ValidarDuplicidade(ACNPJ: string;
  ACodigo: Integer): Boolean;
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  Q := CriarQuery;
  try
    if vNovaTransacao then
      DM.Transacao.StartTransaction;
    try
      Q.SQL.Text := ' SELECT CODIGO FROM PESSOA WHERE CNPJ = :CNPJ';
      Q.ParamByName('CNPJ').AsString := ACNPJ;
      Q.Open;
      Result := Q.FieldByName('CODIGO').AsInteger = ACodigo;
    finally
      if vNovaTransacao then
        DM.Transacao.Rollback;
    end;
  finally
    Q.Free;
  end;
end;

{ TDBSocio }

class procedure TDBSocio.Apagar(ACodigo: Integer);
const
  cSQL = ' DELETE FROM PESSOA_SOCIEDADE WHERE CODIGO = :CODIGO ';
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  if vNovaTransacao then
    DM.Transacao.StartTransaction;
  try
    Q := CriarQuery;
    try
      Q.SQL.Text := cSQL;
      Q.ParamByName('CODIGO').AsInteger := ACodigo;
      Q.ExecSQL;
    finally
      Q.Free;
    end;

    if vNovaTransacao then
      DM.Transacao.Commit;
  finally
    if vNovaTransacao and DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

class procedure TDBSocio.ApagarTodos(ACodigo_Pessoa: Integer);
const
  cSQL = ' DELETE FROM PESSOA_SOCIEDADE WHERE CODIGO_PESSOA = :CODIGO_PESSOA ';
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  if vNovaTransacao then
    DM.Transacao.StartTransaction;
  try
    Q := CriarQuery;
    try
      Q.SQL.Text := cSQL;
      Q.ParamByName('CODIGO_PESSOA').AsInteger := ACodigo_Pessoa;
      Q.ExecSQL;
    finally
      Q.Free;
    end;

    if vNovaTransacao then
      DM.Transacao.Commit;
  finally
    if vNovaTransacao and DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

class function TDBSocio.Gravar(ACodigo, ACodigo_Pessoa: Integer; ATipo, ANome,
  ARep_Legal_Tipo, ARep_Legal_Nome: String): Integer;
const
  cSQL =
    ' UPDATE OR INSERT INTO PESSOA_SOCIEDADE(CODIGO, CODIGO_PESSOA, TIPO, NOME, REP_LEGAL_TIPO, REP_LEGAL_NOME) ' +
    '                                 VALUES(:CODIGO, :CODIGO_PESSOA, :TIPO, :NOME, :REP_LEGAL_TIPO, :REP_LEGAL_NOME) ' +
    '                               MATCHING(CODIGO) ';

  cSQLGen = ' SELECT GEN_ID(GEN_PESSOA_SOCIEDADE, 0) FROM RDB$DATABASE ';
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  if vNovaTransacao then
    DM.Transacao.StartTransaction;
  try
    Q := CriarQuery;
    try
      Q.SQL.Text := cSQL;
      Q.ParamByName('CODIGO').AsInteger := ACodigo;
      Q.ParamByName('CODIGO_PESSOA').AsInteger := ACodigo_Pessoa;
      Q.ParamByName('TIPO').AsString := ATipo;
      Q.ParamByName('NOME').AsString := ANome;
      Q.ParamByName('REP_LEGAL_TIPO').AsString := ARep_Legal_Tipo;
      Q.ParamByName('REP_LEGAL_NOME').AsString := ARep_Legal_Nome;
      Q.ExecSQL;

      if ACodigo = 0 then
      begin
        Q.SQL.Text := cSQLGen;
        Q.Open;
        Result := Q.Fields[0].AsInteger;
      end
      else
        Result := ACodigo;
    finally
      Q.Free;
    end;

    if vNovaTransacao then
      DM.Transacao.Commit;
  finally
    if vNovaTransacao and DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

{ TDBCNAE }

class procedure TDBCNAE.Apagar(ACodigo: Integer);
const
  cSQL = ' DELETE FROM PESSOA_CNAE WHERE CODIGO = :CODIGO ';
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  if vNovaTransacao then
    DM.Transacao.StartTransaction;
  try
    Q := CriarQuery;
    try
      Q.SQL.Text := cSQL;
      Q.ParamByName('CODIGO').AsInteger := ACodigo;
      Q.ExecSQL;
    finally
      Q.Free;
    end;

    if vNovaTransacao then
      DM.Transacao.Commit;
  finally
    if vNovaTransacao and DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

class procedure TDBCNAE.ApagarTodos(ACodigo_Pessoa: Integer);
const
  cSQL = ' DELETE FROM PESSOA_CNAE WHERE CODIGO_PESSOA = :CODIGO_PESSOA ';
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  if vNovaTransacao then
    DM.Transacao.StartTransaction;
  try
    Q := CriarQuery;
    try
      Q.SQL.Text := cSQL;
      Q.ParamByName('CODIGO_PESSOA').AsInteger := ACodigo_Pessoa;
      Q.ExecSQL;
    finally
      Q.Free;
    end;

    if vNovaTransacao then
      DM.Transacao.Commit;
  finally
    if vNovaTransacao and DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

class function TDBCNAE.Gravar(ACodigo, ACodigo_Pessoa: Integer; ACNAE,
  ADescricao: string; APadrao: Boolean): Integer;
const
  cSQL =
    ' UPDATE OR INSERT INTO PESSOA_CNAE(CODIGO, CODIGO_PESSOA, CNAE, DESCRICAO, PADRAO) ' +
    '                                 VALUES(:CODIGO, :CODIGO_PESSOA, :CNAE, :DESCRICAO, :PADRAO) ' +
    '                               MATCHING(CODIGO) ';

  cSQLGen = ' SELECT GEN_ID(GEN_PESSOA_CNAE, 0) FROM RDB$DATABASE ';
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  if vNovaTransacao then
    DM.Transacao.StartTransaction;
  try
    Q := CriarQuery;
    try
      Q.SQL.Text := cSQL;
      Q.ParamByName('CODIGO').AsInteger := ACodigo;
      Q.ParamByName('CODIGO_PESSOA').AsInteger := ACodigo_Pessoa;
      Q.ParamByName('CNAE').AsString := FormatarCNAE(ACNAE);
      Q.ParamByName('DESCRICAO').AsString := ADescricao;
      Q.ParamByName('PADRAO').AsString := IfThen(APadrao, 'S', 'N');
      Q.ExecSQL;

      if ACodigo = 0 then
      begin
        Q.SQL.Text := cSQLGen;
        Q.Open;
        Result := Q.Fields[0].AsInteger;
      end
      else
        Result := ACodigo;
    finally
      Q.Free;
    end;

    if vNovaTransacao then
      DM.Transacao.Commit;
  finally
    if vNovaTransacao and DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

class function TDBCNAE.ValidarDuplicidade(ACNAE: string;
  ACodigo_Pessoa: Integer; ACodigo: Integer): Boolean;
var
  Q: TIBQuery;
  vNovaTransacao: Boolean;
begin
  vNovaTransacao := not DM.Transacao.Active;

  Q := CriarQuery;
  try
    if vNovaTransacao then
      DM.Transacao.StartTransaction;
    try
      Q.SQL.Text := ' SELECT CODIGO FROM PESSOA_CNAE WHERE CNAE = :CNAE AND CODIGO_PESSOA = :CODIGO_PESSOA ';
      Q.ParamByName('CNAE').AsString := ACNAE;
      Q.ParamByName('CODIGO_PESSOA').AsInteger := ACodigo_Pessoa;
      Q.Open;
      Result := Q.FieldByName('CODIGO').AsInteger = ACodigo;
    finally
      if vNovaTransacao then
        DM.Transacao.Rollback;
    end;
  finally
    Q.Free;
  end;
end;

end.
