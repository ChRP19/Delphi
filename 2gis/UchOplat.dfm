object fUchOplat: TfUchOplat
  Left = 740
  Top = 303
  BorderStyle = bsSingle
  Caption = #1050#1083#1080#1077#1085#1090#1099' - '#1054#1087#1083#1072#1090#1072
  ClientHeight = 371
  ClientWidth = 416
  Color = clMoneyGreen
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 23
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 36
    Height = 23
    Caption = #1048#1053#1053
  end
  object Label1: TLabel
    Left = 16
    Top = 152
    Width = 128
    Height = 23
    Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1087#1083#1072#1090#1099
  end
  object Label2: TLabel
    Left = 16
    Top = 296
    Width = 100
    Height = 23
    Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
  end
  object Label4: TLabel
    Left = 16
    Top = 224
    Width = 97
    Height = 23
    Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073'.'
  end
  object Label5: TLabel
    Left = 16
    Top = 80
    Width = 71
    Height = 23
    Caption = #1047#1072' '#1084#1077#1089#1103#1094
  end
  object Label6: TLabel
    Left = 224
    Top = 8
    Width = 183
    Height = 23
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object DateTimePicker1: TDateTimePicker
    Left = 16
    Top = 328
    Width = 145
    Height = 31
    Date = 42888.555658321760000000
    Time = 42888.555658321760000000
    TabOrder = 0
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 184
    Width = 249
    Height = 31
    DataField = #8470'_oplati'
    DataSource = DataModule2.UchOplatSource
    KeyField = #8470'_oplati'
    ListField = 'Var_oplati'
    ListSource = DataModule2.OplataSource
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 256
    Width = 145
    Height = 31
    DataField = 'Summa'
    DataSource = DataModule2.UchOplatSource
    TabOrder = 2
  end
  object Button1: TButton
    Left = 264
    Top = 320
    Width = 137
    Height = 41
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 264
    Top = 240
    Width = 137
    Height = 41
    Caption = #1055#1088#1086#1074#1077#1089#1090#1080
    TabOrder = 4
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 224
    Top = 40
    Width = 185
    Height = 31
    ReadOnly = True
    TabOrder = 5
  end
  object Edit2: TEdit
    Left = 16
    Top = 40
    Width = 185
    Height = 31
    ReadOnly = True
    TabOrder = 6
  end
  object Button3: TButton
    Left = 264
    Top = 280
    Width = 137
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button3Click
  end
  object DateTimePicker2: TDateTimePicker
    Left = 16
    Top = 112
    Width = 161
    Height = 31
    Date = 42906.631122303240000000
    Format = 'MMMM yyyy'
    Time = 42906.631122303240000000
    DateFormat = dfLong
    DateMode = dmUpDown
    TabOrder = 8
  end
end
