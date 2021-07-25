object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 266
  Width = 343
  object Conexao: TIBDatabase
    DatabaseName = 'D:\Sistemas\EME4\Win32\Debug\Base\DB.FDB'
    Params.Strings = (
      'USER_NAME=SYSDBA'
      'PASSWORD=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 32
    Top = 16
  end
  object Transacao: TIBTransaction
    DefaultDatabase = Conexao
    DefaultAction = TARollback
    Left = 32
    Top = 72
  end
  object qryPessoa: TIBQuery
    Database = Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM PESSOA')
    Left = 128
    Top = 16
    object qryPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PESSOA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryPessoaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"PESSOA"."CNPJ"'
      Required = True
      Size = 18
    end
    object qryPessoaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PESSOA"."NOME"'
      Required = True
      Size = 200
    end
    object qryPessoaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"PESSOA"."FANTASIA"'
      Required = True
      Size = 200
    end
    object qryPessoaTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"PESSOA"."TELEFONE"'
      Required = True
      Size = 15
    end
    object qryPessoaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PESSOA"."CEP"'
      Required = True
      Size = 9
    end
    object qryPessoaRUA: TIBStringField
      FieldName = 'RUA'
      Origin = '"PESSOA"."RUA"'
      Required = True
      Size = 150
    end
    object qryPessoaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"PESSOA"."NUMERO"'
      Required = True
      Size = 10
    end
    object qryPessoaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PESSOA"."BAIRRO"'
      Required = True
      Size = 150
    end
    object qryPessoaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"PESSOA"."CIDADE"'
      Required = True
      Size = 150
    end
    object qryPessoaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PESSOA"."UF"'
      Required = True
      Size = 2
    end
    object qryPessoaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"PESSOA"."COMPLEMENTO"'
      Required = True
      Size = 150
    end
    object qryPessoaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PESSOA"."TIPO"'
      Required = True
      Size = 60
    end
    object qryPessoaPORTE: TIBStringField
      FieldName = 'PORTE'
      Origin = '"PESSOA"."PORTE"'
      Required = True
      Size = 100
    end
    object qryPessoaSITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"PESSOA"."SITUACAO"'
      Required = True
      Size = 60
    end
    object qryPessoaDATA_SITUACAO: TDateField
      FieldName = 'DATA_SITUACAO'
      Origin = '"PESSOA"."DATA_SITUACAO"'
      Required = True
    end
    object qryPessoaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"PESSOA"."EMAIL"'
      Required = True
      Size = 150
    end
    object qryPessoaDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
      Origin = '"PESSOA"."DATA_ABERTURA"'
      Required = True
    end
    object qryPessoaCAPITAL_SOCIAL: TIBBCDField
      FieldName = 'CAPITAL_SOCIAL'
      Origin = '"PESSOA"."CAPITAL_SOCIAL"'
      Required = True
      Precision = 18
      Size = 2
    end
    object qryPessoaNATUREZA_JURIDICA: TIBStringField
      FieldName = 'NATUREZA_JURIDICA'
      Origin = '"PESSOA"."NATUREZA_JURIDICA"'
      Required = True
      Size = 200
    end
    object qryPessoaDATA_ULTIMA_ATUALIZACAO: TDateTimeField
      FieldName = 'DATA_ULTIMA_ATUALIZACAO'
      Origin = '"PESSOA"."DATA_ULTIMA_ATUALIZACAO"'
    end
  end
  object qryPessoa_Sociedade: TIBQuery
    Database = Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM PESSOA_SOCIEDADE'
      'WHERE CODIGO_PESSOA= :CODIGO_PESSOA')
    Left = 128
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PESSOA'
        ParamType = ptUnknown
      end>
    object qryPessoa_SociedadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PESSOA_SOCIEDADE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoa_SociedadeCODIGO_PESSOA: TIntegerField
      FieldName = 'CODIGO_PESSOA'
      Origin = '"PESSOA_SOCIEDADE"."CODIGO_PESSOA"'
      Required = True
    end
    object qryPessoa_SociedadeTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PESSOA_SOCIEDADE"."TIPO"'
      Required = True
      Size = 150
    end
    object qryPessoa_SociedadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PESSOA_SOCIEDADE"."NOME"'
      Required = True
      Size = 200
    end
    object qryPessoa_SociedadeREP_LEGAL_TIPO: TIBStringField
      FieldName = 'REP_LEGAL_TIPO'
      Origin = '"PESSOA_SOCIEDADE"."REP_LEGAL_TIPO"'
      Required = True
      Size = 150
    end
    object qryPessoa_SociedadeREP_LEGAL_NOME: TIBStringField
      FieldName = 'REP_LEGAL_NOME'
      Origin = '"PESSOA_SOCIEDADE"."REP_LEGAL_NOME"'
      Required = True
      Size = 200
    end
  end
  object qryPessoa_CNAE: TIBQuery
    Database = Conexao
    Transaction = Transacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM PESSOA_CNAE'
      'WHERE CODIGO_PESSOA = :CODIGO_PESSOA')
    Left = 128
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PESSOA'
        ParamType = ptUnknown
      end>
    object qryPessoa_CNAECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PESSOA_CNAE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPessoa_CNAECODIGO_PESSOA: TIntegerField
      FieldName = 'CODIGO_PESSOA'
      Origin = '"PESSOA_CNAE"."CODIGO_PESSOA"'
      Required = True
    end
    object qryPessoa_CNAECNAE: TIBStringField
      FieldName = 'CNAE'
      Origin = '"PESSOA_CNAE"."CNAE"'
      Required = True
    end
    object qryPessoa_CNAEDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"PESSOA_CNAE"."DESCRICAO"'
      Required = True
      Size = 1000
    end
    object qryPessoa_CNAEPADRAO: TIBStringField
      FieldName = 'PADRAO'
      Origin = '"PESSOA_CNAE"."PADRAO"'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
