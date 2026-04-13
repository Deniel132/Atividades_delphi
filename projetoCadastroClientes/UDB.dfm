object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Port=7777'
      
        'Password=77726F981F568BA3348E3BD5F65D6D9F8E618C7C21FBEE2AAEE8656' +
        'A4E68E437'
      'Database=mobiage'
      'Server=172.16.100.239'
      'User_Name=mobiage'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 8
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Top = 176
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\ProjetosSG19\projetoCadastroClientes\DLLs\libpq.dll'
    Left = 8
    Top = 88
  end
  object DataSourceDeBuscaDaLista: TDataSource
    DataSet = BuscarListaDeClientes
    Left = 128
    Top = 112
  end
  object BuscarListaDeClientes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select  *  from cliente;')
    Left = 152
    Top = 24
    object BuscarListaDeClientesid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object BuscarListaDeClientesname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 150
    end
    object BuscarListaDeClientescpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      OnGetText = BuscarListaDeClientescpfGetText
      Size = 14
    end
    object BuscarListaDeClientesdata_nascimento: TDateField
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
    end
  end
  object InserirValores: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 24
  end
  object BuscarClientePorId: TFDQuery
    Connection = FDConnection1
    Left = 280
    Top = 104
  end
  object VerificaCpfExistente: TFDQuery
    Connection = FDConnection1
    Left = 384
    Top = 24
  end
end
