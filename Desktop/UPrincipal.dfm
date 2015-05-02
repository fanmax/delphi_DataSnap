object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 331
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 10
    Width = 22
    Height = 13
    Caption = 'Host'
  end
  object Label2: TLabel
    Left = 40
    Top = 56
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object edtHost: TEdit
    Left = 40
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'localhost'
  end
  object edtPort: TEdit
    Left = 40
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '211'
  end
  object btnConectar: TButton
    Left = 184
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Conectar'
    TabOrder = 2
    OnClick = btnConectarClick
  end
  object dbgridProduto: TDBGrid
    Left = 40
    Top = 136
    Width = 633
    Height = 120
    DataSource = dsProduto
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 40
    Top = 262
    Width = 630
    Height = 25
    DataSource = dsProduto
    TabOrder = 4
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'DataSnap'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXDataSnap'
      'HostName=localhost'
      'Port=211'
      'CommunicationProtocol=tcp/ip'
      'DatasnapContext=datasnap/'
      
        'DriverAssemblyLoader=Borland.Data.TDBXClientDriverLoader,Borland' +
        '.Data.DbxClientDriver,Version=21.0.0.0,Culture=neutral,PublicKey' +
        'Token=91d62ebb5b0d1b1b')
    Left = 432
    Top = 40
  end
  object DSProviderConnection1: TDSProviderConnection
    ServerClassName = 'TServerMethods1'
    SQLConnection = SQLConnection1
    Left = 552
    Top = 40
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 312
    Top = 88
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    RemoteServer = DSProviderConnection1
    Left = 656
    Top = 48
  end
end
