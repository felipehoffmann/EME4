unit EME4.WebServices.ReceitaWS.Models;

interface

Type
  TStatusModel = class
  private
    FCnpj: string;
    FStatus: string;
  public
    FMessage: string;

    property CNPJ: string read FCnpj write FCnpj;
    property Status: string read FStatus write FStatus;
  end;

  TQSAModel = Class
  private
    FQual: string;
    FPais_origem: string;
    FNome_rep_legal: string;
    FQual_rep_legal: string;
    FNome: string;
  public
    property Qual: string           read FQual            write FQual;
    property Nome: string           read FNome            write FNome;
    property Qual_rep_legal: string read FQual_rep_legal  write FQual_rep_legal;
    property Nome_rep_legal: string read FNome_rep_legal  write FNome_rep_legal;
    property Pais_origem: string    read FPais_origem     write FPais_origem;
  end;

  TCNAEModel = Class
  private
    FText: string;
    FCode: string;
  public
    property Text: string read FText write FText;
    property Code: string read FCode write FCode;
  end;

  TQSAModelArray = Array of TQSAModel;
  TCNAEModelArray = Array of TCNAEModel;

  TPessoaModel = Class
  private
    FLogradouro: string;
    FData_situacao_especial: String;
    FCapital_social: Extended;
    FFantasia: string;
    FCnpj: string;
    FBairro: string;
    FEmail: string;
    FData_situacao: String;
    FCode: Integer;
    FMessage: string;
    FUf: string;
    FUltima_atualizacao: TDateTime;
    FSituacao_especial: string;
    FCep: string;
    FEfr: string;
    FNumero: string;
    FMotivo_situacao: string;
    FNatureza_juridica: string;
    FAbertura: String;
    FMunicipio: string;
    FStatus: string;
    FSituacao: string;
    FComplemento: string;
    FNome: string;
    FTipo: string;
    FExtra: string;
    FTelefone: string;
    FPorte: string;
    FQSA: TQSAModelArray;
    FAtividade_principal: TCNAEModelArray;
    FAtividades_secundarias: TCNAEModelArray;
    FJson_consulta: string;

  public
    property Code: Integer read FCode write FCode;
    property Status: string read FStatus write FStatus;
    property Message: string read FMessage write FMessage;
    property Data_situacao: String read FData_situacao write FData_situacao;
    property Complemento: string read FComplemento write FComplemento;
    property Nome: string read FNome write FNome;
    property Uf: string read FUf write FUf;
    property Telefone: string read FTelefone write FTelefone;
    property Email: string read FEmail write FEmail;
    property Situacao: string read FSituacao write FSituacao;
    property Bairro: string read FBairro write FBairro;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Numero: string read FNumero write FNumero;
    property Cep: string read FCep write FCep;
    property Municipio: string read FMunicipio write FMunicipio;
    property Abertura: String read FAbertura write FAbertura;
    property Natureza_juridica: string read FNatureza_juridica write FNatureza_juridica;
    property Cnpj: string read FCnpj write FCnpj;
    property Ultima_atualizacao: TDateTime read FUltima_atualizacao write FUltima_atualizacao;
    property Tipo: string read FTipo write FTipo;
    property Fantasia: string read FFantasia write FFantasia;
    property Efr: string read FEfr write FEfr;
    property Motivo_situacao: string read FMotivo_situacao write FMotivo_situacao;
    property Situacao_especial: string read FSituacao_especial write FSituacao_especial;
    property Data_situacao_especial: String read FData_situacao_especial write FData_situacao_especial;
    property Capital_social: Extended read FCapital_social write FCapital_social;
    property Porte: string read FPorte write FPorte;
    property Json_consulta: string read FJson_consulta write FJson_consulta;
    property Extra: string read FExtra write FExtra;
    property QSA: TQSAModelArray read FQSA write FQSA;
    property Atividade_principal: TCNAEModelArray read FAtividade_principal write FAtividade_principal;
    property Atividades_secundarias: TCNAEModelArray read FAtividades_secundarias write FAtividades_secundarias;
  end;

implementation

end.
