object fClients: TfClients
  Left = 65
  Top = 563
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1059#1095#1077#1090' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1092#1080#1083#1080#1072#1083#1086#1074' "'#1044#1091#1073#1083#1100#1043#1048#1057'" - '#1050#1083#1080#1077#1085#1090#1099
  ClientHeight = 685
  ClientWidth = 1249
  Color = clMoneyGreen
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 23
  object Label4: TLabel
    Left = 192
    Top = 8
    Width = 73
    Height = 33
    Caption = 'Label4'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 328
    Width = 1249
    Height = 357
    Align = alBottom
    DataSource = DataModule2.DataSource2
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Name_org'
        Title.Alignment = taCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rubrika'
        Title.Alignment = taCenter
        Title.Caption = #1056#1091#1073#1088#1080#1082#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 406
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Street'
        Title.Alignment = taCenter
        Title.Caption = #1059#1083#1080#1094#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = #8470'_doma'
        Title.Alignment = taCenter
        Title.Caption = #8470' '#1076#1086#1084#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefon'
        Title.Alignment = taCenter
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Site'
        Title.Alignment = taCenter
        Title.Caption = #1057#1072#1081#1090
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 174
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 88
    Top = 48
    Width = 281
    Height = 201
    Caption = ' '#1055#1086#1080#1089#1082' '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Edit1: TEdit
      Left = 16
      Top = 128
      Width = 121
      Height = 31
      Enabled = False
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 48
      Width = 233
      Height = 31
      Style = csDropDownList
      ItemHeight = 23
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        #1055#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
        #1055#1086' email'
        #1055#1086' '#1089#1072#1081#1090#1091)
    end
    object Button1: TButton
      Left = 176
      Top = 128
      Width = 75
      Height = 33
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 456
    Top = 16
    Width = 249
    Height = 305
    Caption = ' '#1057#1086#1088#1090#1080#1088#1086#1074#1082#1072' '
    Color = clMoneyGreen
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object RadioGroup1: TRadioGroup
      Left = 24
      Top = 24
      Width = 201
      Height = 97
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
      Width = 201
      Height = 113
      Caption = ' '#1042#1080#1076' '
      Enabled = False
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Calibri'
      Font.Style = []
      Items.Strings = (
        #1055#1086' '#1085#1072#1079#1074#1072#1085#1080#1102
        #1055#1086' '#1088#1091#1073#1088#1080#1082#1077
        #1055#1086' '#1091#1083#1080#1094#1077)
      ParentFont = False
      TabOrder = 1
      OnClick = RadioGroup2Click
    end
    object Button7: TButton
      Left = 64
      Top = 256
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
    Left = 767
    Top = 16
    Width = 346
    Height = 305
    Caption = ' '#1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '
    Color = clMoneyGreen
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 93
      Height = 23
      Caption = #1055#1086' '#1088#1091#1073#1088#1080#1082#1077
    end
    object Label3: TLabel
      Left = 16
      Top = 136
      Width = 73
      Height = 23
      Caption = #1055#1086' '#1091#1083#1080#1094#1077
    end
    object Button6: TButton
      Left = 80
      Top = 248
      Width = 193
      Height = 41
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      TabOrder = 0
      OnClick = Button6Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 16
      Top = 56
      Width = 297
      Height = 31
      KeyField = #8470'_rubriki'
      ListField = 'Rubrika'
      ListSource = DataModule2.RubrSource
      TabOrder = 1
      OnClick = DBLookupComboBox1Click
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 16
      Top = 168
      Width = 297
      Height = 31
      KeyField = #8470'_street'
      ListField = 'Street'
      ListSource = DataModule2.StreetSourse
      TabOrder = 2
      OnClick = DBLookupComboBox3Click
    end
  end
  object Button3: TButton
    Left = 160
    Top = 280
    Width = 145
    Height = 41
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button5: TButton
    Left = 16
    Top = 280
    Width = 145
    Height = 41
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button9: TButton
    Left = 304
    Top = 280
    Width = 145
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 8
    Top = 8
    Width = 65
    Height = 41
    Caption = #1053#1072#1079#1072#1076
    TabOrder = 7
    OnClick = Button10Click
  end
  object Button2: TButton
    Left = 1128
    Top = 232
    Width = 97
    Height = 41
    Caption = #1055#1077#1095#1072#1090#1100
    Enabled = False
    TabOrder = 8
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 1128
    Top = 279
    Width = 98
    Height = 41
    Caption = #1054#1087#1083#1072#1090#1072
    TabOrder = 9
    OnClick = Button4Click
  end
end
