object fPass: TfPass
  Left = 900
  Top = 205
  BorderStyle = bsSingle
  Caption = #1059#1095#1077#1090#1085#1072#1103' '#1079#1072#1087#1080#1089#1100' - '#1057#1084#1077#1085#1072' '#1087#1072#1088#1086#1083#1103
  ClientHeight = 313
  ClientWidth = 304
  Color = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 188
    Height = 23
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 128
    Width = 171
    Height = 23
    Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 72
    Width = 121
    Height = 31
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 96
    Top = 168
    Width = 121
    Height = 31
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 96
    Top = 240
    Width = 121
    Height = 33
    Caption = #1057#1084#1077#1085#1080#1090#1100
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
