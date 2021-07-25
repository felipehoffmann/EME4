unit EME4.Forms.Pessoa.Previa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  EME4.WebServices.ReceitaWS.Models, Vcl.ComCtrls;

type
  TFrmPessoaPrevia = class(TForm)
    lbledCNPJ: TLabel;
    edCNPJ: TMaskEdit;
    edNome: TEdit;
    edFantasia: TEdit;
    edTelefone: TMaskEdit;
    edCEP: TMaskEdit;
    edRua: TEdit;
    edNumero: TEdit;
    edBairro: TEdit;
    edCidade: TEdit;
    edUF: TComboBox;
    edComplemento: TEdit;
    edTipo: TComboBox;
    edPorte: TComboBox;
    edSituacao: TComboBox;
    edData_Situacao: TMaskEdit;
    edEmail: TEdit;
    edNatureza_Juridica: TComboBox;
    edCapital_Social: TMaskEdit;
    edData_Abertura: TMaskEdit;
    edData_Ultima_Atualizacao: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    btnAplicar: TButton;
    btnCancelar: TButton;
    lvSociedade: TListView;
    Label20: TLabel;
    lvCNAEs: TListView;
    Label21: TLabel;
    procedure ComponenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  public
    function ChamarFormulario(APessoa: TPessoaModel): TModalResult;
  end;

var
  FrmPessoaPrevia: TFrmPessoaPrevia;

implementation

uses
  EME4.DB.ComboBox,
  EME4.Metodos;

{$R *.dfm}

{ TFrmPessoaPrevia }

function TFrmPessoaPrevia.ChamarFormulario(APessoa: TPessoaModel): TModalResult;
var
  i: Integer;
  vItem: TListItem;
begin
  edCNPJ.Text := APessoa.Cnpj;
  edNome.Text := APessoa.Nome;
  edFantasia.Text := APessoa.Fantasia;
  edTelefone.Text := APessoa.Telefone;
  edCEP.Text := APessoa.Cep;
  edRua.Text := APessoa.Logradouro;
  edNumero.Text := APessoa.Numero;
  edBairro.Text := APessoa.Bairro;
  edCidade.Text := APessoa.Municipio;
  edUF.Text := APessoa.Uf;
  edComplemento.Text := APessoa.Complemento;
  edTipo.Text := APessoa.Tipo;
  edPorte.Text := APessoa.Porte;
  edSituacao.Text := APessoa.Situacao;
  edData_Situacao.Text := APessoa.Data_situacao;
  edEmail.Text := APessoa.Email;
  edNatureza_Juridica.Text := APessoa.Natureza_juridica;
  edCapital_Social.Text := FormatFloat(',0.00', APessoa.Capital_social);
  edData_Abertura.Text := APessoa.Abertura;
  edData_Ultima_Atualizacao.Text := FormatDateTime('dd/mm/yyyy hh:nn', APessoa.Ultima_atualizacao);

  lvSociedade.Items.Clear;
  for i := Low(APessoa.QSA) to High(APessoa.QSA) do
  begin
    vItem := lvSociedade.Items.Add;
    vItem.Caption := APessoa.QSA[i].Qual;
    vItem.SubItems.Add(APessoa.QSA[i].Nome);
    vItem.SubItems.Add(APessoa.QSA[i].Qual_rep_legal);
    vItem.SubItems.Add(APessoa.QSA[i].Nome_rep_legal);
  end;

  lvCNAEs.Items.Clear;
  for i := Low(APessoa.Atividade_principal) to High(APessoa.Atividade_principal) do
  begin
    vItem := lvCNAEs.Items.Add;
    vItem.Caption := APessoa.Atividade_principal[i].Code;
    vItem.SubItems.Add(APessoa.Atividade_principal[i].Text);
    vItem.SubItems.Add('Sim');
  end;

  for i := Low(APessoa.Atividades_secundarias) to High(APessoa.Atividades_secundarias) do
  begin
    vItem := lvCNAEs.Items.Add;
    vItem.Caption := APessoa.Atividades_secundarias[i].Code;
    vItem.SubItems.Add(APessoa.Atividades_secundarias[i].Text);
    vItem.SubItems.Add('Não');
  end;

  Result := inherited ShowModal;

//  if Result = mrOk then
//  begin
//    APessoa.Cnpj := edCNPJ.Text;
//    APessoa.Nome := edNome.Text;
//    APessoa.Fantasia := edFantasia.Text;
//    APessoa.Telefone := edTelefone.Text;
//    APessoa.Cep := edCEP.Text;
//    APessoa.Logradouro := edRua.Text;
//    APessoa.Numero := edNumero.Text;
//    APessoa.Bairro := edBairro.Text;
//    APessoa.Municipio := edCidade.Text;
//    APessoa.Uf := edUF.Text;
//    APessoa.Complemento := edComplemento.Text;
//    APessoa.Tipo := edTipo.Text;
//    APessoa.Porte := edPorte.Text;
//    APessoa.Situacao := edSituacao.Text;
//    APessoa.Data_situacao := edData_Situacao.Text;
//    APessoa.Email := edEmail.Text;
//    APessoa.Natureza_juridica := edNatureza_Juridica.Text;
//    APessoa.Capital_social := StrToFloatDef(StringReplace(edCapital_Social.Text, '.', '', [rfReplaceAll]), 0);
//    APessoa.Abertura := edData_Abertura.Text;
//    APessoa.Ultima_atualizacao := StrToDateTimeDef(edData_Ultima_Atualizacao.Text, 0);
//  end;
end;

procedure TFrmPessoaPrevia.ComponenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  CampoKeyDown(Sender, Key);
end;

end.
