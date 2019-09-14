object fMain: TfMain
  Left = 226
  Top = 138
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1059#1095#1077#1090' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1092#1080#1083#1080#1072#1083#1086#1074' '#1044#1091#1073#1083#1100#1043#1048#1057' - '#1060#1080#1083#1080#1072#1083#1099
  ClientHeight = 630
  ClientWidth = 1048
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
    Left = 8
    Top = 152
    Width = 165
    Height = 69
    Caption = #1055#1077#1095#1072#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1092#1080#1083#1080#1072#1083#1072'/'#1092#1088#1072#1085#1095#1072#1081#1079#1080
    WordWrap = True
  end
  object GroupBox2: TGroupBox
    Left = 192
    Top = 8
    Width = 241
    Height = 273
    Caption = ' '#1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '
    Color = clMoneyGreen
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 24
      Width = 185
      Height = 89
      Caption = ' '#1053#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077' '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      Items.Strings = (
        #1055#1086' '#1074#1086#1079#1088#1072#1089#1090#1072#1085#1080#1102
        #1055#1086' '#1091#1073#1099#1074#1072#1085#1080#1102)
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 24
      Top = 128
      Width = 185
      Height = 89
      Caption = ' '#1042#1080#1076' '
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      Items.Strings = (
        #1055#1086' '#1075#1086#1088#1086#1076#1091
        #1055#1086' '#1091#1083#1080#1094#1072#1084)
      ParentFont = False
      TabOrder = 1
      OnClick = RadioGroup2Click
    end
    object Button7: TButton
      Left = 56
      Top = 224
      Width = 121
      Height = 41
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button7Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 560
    Top = 8
    Width = 249
    Height = 209
    Caption = ' '#1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '
    Color = clMoneyGreen
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 65
      Height = 23
      Caption = #1055#1086' '#1074#1080#1076#1091
    end
    object Label2: TLabel
      Left = 16
      Top = 88
      Width = 82
      Height = 23
      Caption = #1055#1086' '#1075#1086#1088#1086#1076#1091
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 112
      Width = 201
      Height = 31
      KeyField = #8470'_city'
      ListField = 'City'
      ListSource = DataModule2.CitySourse
      TabOrder = 0
      OnClick = DBLookupComboBox2Click
    end
    object Button6: TButton
      Left = 32
      Top = 152
      Width = 177
      Height = 41
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      TabOrder = 1
      OnClick = Button6Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 48
      Width = 201
      Height = 31
      KeyField = #8470'_t'
      ListField = 'Type'
      ListSource = DataModule2.TypeSourse
      TabOrder = 2
      OnClick = DBLookupComboBox1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 288
    Width = 1048
    Height = 342
    Align = alBottom
    DataSource = DataModule2.DataSource6
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Type'
        Title.Alignment = taCenter
        Title.Caption = #1042#1080#1076
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'City'
        Title.Alignment = taCenter
        Title.Caption = #1043#1086#1088#1086#1076
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 186
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Street'
        Title.Alignment = taCenter
        Title.Caption = #1059#1083#1080#1094#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dom'
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1076#1086#1084#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etaj'
        Title.Alignment = taCenter
        Title.Caption = #1069#1090#1072#1078
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = #8470'_office'
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1086#1092#1080#1089
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 118
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'telefon'
        Title.Alignment = taCenter
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 170
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 608
    Top = 240
    Width = 145
    Height = 41
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button5: TButton
    Left = 464
    Top = 240
    Width = 145
    Height = 41
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button4: TButton
    Left = 8
    Top = 8
    Width = 65
    Height = 41
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button8: TButton
    Left = 752
    Top = 240
    Width = 145
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 6
    OnClick = Button8Click
  end
  object Button2: TButton
    Left = 48
    Top = 232
    Width = 90
    Height = 41
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 848
    Top = 88
    Width = 121
    Height = 41
    Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button11: TButton
    Left = 848
    Top = 128
    Width = 121
    Height = 41
    Caption = #1050#1083#1080#1077#1085#1090#1099
    TabOrder = 9
    OnClick = Button11Click
  end
end
