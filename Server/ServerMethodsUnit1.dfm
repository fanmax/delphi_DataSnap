object ServerMethods1: TServerMethods1
  OldCreateOrder = False
  Height = 229
  Width = 288
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 56
    Top = 16
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 48
    Top = 72
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=PC-001\SQLEXPRESS'
      'Database=teste'
      'User_Name=sa'
      'Password=123456'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 208
    Top = 32
  end
  object qryProduto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM produto')
    Left = 208
    Top = 96
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 208
    Top = 144
  end
end
