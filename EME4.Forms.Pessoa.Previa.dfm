object FrmPessoaPrevia: TFrmPessoaPrevia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pessoa - Pr'#233'via'
  ClientHeight = 655
  ClientWidth = 761
  Color = 15983832
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbledCNPJ: TLabel
    Left = 77
    Top = 19
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'CNPJ:'
  end
  object Label1: TLabel
    Left = 75
    Top = 48
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = 'Nome:'
  end
  object Label2: TLabel
    Left = 61
    Top = 75
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Fantasia:'
  end
  object Label3: TLabel
    Left = 60
    Top = 102
    Width = 46
    Height = 13
    Alignment = taRightJustify
    Caption = 'Telefone:'
  end
  object Label4: TLabel
    Left = 83
    Top = 129
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'CEP:'
  end
  object Label5: TLabel
    Left = 83
    Top = 156
    Width = 23
    Height = 13
    Alignment = taRightJustify
    Caption = 'Rua:'
  end
  object Label6: TLabel
    Left = 378
    Top = 156
    Width = 16
    Height = 13
    Alignment = taRightJustify
    Caption = 'N'#186':'
  end
  object Label7: TLabel
    Left = 74
    Top = 183
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'Bairro:'
  end
  object Label8: TLabel
    Left = 357
    Top = 183
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cidade:'
  end
  object Label9: TLabel
    Left = 617
    Top = 183
    Width = 17
    Height = 13
    Alignment = taRightJustify
    Caption = 'UF:'
  end
  object Label10: TLabel
    Left = 37
    Top = 210
    Width = 69
    Height = 13
    Alignment = taRightJustify
    Caption = 'Complemento:'
  end
  object Label11: TLabel
    Left = 82
    Top = 237
    Width = 24
    Height = 13
    Alignment = taRightJustify
    Caption = 'Tipo:'
  end
  object Label12: TLabel
    Left = 364
    Top = 237
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'Porte:'
  end
  object Label13: TLabel
    Left = 61
    Top = 264
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'Situa'#231#227'o:'
  end
  object Label14: TLabel
    Left = 323
    Top = 264
    Width = 71
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data Situa'#231#227'o:'
  end
  object Label15: TLabel
    Left = 74
    Top = 291
    Width = 32
    Height = 13
    Alignment = taRightJustify
    Caption = 'E-mail:'
  end
  object Label16: TLabel
    Left = 19
    Top = 318
    Width = 87
    Height = 13
    Alignment = taRightJustify
    Caption = 'Natureza Jur'#237'dica:'
  end
  object Label17: TLabel
    Left = 39
    Top = 345
    Width = 67
    Height = 13
    Alignment = taRightJustify
    Caption = 'Capital Social:'
  end
  object Label18: TLabel
    Left = 306
    Top = 345
    Width = 88
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data de Abertura:'
  end
  object Label19: TLabel
    Left = 506
    Top = 345
    Width = 128
    Height = 13
    Alignment = taRightJustify
    Caption = 'Data da '#250'ltma atualiza'#231#227'o:'
    Color = clBtnFace
    ParentColor = False
  end
  object Label20: TLabel
    Left = 53
    Top = 375
    Width = 53
    Height = 13
    Alignment = taRightJustify
    Caption = 'Sociedade:'
  end
  object Label21: TLabel
    Left = 71
    Top = 487
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'CNAEs:'
  end
  object edCNPJ: TMaskEdit
    Left = 112
    Top = 16
    Width = 114
    Height = 21
    TabStop = False
    Enabled = False
    EditMask = '99.999.999/9999-99'
    MaxLength = 18
    ReadOnly = True
    TabOrder = 21
    Text = '  .   .   /    -  '
  end
  object edNome: TEdit
    Left = 112
    Top = 45
    Width = 483
    Height = 21
    Enabled = False
    TabOrder = 0
    OnKeyDown = ComponenteKeyDown
  end
  object edFantasia: TEdit
    Left = 112
    Top = 72
    Width = 483
    Height = 21
    Enabled = False
    TabOrder = 1
    OnKeyDown = ComponenteKeyDown
  end
  object edTelefone: TMaskEdit
    Left = 112
    Top = 99
    Width = 115
    Height = 21
    Enabled = False
    EditMask = '99-9999-9999'
    MaxLength = 12
    TabOrder = 2
    Text = '  -    -    '
    OnKeyDown = ComponenteKeyDown
  end
  object edCEP: TMaskEdit
    Left = 112
    Top = 126
    Width = 116
    Height = 21
    Enabled = False
    EditMask = '99999-999'
    MaxLength = 9
    TabOrder = 3
    Text = '     -   '
    OnKeyDown = ComponenteKeyDown
  end
  object edRua: TEdit
    Left = 112
    Top = 153
    Width = 197
    Height = 21
    Enabled = False
    TabOrder = 4
    OnKeyDown = ComponenteKeyDown
  end
  object edNumero: TEdit
    Left = 400
    Top = 153
    Width = 76
    Height = 21
    Enabled = False
    TabOrder = 5
    OnKeyDown = ComponenteKeyDown
  end
  object edBairro: TEdit
    Left = 112
    Top = 180
    Width = 197
    Height = 21
    Enabled = False
    TabOrder = 6
    OnKeyDown = ComponenteKeyDown
  end
  object edCidade: TEdit
    Left = 400
    Top = 180
    Width = 197
    Height = 21
    Enabled = False
    TabOrder = 7
    OnKeyDown = ComponenteKeyDown
  end
  object edUF: TComboBox
    Left = 640
    Top = 180
    Width = 44
    Height = 21
    Enabled = False
    TabOrder = 8
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
  object edComplemento: TEdit
    Left = 112
    Top = 207
    Width = 485
    Height = 21
    Enabled = False
    TabOrder = 9
    OnKeyDown = ComponenteKeyDown
  end
  object edTipo: TComboBox
    Left = 112
    Top = 234
    Width = 197
    Height = 21
    Enabled = False
    TabOrder = 10
    OnKeyDown = ComponenteKeyDown
  end
  object edPorte: TComboBox
    Left = 400
    Top = 234
    Width = 197
    Height = 21
    Enabled = False
    TabOrder = 11
    OnKeyDown = ComponenteKeyDown
  end
  object edSituacao: TComboBox
    Left = 112
    Top = 261
    Width = 197
    Height = 21
    Enabled = False
    TabOrder = 12
    OnKeyDown = ComponenteKeyDown
  end
  object edData_Situacao: TMaskEdit
    Left = 400
    Top = 261
    Width = 77
    Height = 21
    Enabled = False
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 13
    Text = '  /  /    '
    OnKeyDown = ComponenteKeyDown
  end
  object edEmail: TEdit
    Left = 112
    Top = 288
    Width = 486
    Height = 21
    Enabled = False
    TabOrder = 14
    OnKeyDown = ComponenteKeyDown
  end
  object edNatureza_Juridica: TComboBox
    Left = 112
    Top = 315
    Width = 486
    Height = 21
    Enabled = False
    TabOrder = 15
    OnKeyDown = ComponenteKeyDown
  end
  object edCapital_Social: TMaskEdit
    Left = 112
    Top = 342
    Width = 110
    Height = 21
    Enabled = False
    TabOrder = 16
    Text = ''
    OnKeyDown = ComponenteKeyDown
  end
  object edData_Abertura: TMaskEdit
    Left = 400
    Top = 342
    Width = 80
    Height = 21
    Enabled = False
    EditMask = '99/99/9999'
    MaxLength = 10
    TabOrder = 17
    Text = '  /  /    '
    OnKeyDown = ComponenteKeyDown
  end
  object edData_Ultima_Atualizacao: TMaskEdit
    Left = 640
    Top = 342
    Width = 105
    Height = 21
    Enabled = False
    EditMask = '99/99/9999 99:99'
    MaxLength = 16
    TabOrder = 18
    Text = '  /  /       :  '
    OnKeyDown = ComponenteKeyDown
  end
  object btnAplicar: TButton
    Left = 128
    Top = 600
    Width = 137
    Height = 41
    Caption = 'Aplicar altera'#231#245'es'
    ModalResult = 1
    TabOrder = 19
  end
  object btnCancelar: TButton
    Left = 427
    Top = 600
    Width = 137
    Height = 41
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 20
  end
  object lvSociedade: TListView
    Left = 112
    Top = 369
    Width = 485
    Height = 104
    Columns = <
      item
        Caption = 'Tipo'
        Width = 100
      end
      item
        Caption = 'Nome'
        Width = 140
      end
      item
        Caption = 'Tipo do Rep. Legal'
        Width = 110
      end
      item
        Caption = 'Nome do Rep. Legal'
        Width = 110
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 22
    ViewStyle = vsReport
  end
  object lvCNAEs: TListView
    Left = 113
    Top = 481
    Width = 485
    Height = 104
    Columns = <
      item
        Caption = 'CNAE'
        Width = 100
      end
      item
        Caption = 'Descri'#231#227'o'
        Width = 300
      end
      item
        Caption = 'Padr'#227'o'
      end>
    ReadOnly = True
    RowSelect = True
    TabOrder = 23
    ViewStyle = vsReport
  end
end
