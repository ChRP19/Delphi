object fCAdd: TfCAdd
  Left = 1895
  Top = 91
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1083#1080#1077#1085#1090#1099' - '#1056#1077#1076#1072#1082#1090#1086#1088
  ClientHeight = 368
  ClientWidth = 815
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
    Left = 80
    Top = 112
    Width = 103
    Height = 105
    Stretch = True
    Visible = False
  end
  object Label2: TLabel
    Left = 240
    Top = 8
    Width = 183
    Height = 23
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  end
  object Label4: TLabel
    Left = 16
    Top = 296
    Width = 47
    Height = 23
    Caption = #1059#1083#1080#1094#1072
  end
  object Label5: TLabel
    Left = 264
    Top = 296
    Width = 66
    Height = 23
    Caption = #8470' '#1076#1086#1084#1072
  end
  object Label6: TLabel
    Left = 240
    Top = 152
    Width = 41
    Height = 23
    Caption = 'Email'
  end
  object Label7: TLabel
    Left = 240
    Top = 224
    Width = 36
    Height = 23
    Caption = #1057#1072#1081#1090
  end
  object Label1: TLabel
    Left = 448
    Top = 224
    Width = 67
    Height = 23
    Caption = #1058#1077#1083#1077#1092#1086#1085
  end
  object Label8: TLabel
    Left = 240
    Top = 80
    Width = 67
    Height = 23
    Caption = #1056#1091#1073#1088#1080#1082#1072
  end
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 36
    Height = 23
    Caption = #1048#1053#1053
  end
  object Button1: TButton
    Left = 648
    Top = 128
    Width = 161
    Height = 41
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1083#1086#1075#1086#1090#1080#1087
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button1Click
  end
  object DBImage1: TDBImage
    Left = 16
    Top = 80
    Width = 199
    Height = 185
    DataField = 'Logo'
    DataSource = DataModule2.ClientsSource
    ReadOnly = True
    Stretch = True
    TabOrder = 16
  end
  object DBEdit2: TDBEdit
    Left = 240
    Top = 184
    Width = 175
    Height = 31
    DataField = 'Email'
    DataSource = DataModule2.ClientsSource
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 264
    Top = 328
    Width = 63
    Height = 31
    DataField = #8470'_doma'
    DataSource = DataModule2.ClientsSource
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    OnKeyPress = DBEdit5KeyPress
  end
  object DBEdit4: TDBEdit
    Left = 240
    Top = 256
    Width = 175
    Height = 31
    DataField = 'Site'
    DataSource = DataModule2.ClientsSource
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 240
    Top = 112
    Width = 361
    Height = 31
    DataField = 'Rubrika'
    DataSource = DataModule2.ClientsSource
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    KeyField = #8470'_rubriki'
    ListField = 'Rubrika'
    ListSource = DataModule2.RubrSource
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 16
    Top = 328
    Width = 201
    Height = 31
    DataField = 'Street'
    DataSource = DataModule2.ClientsSource
    Enabled = False
    KeyField = #8470'_street'
    ListField = 'Street'
    ListSource = DataModule2.StreetSourse
    ReadOnly = True
    TabOrder = 6
  end
  object Button3: TButton
    Left = 648
    Top = 80
    Width = 161
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 9
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 648
    Top = 32
    Width = 161
    Height = 41
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 648
    Top = 176
    Width = 161
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Enabled = False
    TabOrder = 11
    OnClick = Button5Click
  end
  object MaskEdit1: TMaskEdit
    Left = 448
    Top = 256
    Width = 123
    Height = 31
    EditMask = '!\(999\)999-9999;1;_'
    MaxLength = 13
    ReadOnly = True
    TabOrder = 5
    Text = '(   )   -    '
  end
  object Button6: TButton
    Left = 648
    Top = 224
    Width = 161
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    Enabled = False
    TabOrder = 12
    OnClick = Button6Click
  end
  object Button9: TButton
    Left = 600
    Top = 112
    Width = 33
    Height = 31
    Caption = '...'
    TabOrder = 14
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 216
    Top = 328
    Width = 33
    Height = 31
    Caption = '...'
    TabOrder = 15
    OnClick = Button10Click
  end
  object DBEdit1: TDBEdit
    Left = 240
    Top = 40
    Width = 201
    Height = 31
    DataField = 'Name_org'
    DataSource = DataModule2.ClientsSource
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 40
    Width = 201
    Height = 31
    DataField = 'INN'
    DataSource = DataModule2.ClientsSource
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    MaxLength = 12
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    OnKeyPress = DBEdit5KeyPress
  end
  object Button2: TButton
    Left = 713
    Top = 288
    Width = 97
    Height = 41
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 13
    OnClick = Button2Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 552
    Top = 8
  end
end
