object Form2: TForm2
  Left = 128
  Top = 289
  BorderStyle = bsSingle
  Caption = #1059#1095#1077#1090' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1092#1080#1083#1080#1072#1083#1086#1074' '#1044#1091#1073#1083#1043#1048#1057' - '#1054#1087#1083#1072#1090#1072
  ClientHeight = 524
  ClientWidth = 1304
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 229
    Width = 1304
    Height = 295
    Align = alBottom
    DataSource = DataModule2.DataSource3
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'City'
        Title.Caption = #1043#1086#1088#1086#1076
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INN_Client'
        Title.Caption = #1048#1053#1053
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name_org'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_oplati'
        Title.Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 99
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Rubrika'
        Title.Caption = #1056#1091#1073#1088#1080#1082#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 407
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Var_oplati'
        Title.Caption = #1042#1072#1088#1080#1072#1085#1090' '#1086#1087#1083#1072#1090#1099
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 178
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Summa'
        Title.Caption = #1057#1091#1084#1084#1072', '#1088#1091#1073'.'
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mes'
        Title.Caption = #1052#1077#1089#1103#1094
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 92
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 712
    Top = 176
    Width = 97
    Height = 40
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 8
    Width = 665
    Height = 209
    Caption = ' '#1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '
    TabOrder = 2
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 10
      Height = 23
      Caption = #1057
    end
    object Label3: TLabel
      Left = 192
      Top = 56
      Width = 22
      Height = 23
      Caption = #1055#1086
    end
    object DateTimePicker1: TDateTimePicker
      Left = 16
      Top = 80
      Width = 121
      Height = 31
      Date = 42892.347813043980000000
      Time = 42892.347813043980000000
      Enabled = False
      TabOrder = 0
      OnChange = DateTimePicker1Change
    end
    object DateTimePicker2: TDateTimePicker
      Left = 192
      Top = 80
      Width = 121
      Height = 31
      Date = 42892.347813043980000000
      Time = 42892.347813043980000000
      Enabled = False
      TabOrder = 1
      OnChange = DateTimePicker1Change
    end
    object Button2: TButton
      Left = 520
      Top = 144
      Width = 113
      Height = 41
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 32
      Width = 169
      Height = 17
      Caption = #1055#1086' '#1076#1072#1090#1077' '#1086#1087#1083#1072#1090#1077
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 16
      Top = 152
      Width = 297
      Height = 31
      Enabled = False
      KeyField = 'id_f_f'
      ListField = 'City'
      ListSource = DataModule2.DataSource6
      TabOrder = 4
      OnClick = DateTimePicker1Change
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 120
      Width = 121
      Height = 17
      Caption = #1055#1086' '#1075#1086#1088#1086#1076#1091
      TabOrder = 5
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 336
      Top = 32
      Width = 113
      Height = 25
      Caption = #1055#1086' '#1088#1091#1073#1088#1080#1082#1077
      TabOrder = 6
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 336
      Top = 120
      Width = 113
      Height = 17
      Caption = #1055#1086' '#1084#1077#1089#1103#1094#1091
      TabOrder = 7
      OnClick = CheckBox4Click
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 336
      Top = 80
      Width = 297
      Height = 31
      Enabled = False
      KeyField = #8470'_rubriki'
      ListField = 'Rubrika'
      ListSource = DataModule2.RubrSource
      TabOrder = 8
      OnClick = DateTimePicker1Change
    end
    object DateTimePicker3: TDateTimePicker
      Left = 336
      Top = 152
      Width = 153
      Height = 31
      Date = 42906.631122303240000000
      Format = 'MMMM yyyy'
      Time = 42906.631122303240000000
      DateFormat = dfLong
      DateMode = dmUpDown
      Enabled = False
      TabOrder = 9
      OnChange = DateTimePicker1Change
    end
  end
  object Button3: TButton
    Left = 712
    Top = 136
    Width = 97
    Height = 40
    Caption = #1055#1077#1095#1072#1090#1100
    Enabled = False
    TabOrder = 3
    OnClick = Button3Click
  end
end
