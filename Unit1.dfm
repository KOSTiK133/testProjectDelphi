object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1050#1083#1102#1095#1080
  ClientHeight = 601
  ClientWidth = 878
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 878
    Height = 601
    Align = alClient
    DataSource = select
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Connected = True
    Left = 64
    Top = 312
  end
  object MainMenu1: TMainMenu
    Left = 480
    Top = 88
    object N1: TMenuItem
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      object N9: TMenuItem
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1086#1090#1095#1077#1090#1072
        OnClick = N9Click
      end
      object pdf1: TMenuItem
        Caption = #1069#1077#1089#1087#1086#1088#1090' '#1074' pdf'
        OnClick = pdf1Click
      end
      object N10: TMenuItem
        Caption = #1042#1099#1093#1086#1076
      end
    end
    object N2: TMenuItem
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1103
      object N4: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N6Click
      end
      object N8: TMenuItem
        Caption = #1055#1086#1080#1089#1082
        OnClick = N8Click
      end
    end
    object N7: TMenuItem
      Caption = #1060#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
      OnClick = N7Click
    end
    object N11: TMenuItem
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      OnClick = N11Click
    end
  end
  object SimpleDataSet1: TSimpleDataSet
    Active = True
    Aggregates = <>
    AutoCalcFields = False
    Connection = SQLConnection1
    DataSet.CommandText = 
      'select keys.id,organization.name,keys.keyOrganization,keys.DateS' +
      'tart,keys.DateEnd,keys.isBlocked from `keys` join `organization`' +
      ' ON keys.idOrganization = organization.id'
    DataSet.DataSource = select
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'name'
        Attributes = [faRequired]
        DataType = ftString
        Size = 120
      end
      item
        Name = 'keyOrganization'
        Attributes = [faRequired]
        DataType = ftString
        Size = 245
      end
      item
        Name = 'DateStart'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'DateEnd'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'isBlocked'
        Attributes = [faRequired]
        DataType = ftShortint
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 192
  end
  object select: TDataSource
    DataSet = SimpleDataSet1
    Left = 360
    Top = 216
  end
  object SQLQuery1: TSQLQuery
    DataSource = select
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 432
    Top = 320
  end
end
