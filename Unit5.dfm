object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 384
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 553
    Height = 385
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 272
    Top = 200
    object N2: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      object N3: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N5Click
      end
    end
  end
  object SimpleDataSet1: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 'select * from organization'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 176
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = SimpleDataSet1
    Left = 216
    Top = 264
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=test'
      'User_Name=root'
      'Password=root'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=True'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Connected = True
    Left = 64
    Top = 264
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 336
    Top = 240
  end
end
