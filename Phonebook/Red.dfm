object fRed: TfRed
  Left = 135
  Top = 349
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1077#1088#1074#1080#1089' - '#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 520
  ClientWidth = 432
  Color = clCream
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 74
    Height = 23
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 34
    Height = 23
    Caption = #1048#1084#1103
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 72
    Height = 23
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label4: TLabel
    Left = 16
    Top = 192
    Width = 32
    Height = 23
    Caption = #1055#1086#1083
  end
  object Label5: TLabel
    Left = 16
    Top = 248
    Width = 89
    Height = 23
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
  end
  object Label6: TLabel
    Left = 16
    Top = 360
    Width = 100
    Height = 46
    Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088
    WordWrap = True
  end
  object Label7: TLabel
    Left = 16
    Top = 440
    Width = 47
    Height = 23
    Caption = 'E-mail'
  end
  object Label8: TLabel
    Left = 16
    Top = 304
    Width = 49
    Height = 23
    Caption = #1054#1090#1076#1077#1083
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 16
    Width = 180
    Height = 31
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 72
    Width = 180
    Height = 31
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 136
    Top = 128
    Width = 180
    Height = 31
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 184
    Width = 145
    Height = 31
    ItemHeight = 23
    TabOrder = 3
  end
  object ComboBox2: TComboBox
    Left = 136
    Top = 240
    Width = 280
    Height = 31
    ItemHeight = 23
    TabOrder = 4
  end
  object MaskEdit1: TMaskEdit
    Left = 136
    Top = 360
    Width = 75
    Height = 31
    EditMask = '000\-000;1;_'
    MaxLength = 7
    TabOrder = 5
    Text = '   -   '
  end
  object MaskEdit2: TMaskEdit
    Left = 136
    Top = 432
    Width = 210
    Height = 31
    TabOrder = 6
  end
  object Button1: TButton
    Left = 168
    Top = 480
    Width = 90
    Height = 33
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button1Click
  end
  object ComboBox3: TComboBox
    Left = 135
    Top = 304
    Width = 280
    Height = 31
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ItemHeight = 23
    ParentFont = False
    TabOrder = 8
  end
end
