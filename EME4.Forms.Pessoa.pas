unit EME4.Forms.Pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Datasnap.Provider, Data.DB, Datasnap.DBClient,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls, EME4.WebServices.ReceitaWS.Models;

type
  TFrmPessoa = class(TForm)
    dsPessoa: TDataSource;
    cdsPessoa: TClientDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaCNPJ: TWideStringField;
    cdsPessoaNOME: TWideStringField;
    cdsPessoaFANTASIA: TWideStringField;
    cdsPessoaTELEFONE: TWideStringField;
    cdsPessoaCEP: TWideStringField;
    cdsPessoaRUA: TWideStringField;
    cdsPessoaNUMERO: TWideStringField;
    cdsPessoaBAIRRO: TWideStringField;
    cdsPessoaCIDADE: TWideStringField;
    cdsPessoaUF: TWideStringField;
    cdsPessoaCOMPLEMENTO: TWideStringField;
    cdsPessoaTIPO: TWideStringField;
    cdsPessoaPORTE: TWideStringField;
    cdsPessoaSITUACAO: TWideStringField;
    cdsPessoaDATA_SITUACAO: TDateField;
    cdsPessoaEMAIL: TWideStringField;
    cdsPessoaDATA_ABERTURA: TDateField;
    cdsPessoaCAPITAL_SOCIAL: TBCDField;
    cdsPessoaNATUREZA_JURIDICA: TWideStringField;
    cdsPessoaDATA_ULTIMA_ATUALIZACAO: TDateTimeField;
    DBGrid1: TDBGrid;
    PageControl: TPageControl;
    tsPrincipal: TTabSheet;
    tsQuadroSocietario: TTabSheet;
    tsCNAE: TTabSheet;
    lbledCNPJ: TLabel;
    Pri_CNPJ: TMaskEdit;
    btnConsultar: TButton;
    Pri_Nome: TEdit;
    Pri_Fantasia: TEdit;
    Pri_Telefone: TMaskEdit;
    Pri_CEP: TMaskEdit;
    Pri_Rua: TEdit;
    Pri_Numero: TEdit;
    Pri_Bairro: TEdit;
    Pri_Cidade: TEdit;
    Pri_UF: TComboBox;
    Pri_Complemento: TEdit;
    Pri_Tipo: TComboBox;
    Pri_Porte: TComboBox;
    Pri_Situacao: TComboBox;
    Pri_Data_Situacao: TMaskEdit;
    Pri_Email: TEdit;
    Pri_Natureza_Juridica: TComboBox;
    Pri_Capital_Social: TMaskEdit;
    Pri_Data_Abertura: TMaskEdit;
    Pri_Data_Ultima_Atualizacao: TMaskEdit;
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
    Pri_Codigo: TEdit;
    Label20: TLabel;
    cdsSociedade: TClientDataSet;
    dspSociedade: TDataSetProvider;
    dsSociedade: TDataSource;
    cdsSociedadeCODIGO: TIntegerField;
    cdsSociedadeCODIGO_PESSOA: TIntegerField;
    cdsSociedadeTIPO: TWideStringField;
    cdsSociedadeNOME: TWideStringField;
    cdsSociedadeREP_LEGAL_TIPO: TWideStringField;
    cdsSociedadeREP_LEGAL_NOME: TWideStringField;
    DBGrid2: TDBGrid;
    Label21: TLabel;
    Soc_Nome: TEdit;
    Label22: TLabel;
    Soc_Tipo: TComboBox;
    Label23: TLabel;
    Soc_Rep_Legal_Tipo: TComboBox;
    Label24: TLabel;
    Soc_Rep_Legal_Nome: TEdit;
    pnBotoes: TPanel;
    btnNovo: TButton;
    btnApagar: TButton;
    btnGravar: TButton;
    btnCancelar: TButton;
    cdsCNAE: TClientDataSet;
    dspCNAE: TDataSetProvider;
    dsCNAE: TDataSource;
    cdsCNAECODIGO: TIntegerField;
    cdsCNAECODIGO_PESSOA: TIntegerField;
    cdsCNAECNAE: TWideStringField;
    cdsCNAEDESCRICAO: TWideStringField;
    cdsCNAEPADRAO: TWideStringField;
    Soc_Codigo: TEdit;
    DBGrid3: TDBGrid;
    Label25: TLabel;
    CNA_CNAE: TMaskEdit;
    Label26: TLabel;
    Cna_Descricao: TEdit;
    Cna_Padrao: TCheckBox;
    Cna_Codigo: TEdit;
    procedure btnConsultarClick(Sender: TObject);
    procedure ComponenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsPessoaDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure dsSociedadeDataChange(Sender: TObject; Field: TField);
    procedure dsCNAEDataChange(Sender: TObject; Field: TField);
  private
    procedure CdsPrincipalToTela;
    procedure CdsSociedadeToTela;
    procedure cdsCNAEToTela;
    
    procedure LimparTela;
    procedure CarregarComboBox(Sender: TComboBox = nil);
    procedure CarregarCdsFilhos;

    procedure Novo;

    function ValidarInformacoes: Boolean;
    function ValidarDuplicidade: Boolean;

    procedure GravarDadosConsulta(APessoa: TPessoaModel);

    function GravarPrincipal: Boolean;
    function GravarSocio: Boolean;
    function GravarCNAE: Boolean;

    procedure ApagarPessoa;
    procedure ApagarSocio;
    procedure ApagarCNAE;
  public
    { Public declarations }
  end;

var
  FrmPessoa: TFrmPessoa;

implementation

uses
  IBX.IBQuery,
  System.UITypes,
  EME4.DB.ComboBox,
  EME4.DB.Pessoa,
  EME4.DM,
  EME4.Forms.Pessoa.Previa,
  EME4.Metodos,
  EME4.WebServices.ReceitaWS;

{$R *.dfm}

procedure TFrmPessoa.ApagarCNAE;
begin
  if StrToIntDef(Cna_Codigo.Text, 0) = 0 then
  begin
    ShowMessage('É necessário selecionar um CNAE para ser apagado!');
    Exit;
  end;

  if MessageDlg('Deseja apagar o CNAE selecionado?', mtConfirmation, mbYesNo, 0, mbNo) <> mrYes then
    Exit;

  TDBCNAE.Apagar(StrToIntDef(Cna_Codigo.Text, 0));
  cdsCNAE.Refresh;

  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

procedure TFrmPessoa.ApagarPessoa;
begin
  if StrToIntDef(Pri_Codigo.Text, 0) = 0 then
  begin
    ShowMessage('É necessário selecionar uma pessoa para ser apagada!');
    Exit;
  end;

  if MessageDlg('Deseja apagar a pessoa selecionada?', mtConfirmation, mbYesNo, 0, mbNo) <> mrYes then
    Exit;

  TDBPessoa.Apagar(StrToIntDef(Pri_Codigo.Text, 0));
  cdsPessoa.Refresh;

  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

procedure TFrmPessoa.ApagarSocio;
begin
  if StrToIntDef(Soc_Codigo.Text, 0) = 0 then
  begin
    ShowMessage('É necessário selecionar um sócio para ser apagado!');
    Exit;
  end;

  if MessageDlg('Deseja apagar o sócio selecionado?', mtConfirmation, mbYesNo, 0, mbNo) <> mrYes then
    Exit;

  TDBSocio.Apagar(StrToIntDef(Soc_Codigo.Text, 0));
  cdsSociedade.Refresh;

  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

procedure TFrmPessoa.btnApagarClick(Sender: TObject);
begin
  if PageControl.ActivePage = tsPrincipal then
    ApagarPessoa
  else if PageControl.ActivePage = tsQuadroSocietario then
    ApagarSocio
  else if PageControl.ActivePage = tsCNAE then
    ApagarCNAE;
    
  Novo;
end;

procedure TFrmPessoa.btnCancelarClick(Sender: TObject);
begin
  if (PageControl.ActivePage = tsPrincipal) and (StrToIntDef(Pri_Codigo.Text, 0) > 0) then
    CdsPrincipalToTela
  else if (PageControl.ActivePage = tsQuadroSocietario) and (StrToIntDef(Soc_Codigo.Text, 0) > 0) then
    CdsSociedadeToTela
  else if (PageControl.ActivePage = tsCNAE) and (StrToIntDef(Cna_Codigo.Text, 0) > 0) then
    cdsCNAEToTela
  else
    Novo;
end;

procedure TFrmPessoa.btnConsultarClick(Sender: TObject);
var
  vWSReceita: TWebServiceReceitaWS;
  vFormPrevia: TFrmPessoaPrevia;
begin
  if not ValidarCNPJ(Pri_CNPJ.Text) then
  begin
    ShowMessage('CNPJ inválido!');
    Pri_CNPJ.SetFocus;
    Pri_CNPJ.SelectAll;
    Exit;
  end;

  vWSReceita := TWebServiceReceitaWS.Create;
  try
    try
      if vWSReceita.Consultar(Pri_CNPJ.Text) then
      begin
        vFormPrevia := TFrmPessoaPrevia.Create(Self);
        try
          if vFormPrevia.ChamarFormulario(vWSReceita.Pessoa) = mrOk then
          begin
            GravarDadosConsulta(vWSReceita.Pessoa);
            ShowMessage('Dados atualizados com sucesso!');
          end;
        finally
          vFormPrevia.Free;
        end;
      end;
    except
      on E:Exception do
        ShowMessage(E.Message);
    end;
  finally
    vWSReceita.Free;
  end;
end;

procedure TFrmPessoa.btnGravarClick(Sender: TObject);
var
  vGravou: Boolean;
begin
  vGravou := False;
  if PageControl.ActivePage = tsPrincipal then
    vGravou := GravarPrincipal
  else if PageControl.ActivePage = tsQuadroSocietario then
    vGravou := GravarSocio
  else if PageControl.ActivePage = tsCNAE then
    vGravou := GravarCNAE;

  if vGravou then
  begin
    ShowMessage('Gravação efetuada com sucesso!');
    CarregarComboBox;
  end;
end;

procedure TFrmPessoa.btnNovoClick(Sender: TObject);
begin
  Novo;
end;

procedure TFrmPessoa.CarregarCdsFilhos;
begin
  if cdsSociedade.Active then
    cdsSociedade.Close;
    
  DM.qryPessoa_Sociedade.ParamByName('CODIGO_PESSOA').AsInteger := StrToIntDef(Pri_Codigo.Text, 0);
  cdsSociedade.Open;

  if cdsCNAE.Active then
    cdsCNAE.Close;
    
  DM.qryPessoa_CNAE.ParamByName('CODIGO_PESSOA').AsInteger := StrToIntDef(Pri_Codigo.Text, 0);
  cdsCNAE.Open;

  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

procedure TFrmPessoa.CarregarComboBox(Sender: TComboBox);
var
  vCarregaCombo: TCarregarComboBox;
begin
  vCarregaCombo := TCarregarComboBox.Create;
  try
    if PageControl.ActivePage = tsPrincipal then
    begin
      if (Sender = Pri_Tipo) or not Assigned(Sender) then
        vCarregaCombo.Carregar(Pri_Tipo, 'TIPO', 'PESSOA');

      if (Sender = Pri_Porte) or not Assigned(Sender) then
        vCarregaCombo.Carregar(Pri_Porte, 'PORTE', 'PESSOA');

      if (Sender = Pri_Situacao) or not Assigned(Sender) then
        vCarregaCombo.Carregar(Pri_Situacao, 'SITUACAO', 'PESSOA');

      if (Sender = Pri_Natureza_Juridica) or not Assigned(Sender) then
        vCarregaCombo.Carregar(Pri_Natureza_Juridica, 'NATUREZA_JURIDICA', 'PESSOA');
    end
    else if PageControl.ActivePage = tsQuadroSocietario then
    begin
      if (Sender = Soc_Tipo) or not Assigned(Sender) then
        vCarregaCombo.Carregar(Soc_Tipo, 'TIPO', 'PESSOA_SOCIEDADE');

      if (Sender = Soc_Rep_Legal_Tipo) or not Assigned(Sender) then
        vCarregaCombo.Carregar(Soc_Rep_Legal_Tipo, 'REP_LEGAL_TIPO', 'PESSOA_SOCIEDADE');
    end;
  finally
    vCarregaCombo.Free;
  end;
end;

procedure TFrmPessoa.cdsCNAEToTela;
begin
  Cna_Codigo.Text := cdsCNAECODIGO.AsString;
  CNA_CNAE.Text := cdsCNAECNAE.AsString;
  Cna_Descricao.Text := cdsCNAEDESCRICAO.AsString;
  Cna_Padrao.Checked := cdsCNAEPADRAO.AsString = 'S';
end;

procedure TFrmPessoa.CdsPrincipalToTela;
begin
  Pri_Codigo.Text := cdsPessoaCODIGO.AsString;
  Pri_CNPJ.Text := cdsPessoaCNPJ.AsString;
  Pri_Nome.Text := cdsPessoaNOME.AsString;
  Pri_Fantasia.Text := cdsPessoaFANTASIA.AsString;
  Pri_Telefone.Text := cdsPessoaTELEFONE.AsString;
  Pri_CEP.Text := cdsPessoaCEP.AsString;
  Pri_Rua.Text := cdsPessoaRUA.AsString;
  Pri_Numero.Text := cdsPessoaNUMERO.AsString;
  Pri_Bairro.Text := cdsPessoaBAIRRO.AsString;
  Pri_Cidade.Text := cdsPessoaCIDADE.AsString;
  Pri_UF.Text := cdsPessoaUF.AsString;
  Pri_Complemento.Text := cdsPessoaCOMPLEMENTO.AsString;
  Pri_Tipo.Text := cdsPessoaTIPO.AsString;
  Pri_Porte.Text := cdsPessoaPORTE.AsString;
  Pri_Situacao.Text := cdsPessoaSITUACAO.AsString;
  Pri_Data_Situacao.Text := FormatDateTime('dd/mm/yyyy', cdsPessoaDATA_SITUACAO.AsDateTime);
  Pri_Email.Text := cdsPessoaEMAIL.AsString;
  Pri_Natureza_Juridica.Text := cdsPessoaNATUREZA_JURIDICA.AsString;
  Pri_Capital_Social.Text := FormatFloat(',0.00', cdsPessoaCAPITAL_SOCIAL.AsExtended);
  Pri_Data_Abertura.Text := FormatDateTime('dd/mm/yyyy', cdsPessoaDATA_ABERTURA.AsDateTime);
  Pri_Data_Ultima_Atualizacao.Text := FormatDateTime('dd/mm/yyyy hh:nn', cdsPessoaDATA_ULTIMA_ATUALIZACAO.AsDateTime);

  CarregarCdsFilhos;
end;

procedure TFrmPessoa.CdsSociedadeToTela;
begin
  Soc_Codigo.Text := cdsSociedadeCODIGO.AsString;
  Soc_Tipo.Text := cdsSociedadeTIPO.AsString;
  Soc_Nome.Text := cdsSociedadeNOME.AsString;
  Soc_Rep_Legal_Tipo.Text := cdsSociedadeREP_LEGAL_TIPO.AsString;
  Soc_Rep_Legal_Nome.Text := cdsSociedadeREP_LEGAL_NOME.AsString;
end;

procedure TFrmPessoa.ComponenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  CampoKeyDown(Sender, Key);
end;

procedure TFrmPessoa.dsCNAEDataChange(Sender: TObject; Field: TField);
begin
  cdsCNAEToTela;
end;

procedure TFrmPessoa.dsPessoaDataChange(Sender: TObject; Field: TField);
begin
  CdsPrincipalToTela;
end;

procedure TFrmPessoa.dsSociedadeDataChange(Sender: TObject; Field: TField);
begin
  CdsSociedadeToTela;
end;

procedure TFrmPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

procedure TFrmPessoa.FormCreate(Sender: TObject);
begin
  cdsPessoa.Open;

  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

procedure TFrmPessoa.FormShow(Sender: TObject);
begin
  if cdsPessoa.IsEmpty then
    Novo
  else
  begin
    CarregarComboBox;
    CdsPrincipalToTela;
  end;
end;

function TFrmPessoa.GravarCNAE: Boolean;
var
  vCodigo: Integer;
begin
  if StrToIntDef(Pri_Codigo.Text, 0) = 0 then
  begin
    ShowMessage('É necessário selecionar uma pessoa para pode gravar seu CNAE!');
    Exit(False);
  end;

  Result := ValidarInformacoes and ValidarDuplicidade;
  if not Result then
    Exit;

  vCodigo := TDBCNAE.Gravar(StrToIntDef(Cna_Codigo.Text, 0), StrToIntDef(Pri_Codigo.Text, 0),
                            CNA_CNAE.Text, Cna_Descricao.Text, Cna_Padrao.Checked);

  cdsCNAE.Refresh;
  cdsCNAE.Locate('CODIGO', vCodigo, []);

  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

procedure TFrmPessoa.GravarDadosConsulta(APessoa: TPessoaModel);
var
  vCodigo: Integer;
  i: Integer;
begin
  DM.Transacao.StartTransaction;
  try
    vCodigo := TDBPessoa.Gravar(0, APessoa.Cnpj, APessoa.Nome, APessoa.Fantasia, APessoa.Telefone, APessoa.Cep,
                                APessoa.Logradouro, APessoa.Numero, APessoa.Bairro, APessoa.Municipio, Uppercase(APessoa.UF),
                                APessoa.Complemento, APessoa.Tipo, APessoa.Porte, APessoa.Situacao,
                                StrToDateDef(APessoa.Data_Situacao, MinDateTime), APessoa.Email, APessoa.Natureza_Juridica,
                                APessoa.Capital_Social, StrToDateDef(APessoa.Abertura, MinDateTime), APessoa.Ultima_atualizacao,
                                True);

    if vCodigo > 0 then
    begin
      TDBSocio.ApagarTodos(vCodigo);
      for i := Low(APessoa.QSA) to High(APessoa.QSA) do
        TDBSocio.Gravar(0, vCodigo, APessoa.QSA[i].Qual, APessoa.QSA[i].Nome, APessoa.QSA[i].Qual_rep_legal, APessoa.QSA[i].Nome_rep_legal);

      TDBCNAE.ApagarTodos(vCodigo);
      for i := Low(APessoa.Atividade_principal) to High(APessoa.Atividade_principal) do
        TDBCNAE.Gravar(0, vCodigo, APessoa.Atividade_principal[i].Code, APessoa.Atividade_principal[i].Text, True);

      for i := Low(APessoa.Atividades_secundarias) to High(APessoa.Atividades_secundarias) do
        TDBCNAE.Gravar(0, vCodigo, APessoa.Atividades_secundarias[i].Code, APessoa.Atividades_secundarias[i].Text, False);
    end;

    DM.Transacao.Commit;

    cdsPessoa.Refresh;
    cdsPessoa.Locate('CODIGO', vCodigo, []);
  finally
    if DM.Transacao.Active then
      DM.Transacao.Rollback;
  end;
end;

function TFrmPessoa.GravarPrincipal: Boolean;
var
  vCodigo: Integer;
begin
  Result := ValidarInformacoes and ValidarDuplicidade;
  if not Result then
    Exit;

  vCodigo := TDBPessoa.Gravar(StrToIntDef(Pri_Codigo.Text, 0), Pri_CNPJ.Text, Pri_Nome.Text, Pri_Fantasia.Text,
                              Pri_Telefone.Text, Pri_CEP.Text, Pri_Rua.Text, Pri_Numero.Text, Pri_Bairro.Text,
                              Pri_Cidade.Text, Uppercase(Pri_UF.Text), Pri_Complemento.Text, Pri_Tipo.Text, Pri_Porte.Text,
                              Pri_Situacao.Text, StrToDateDef(Pri_Data_Situacao.Text, MinDateTime),
                              Pri_Email.Text, Pri_Natureza_Juridica.Text,
                              StrToFloatDef(StringReplace(Pri_Capital_Social.Text, '.', '', [rfReplaceAll]), 0),
                              StrToDateDef(Pri_Data_Abertura.Text, MinDateTime),
                              StrToDateTimeDef(Pri_Data_Ultima_Atualizacao.Text, MinDateTime));

  cdsPessoa.Refresh;
  cdsPessoa.Locate('CODIGO', vCodigo, []);    

  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

function TFrmPessoa.GravarSocio: Boolean;
var
  vCodigo: Integer;
begin
  if StrToIntDef(Pri_Codigo.Text, 0) = 0 then
  begin
    ShowMessage('É necessário selecionar uma pessoa para pode gravar seu sócio!');
    Exit(False);
  end;

  Result := ValidarInformacoes;
  if not Result then
    Exit;

  vCodigo := TDBSocio.Gravar(StrToIntDef(Soc_Codigo.Text, 0), StrToIntDef(Pri_Codigo.Text, 0),
                             Soc_Tipo.Text, Soc_Nome.Text, Soc_Rep_Legal_Tipo.Text, Soc_Rep_Legal_Nome.Text);

  cdsSociedade.Refresh;
  cdsSociedade.Locate('CODIGO', vCodigo, []);

  if DM.Transacao.Active then
    DM.Transacao.Rollback;
end;

procedure TFrmPessoa.LimparTela;
begin
  if PageControl.ActivePage = tsPrincipal then
  begin
    Pri_Codigo.Clear;
    Pri_CNPJ.Clear;
    Pri_Nome.Clear;
    Pri_Fantasia.Clear;
    Pri_Telefone.Clear;
    Pri_CEP.Clear;
    Pri_Rua.Clear;
    Pri_Numero.Clear;
    Pri_Bairro.Clear;
    Pri_Cidade.Clear;
    Pri_UF.Text := '';
    Pri_Complemento.Clear;
    Pri_Tipo.Clear;
    Pri_Porte.Clear;
    Pri_Situacao.Clear;
    Pri_Data_Situacao.Clear;
    Pri_Email.Clear;
    Pri_Natureza_Juridica.Clear;
    Pri_Capital_Social.Clear;
    Pri_Data_Abertura.Clear;
    Pri_Data_Ultima_Atualizacao.Clear;
  end;

  if (PageControl.ActivePage = tsPrincipal) or (PageControl.ActivePage = tsQuadroSocietario) then
  begin
    Soc_Codigo.Clear;
    Soc_Tipo.Clear;
    Soc_Nome.Clear;
    Soc_Rep_Legal_Tipo.Clear;
    Soc_Rep_Legal_Nome.Clear;
  end;

  if (PageControl.ActivePage = tsPrincipal) or (PageControl.ActivePage = tsCNAE) then
  begin
    Cna_Codigo.Clear;
    CNA_CNAE.Clear;
    Cna_Descricao.Clear;
    Cna_Padrao.Checked := False;
  end;
end;

procedure TFrmPessoa.Novo;
begin
  LimparTela;
  CarregarComboBox;
  if PageControl.ActivePage = tsPrincipal then
  begin
    Pri_CNPJ.SetFocus;
    Pri_CNPJ.SelectAll;
  end
  else if PageControl.ActivePage = tsQuadroSocietario then
  begin
    Soc_Tipo.SetFocus;
    Soc_Tipo.SelectAll;
  end
  else if PageControl.ActivePage = tsCNAE then
  begin
    CNA_CNAE.SetFocus;
    CNA_CNAE.SelectAll;
  end;
end;

procedure TFrmPessoa.PageControlChange(Sender: TObject);
begin
  if PageControl.ActivePage = tsPrincipal then
    CdsPrincipalToTela
  else if PageControl.ActivePage = tsQuadroSocietario then
    CdsSociedadeToTela
  else if PageControl.ActivePage = tsCNAE then
    cdsCNAEToTela
end;

function TFrmPessoa.ValidarDuplicidade: Boolean;
begin
  Result := True;
  if PageControl.ActivePage = tsPrincipal then
  begin
    Result := TDBPessoa.ValidarDuplicidade(Pri_CNPJ.Text, StrToIntDef(Pri_Codigo.Text, 0));
    if not Result then
    begin
      ShowMessage('CNPJ já cadastrado!');
      Pri_CNPJ.SetFocus;
      Pri_CNPJ.SelectAll;
    end;
  end
  else if PageControl.ActivePage = tsCNAE then
  begin
    Result := TDBCNAE.ValidarDuplicidade(CNA_CNAE.Text, StrToIntDef(Pri_Codigo.Text, 0), StrToIntDef(Cna_Codigo.Text, 0));
    if not Result then
    begin
      ShowMessage('CNAE já cadastrado para esta pessoa!');
      CNA_CNAE.SetFocus;
      CNA_CNAE.SelectAll;
    end;
  end;
end;

function TFrmPessoa.ValidarInformacoes: Boolean;
begin
  Result := True;

  if PageControl.ActivePage = tsPrincipal then
  begin
    if not ValidarCNPJ(Pri_CNPJ.Text) then
    begin
      ShowMessage('CNPJ inválido!');
      Pri_CNPJ.SetFocus;
      Pri_CNPJ.SelectAll;
      Exit(False);
    end;

    if Trim(Pri_Nome.Text) = '' then
    begin
      ShowMessage('Nome é uma informação necessária!');
      Pri_Nome.SetFocus;
      Pri_Nome.SelectAll;
      Exit(False);
    end;

    if (RetornarNumeros(Pri_CEP.Text) <> '') and (Length(Trim(Pri_CEP.Text)) <> 9) then
    begin
      ShowMessage('CEP inválido!');
      Pri_CEP.SetFocus;
      Pri_CEP.SelectAll;
      Exit(False);
    end;  

    if (Pri_UF.Text <> '') and (Pri_UF.Items.IndexOf(Pri_UF.Text) = -1) then
    begin
      ShowMessage('UF inválido!');
      Pri_UF.SetFocus;
      Pri_UF.SelectAll;
      Exit(False);
    end;

    if (Pri_Capital_Social.Text <> '') and (StrToFloatDef(StringReplace(Pri_Capital_Social.Text, '.', '', [rfReplaceAll]), -1) = -1) then
    begin
      ShowMessage('Capital social inválido!');
      Pri_Capital_Social.SetFocus;
      Pri_Capital_Social.SelectAll;
      Exit(False);
    end;
  end
  else if PageControl.ActivePage = tsQuadroSocietario then
  begin
    if Trim(Soc_Tipo.Text) = '' then
    begin
      ShowMessage('Tipo é uma informação necessária!');
      Soc_Tipo.SetFocus;
      Soc_Tipo.SelectAll;
      Exit(False);
    end;

    if Trim(Soc_Nome.Text) = '' then
    begin
      ShowMessage('Nome é uma informação necessária!');
      Soc_Nome.SetFocus;
      Soc_Nome.SelectAll;
      Exit(False);
    end;
  end
  else if PageControl.ActivePage = tsCNAE then
  begin
    if Trim(CNA_CNAE.Text) = '' then
    begin
      ShowMessage('CNAE é uma informação necessária!');
      CNA_CNAE.SetFocus;
      CNA_CNAE.SelectAll;
      Exit(False);
    end;

    if Trim(Cna_Descricao.Text) = '' then
    begin
      ShowMessage('Descrição é uma informação necessária!');
      Cna_Descricao.SetFocus;
      Cna_Descricao.SelectAll;
      Exit(False);
    end;
  end;
end;

end.
