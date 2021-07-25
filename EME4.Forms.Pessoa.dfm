object FrmPessoa: TFrmPessoa
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pessoa'
  ClientHeight = 659
  ClientWidth = 987
  Color = 15983832
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 981
    Height = 209
    TabStop = False
    Align = alTop
    DataSource = dsPessoa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 156
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPLEMENTO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PORTE'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SITUACAO'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_SITUACAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ABERTURA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CAPITAL_SOCIAL'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NATUREZA_JURIDICA'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA_ULTIMA_ATUALIZACAO'
        Visible = True
      end>
  end
  object PageControl: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 218
    Width = 981
    Height = 397
    ActivePage = tsPrincipal
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = PageControlChange
    object tsPrincipal: TTabSheet
      Caption = '1. Principal'
      object lbledCNPJ: TLabel
        Left = 213
        Top = 19
        Width = 29
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNPJ:'
      end
      object Label1: TLabel
        Left = 211
        Top = 48
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
      end
      object Label2: TLabel
        Left = 197
        Top = 75
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Fantasia:'
      end
      object Label3: TLabel
        Left = 196
        Top = 102
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Telefone:'
      end
      object Label4: TLabel
        Left = 219
        Top = 129
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'CEP:'
      end
      object Label5: TLabel
        Left = 219
        Top = 156
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Rua:'
      end
      object Label6: TLabel
        Left = 514
        Top = 156
        Width = 16
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186':'
      end
      object Label7: TLabel
        Left = 210
        Top = 183
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'Bairro:'
      end
      object Label8: TLabel
        Left = 493
        Top = 183
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade:'
      end
      object Label9: TLabel
        Left = 753
        Top = 183
        Width = 17
        Height = 13
        Alignment = taRightJustify
        Caption = 'UF:'
      end
      object Label10: TLabel
        Left = 173
        Top = 210
        Width = 69
        Height = 13
        Alignment = taRightJustify
        Caption = 'Complemento:'
      end
      object Label11: TLabel
        Left = 218
        Top = 237
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo:'
      end
      object Label12: TLabel
        Left = 500
        Top = 237
        Width = 30
        Height = 13
        Alignment = taRightJustify
        Caption = 'Porte:'
      end
      object Label13: TLabel
        Left = 197
        Top = 264
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Situa'#231#227'o:'
      end
      object Label14: TLabel
        Left = 459
        Top = 264
        Width = 71
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data Situa'#231#227'o:'
      end
      object Label15: TLabel
        Left = 210
        Top = 291
        Width = 32
        Height = 13
        Alignment = taRightJustify
        Caption = 'E-mail:'
      end
      object Label16: TLabel
        Left = 155
        Top = 318
        Width = 87
        Height = 13
        Alignment = taRightJustify
        Caption = 'Natureza Jur'#237'dica:'
      end
      object Label17: TLabel
        Left = 175
        Top = 345
        Width = 67
        Height = 13
        Alignment = taRightJustify
        Caption = 'Capital Social:'
      end
      object Label18: TLabel
        Left = 442
        Top = 345
        Width = 88
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data de Abertura:'
      end
      object Label19: TLabel
        Left = 642
        Top = 345
        Width = 128
        Height = 13
        Alignment = taRightJustify
        Caption = 'Data da '#250'ltma atualiza'#231#227'o:'
      end
      object Label20: TLabel
        Left = 493
        Top = 21
        Width = 37
        Height = 13
        Alignment = taRightJustify
        Caption = 'C'#243'digo:'
        Enabled = False
      end
      object Pri_CNPJ: TMaskEdit
        Left = 248
        Top = 16
        Width = 121
        Height = 21
        EditMask = '99.999.999/9999-99'
        MaxLength = 18
        TabOrder = 0
        Text = '  .   .   /    -  '
        OnKeyDown = ComponenteKeyDown
      end
      object btnConsultar: TButton
        Left = 375
        Top = 14
        Width = 75
        Height = 25
        Caption = 'Consultar'
        TabOrder = 1
        TabStop = False
        OnClick = btnConsultarClick
      end
      object Pri_Nome: TEdit
        Left = 248
        Top = 45
        Width = 490
        Height = 21
        TabOrder = 2
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Fantasia: TEdit
        Left = 248
        Top = 72
        Width = 490
        Height = 21
        TabOrder = 3
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Telefone: TMaskEdit
        Left = 248
        Top = 99
        Width = 121
        Height = 21
        EditMask = '99-9999-9999'
        MaxLength = 12
        TabOrder = 4
        Text = '  -    -    '
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_CEP: TMaskEdit
        Left = 248
        Top = 126
        Width = 121
        Height = 21
        EditMask = '99999-999'
        MaxLength = 9
        TabOrder = 5
        Text = '     -   '
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Rua: TEdit
        Left = 248
        Top = 153
        Width = 202
        Height = 21
        TabOrder = 6
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Numero: TEdit
        Left = 536
        Top = 153
        Width = 81
        Height = 21
        TabOrder = 7
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Bairro: TEdit
        Left = 248
        Top = 180
        Width = 202
        Height = 21
        TabOrder = 8
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Cidade: TEdit
        Left = 536
        Top = 180
        Width = 202
        Height = 21
        TabOrder = 9
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_UF: TComboBox
        Left = 776
        Top = 180
        Width = 49
        Height = 21
        TabOrder = 10
        OnKeyDown = ComponenteKeyDown
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RR'
          'RO'
          'RJ'
          'RN'
          'RS'
          'SC'
          'SP'
          'SE'
          'TO')
      end
      object Pri_Complemento: TEdit
        Left = 248
        Top = 207
        Width = 490
        Height = 21
        TabOrder = 11
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Tipo: TComboBox
        Left = 248
        Top = 234
        Width = 202
        Height = 21
        TabOrder = 12
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Porte: TComboBox
        Left = 536
        Top = 234
        Width = 202
        Height = 21
        TabOrder = 13
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Situacao: TComboBox
        Left = 248
        Top = 261
        Width = 202
        Height = 21
        TabOrder = 14
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Data_Situacao: TMaskEdit
        Left = 536
        Top = 261
        Width = 81
        Height = 21
        EditMask = '99/99/9999'
        MaxLength = 10
        TabOrder = 15
        Text = '  /  /    '
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Email: TEdit
        Left = 248
        Top = 288
        Width = 490
        Height = 21
        TabOrder = 16
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Natureza_Juridica: TComboBox
        Left = 248
        Top = 315
        Width = 490
        Height = 21
        TabOrder = 17
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Capital_Social: TMaskEdit
        Left = 248
        Top = 342
        Width = 104
        Height = 21
        TabOrder = 18
        Text = ''
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Data_Abertura: TMaskEdit
        Left = 536
        Top = 342
        Width = 81
        Height = 21
        EditMask = '99/99/9999'
        MaxLength = 10
        TabOrder = 19
        Text = '  /  /    '
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Data_Ultima_Atualizacao: TMaskEdit
        Left = 776
        Top = 342
        Width = 105
        Height = 21
        EditMask = '99/99/9999 99:99'
        MaxLength = 16
        TabOrder = 20
        Text = '  /  /       :  '
        OnKeyDown = ComponenteKeyDown
      end
      object Pri_Codigo: TEdit
        Left = 536
        Top = 18
        Width = 81
        Height = 21
        Enabled = False
        TabOrder = 21
      end
    end
    object tsQuadroSocietario: TTabSheet
      Caption = '2. Quadro Societ'#225'rio'
      ImageIndex = 1
      object Label21: TLabel
        Left = 219
        Top = 249
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome:'
      end
      object Label22: TLabel
        Left = 226
        Top = 222
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo:'
      end
      object Label23: TLabel
        Left = 157
        Top = 276
        Width = 93
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo do Rep. Legal:'
      end
      object Label24: TLabel
        Left = 150
        Top = 303
        Width = 100
        Height = 13
        Alignment = taRightJustify
        Caption = 'Nome do Rep. Legal:'
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 967
        Height = 209
        TabStop = False
        Align = alTop
        DataSource = dsSociedade
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CODIGO_PESSOA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 216
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 261
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REP_LEGAL_TIPO'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REP_LEGAL_NOME'
            Width = 200
            Visible = True
          end>
      end
      object Soc_Nome: TEdit
        Left = 256
        Top = 246
        Width = 490
        Height = 21
        TabOrder = 2
        OnKeyDown = ComponenteKeyDown
      end
      object Soc_Tipo: TComboBox
        Left = 256
        Top = 219
        Width = 490
        Height = 21
        TabOrder = 1
        OnKeyDown = ComponenteKeyDown
      end
      object Soc_Rep_Legal_Tipo: TComboBox
        Left = 256
        Top = 273
        Width = 490
        Height = 21
        TabOrder = 3
        OnKeyDown = ComponenteKeyDown
      end
      object Soc_Rep_Legal_Nome: TEdit
        Left = 256
        Top = 300
        Width = 490
        Height = 21
        TabOrder = 4
        OnKeyDown = ComponenteKeyDown
      end
      object Soc_Codigo: TEdit
        Left = 3
        Top = 218
        Width = 9
        Height = 21
        TabOrder = 5
        Visible = False
      end
    end
    object tsCNAE: TTabSheet
      Caption = '3. CNAE'
      ImageIndex = 2
      object Label25: TLabel
        Left = 218
        Top = 230
        Width = 31
        Height = 13
        Alignment = taRightJustify
        Caption = 'CNAE:'
      end
      object Label26: TLabel
        Left = 200
        Top = 259
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Descri'#231#227'o:'
      end
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 967
        Height = 209
        TabStop = False
        Align = alTop
        DataSource = dsCNAE
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CODIGO_PESSOA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CNAE'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PADRAO'
            Visible = True
          end>
      end
      object CNA_CNAE: TMaskEdit
        Left = 256
        Top = 227
        Width = 119
        Height = 21
        EditMask = '9999-9/99;1;_'
        MaxLength = 9
        TabOrder = 1
        Text = '    - /  '
        OnKeyDown = ComponenteKeyDown
      end
      object Cna_Descricao: TEdit
        Left = 256
        Top = 256
        Width = 490
        Height = 21
        TabOrder = 3
        OnKeyDown = ComponenteKeyDown
      end
      object Cna_Padrao: TCheckBox
        Left = 392
        Top = 229
        Width = 97
        Height = 17
        Caption = 'Padr'#227'o'
        TabOrder = 2
        OnKeyDown = ComponenteKeyDown
      end
      object Cna_Codigo: TEdit
        Left = 11
        Top = 226
        Width = 9
        Height = 21
        TabOrder = 4
        Visible = False
      end
    end
  end
  object pnBotoes: TPanel
    Left = 0
    Top = 618
    Width = 987
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btnNovo: TButton
      Left = 257
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnApagar: TButton
      Left = 362
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Apagar'
      TabOrder = 1
      OnClick = btnApagarClick
    end
    object btnGravar: TButton
      Left = 467
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnGravarClick
    end
    object btnCancelar: TButton
      Left = 580
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    OnDataChange = dsPessoaDataChange
    Left = 84
    Top = 48
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 16
    Top = 48
    object cdsPessoaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Visible = False
    end
    object cdsPessoaCNPJ: TWideStringField
      FieldName = 'CNPJ'
      Required = True
      Size = 18
    end
    object cdsPessoaNOME: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object cdsPessoaFANTASIA: TWideStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Required = True
      Size = 200
    end
    object cdsPessoaTELEFONE: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Required = True
      Size = 15
    end
    object cdsPessoaCEP: TWideStringField
      FieldName = 'CEP'
      Required = True
      Size = 9
    end
    object cdsPessoaRUA: TWideStringField
      DisplayLabel = 'Rua'
      FieldName = 'RUA'
      Required = True
      Size = 150
    end
    object cdsPessoaNUMERO: TWideStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Required = True
      Size = 10
    end
    object cdsPessoaBAIRRO: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Required = True
      Size = 150
    end
    object cdsPessoaCIDADE: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Required = True
      Size = 150
    end
    object cdsPessoaUF: TWideStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsPessoaCOMPLEMENTO: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Required = True
      Size = 150
    end
    object cdsPessoaTIPO: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Required = True
      Size = 60
    end
    object cdsPessoaPORTE: TWideStringField
      DisplayLabel = 'Porte'
      FieldName = 'PORTE'
      Required = True
      Size = 100
    end
    object cdsPessoaSITUACAO: TWideStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'SITUACAO'
      Required = True
      Size = 60
    end
    object cdsPessoaDATA_SITUACAO: TDateField
      DisplayLabel = 'Data da Situa'#231#227'o'
      FieldName = 'DATA_SITUACAO'
      Required = True
    end
    object cdsPessoaEMAIL: TWideStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EMAIL'
      Required = True
      Size = 150
    end
    object cdsPessoaDATA_ABERTURA: TDateField
      DisplayLabel = 'Data de Abertura'
      FieldName = 'DATA_ABERTURA'
      Required = True
    end
    object cdsPessoaCAPITAL_SOCIAL: TBCDField
      DisplayLabel = 'Capital Social'
      FieldName = 'CAPITAL_SOCIAL'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsPessoaNATUREZA_JURIDICA: TWideStringField
      DisplayLabel = 'Natureza Jur'#237'dica'
      FieldName = 'NATUREZA_JURIDICA'
      Required = True
      Size = 200
    end
    object cdsPessoaDATA_ULTIMA_ATUALIZACAO: TDateTimeField
      DisplayLabel = 'Data da '#250'ltima atualiza'#231#227'o'
      FieldName = 'DATA_ULTIMA_ATUALIZACAO'
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = DM.qryPessoa
    Left = 50
    Top = 48
  end
  object cdsSociedade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSociedade'
    Left = 16
    Top = 80
    object cdsSociedadeCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsSociedadeCODIGO_PESSOA: TIntegerField
      DisplayLabel = 'C'#243'digo da Pessoa'
      FieldName = 'CODIGO_PESSOA'
      Required = True
    end
    object cdsSociedadeTIPO: TWideStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Required = True
      Size = 150
    end
    object cdsSociedadeNOME: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 200
    end
    object cdsSociedadeREP_LEGAL_TIPO: TWideStringField
      DisplayLabel = 'Tipo do Rep. Legal'
      FieldName = 'REP_LEGAL_TIPO'
      Required = True
      Size = 150
    end
    object cdsSociedadeREP_LEGAL_NOME: TWideStringField
      DisplayLabel = 'Rep. Legal'
      FieldName = 'REP_LEGAL_NOME'
      Required = True
      Size = 200
    end
  end
  object dspSociedade: TDataSetProvider
    DataSet = DM.qryPessoa_Sociedade
    Left = 50
    Top = 80
  end
  object dsSociedade: TDataSource
    DataSet = cdsSociedade
    OnDataChange = dsSociedadeDataChange
    Left = 84
    Top = 80
  end
  object cdsCNAE: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCNAE'
    Left = 16
    Top = 112
    object cdsCNAECODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsCNAECODIGO_PESSOA: TIntegerField
      DisplayLabel = 'C'#243'digo da Pessoa'
      FieldName = 'CODIGO_PESSOA'
      Required = True
    end
    object cdsCNAECNAE: TWideStringField
      FieldName = 'CNAE'
      Required = True
    end
    object cdsCNAEDESCRICAO: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 1000
    end
    object cdsCNAEPADRAO: TWideStringField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'PADRAO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspCNAE: TDataSetProvider
    DataSet = DM.qryPessoa_CNAE
    Left = 50
    Top = 112
  end
  object dsCNAE: TDataSource
    DataSet = cdsCNAE
    OnDataChange = dsCNAEDataChange
    Left = 84
    Top = 112
  end
end
