object fSAdd: TfSAdd
  Left = 587
  Top = 230
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080' - '#1056#1077#1076#1072#1082#1090#1086#1088
  ClientHeight = 420
  ClientWidth = 736
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
  object Image1: TImage
    Left = 64
    Top = 56
    Width = 103
    Height = 105
    Stretch = True
    Visible = False
  end
  object Label2: TLabel
    Left = 232
    Top = 16
    Width = 74
    Height = 23
    Caption = #1060#1072#1084#1080#1083#1080#1103
  end
  object Label3: TLabel
    Left = 376
    Top = 216
    Width = 49
    Height = 23
    Caption = #1054#1090#1076#1077#1083
  end
  object Label5: TLabel
    Left = 232
    Top = 96
    Width = 123
    Height = 23
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
  end
  object Label6: TLabel
    Left = 560
    Top = 16
    Width = 72
    Height = 23
    Caption = #1054#1090#1095#1077#1089#1090#1074#1086
  end
  object Label7: TLabel
    Left = 392
    Top = 96
    Width = 41
    Height = 23
    Caption = 'Email'
  end
  object Label9: TLabel
    Left = 560
    Top = 96
    Width = 67
    Height = 23
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label1: TLabel
    Left = 392
    Top = 16
    Width = 34
    Height = 23
    Caption = #1048#1084#1103
  end
  object Label8: TLabel
    Left = 16
    Top = 216
    Width = 89
    Height = 23
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
  end
  object DBImage1: TDBImage
    Left = 16
    Top = 16
    Width = 199
    Height = 185
    DataField = 'foto'
    DataSource = DataModule2.SotrudSourse
    ReadOnly = True
    Stretch = True
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 392
    Top = 48
    Width = 153
    Height = 31
    DataField = 'Name'
    DataSource = DataModule2.SotrudSourse
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit1: TDBEdit
    Left = 232
    Top = 48
    Width = 145
    Height = 31
    DataField = 'Fam'
    DataSource = DataModule2.SotrudSourse
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    OnKeyPress = DBEdit1KeyPress
  end
  object DBEdit3: TDBEdit
    Left = 560
    Top = 48
    Width = 151
    Height = 31
    DataField = 'Och'
    DataSource = DataModule2.SotrudSourse
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    OnKeyPress = DBEdit1KeyPress
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 16
    Top = 256
    Width = 281
    Height = 31
    DataField = #8470'_dolj'
    DataSource = DataModule2.SotrudSourse
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    KeyField = #8470'_dolj'
    ListField = 'Dolj'
    ListSource = DataModule2.DoljSourse
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 376
    Top = 256
    Width = 289
    Height = 31
    DataField = #8470'_otdel'
    DataSource = DataModule2.SotrudSourse
    Enabled = False
    KeyField = #8470'_otdel'
    ListField = 'Otdel'
    ListSource = DataModule2.OtdelSourse
    ReadOnly = True
    TabOrder = 5
  end
  object Button3: TButton
    Left = 368
    Top = 328
    Width = 160
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 208
    Top = 328
    Width = 160
    Height = 41
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 288
    Top = 368
    Width = 160
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Enabled = False
    TabOrder = 8
    OnClick = Button5Click
  end
  object MaskEdit1: TMaskEdit
    Left = 560
    Top = 128
    Width = 129
    Height = 31
    EditMask = '!\(999\)999-9999;1;_'
    MaxLength = 13
    ReadOnly = True
    TabOrder = 9
    Text = '(   )   -    '
  end
  object Button6: TButton
    Left = 448
    Top = 368
    Width = 160
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    Enabled = False
    TabOrder = 10
    OnClick = Button6Click
  end
  object Button9: TButton
    Left = 664
    Top = 256
    Width = 33
    Height = 31
    Caption = '...'
    TabOrder = 11
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 296
    Top = 256
    Width = 33
    Height = 31
    Caption = '...'
    TabOrder = 12
    OnClick = Button10Click
  end
  object DBEdit4: TDBEdit
    Left = 392
    Top = 128
    Width = 153
    Height = 31
    DataField = 'Email'
    DataSource = DataModule2.SotrudSourse
    TabOrder = 13
  end
  object Button1: TButton
    Left = 128
    Top = 368
    Width = 160
    Height = 41
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1086#1090#1086
    Enabled = False
    TabOrder = 14
    OnClick = Button1Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 232
    Top = 128
    Width = 145
    Height = 31
    Date = 42852.021529733790000000
    Time = 42852.021529733790000000
    Enabled = False
    TabOrder = 15
  end
  object Button2: TButton
    Left = 7
    Top = 368
    Width = 97
    Height = 41
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 16
    OnClick = Button2Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 272
    Top = 200
  end
end
