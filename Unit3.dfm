object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 391
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 27
    Width = 27
    Height = 13
    Caption = #1082#1083#1102#1095
  end
  object Label2: TLabel
    Left = 24
    Top = 70
    Width = 115
    Height = 13
    Caption = #1076#1072#1090#1072' '#1085#1072#1095#1072#1083#1072' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object Label3: TLabel
    Left = 24
    Top = 108
    Width = 133
    Height = 13
    Caption = #1076#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1077#1081#1089#1090#1074#1080#1103
  end
  object Label4: TLabel
    Left = 20
    Top = 140
    Width = 64
    Height = 13
    Caption = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
  end
  object key: TEdit
    Left = 163
    Top = 24
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object Organisation: TComboBox
    Left = 163
    Top = 137
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object DateStart: TDatePicker
    Left = 163
    Top = 51
    Width = 185
    Date = 44906.000000000000000000
    DateFormat = 'yyyy-mm-dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 2
  end
  object DateEnd: TDatePicker
    Left = 163
    Top = 89
    Width = 185
    Date = 44906.000000000000000000
    DateFormat = 'yyyy-mm-dd'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 3
  end
  object CheckBox1: TCheckBox
    Left = 251
    Top = 164
    Width = 97
    Height = 17
    Caption = #1047#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085
    TabOrder = 4
  end
  object add: TButton
    Left = 211
    Top = 187
    Width = 137
    Height = 33
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 5
    OnClick = addClick
  end
  object Button1: TButton
    Left = 59
    Top = 187
    Width = 137
    Height = 33
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button1Click
  end
end
