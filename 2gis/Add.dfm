object fAdd: TfAdd
  Left = 653
  Top = 145
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1060#1080#1083#1080#1072#1083#1099' - '#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
  ClientHeight = 486
  ClientWidth = 792
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 486
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1060#1080#1083#1080#1072#1083
      object Image1: TImage
        Left = 80
        Top = 112
        Width = 103
        Height = 105
        Stretch = True
        Visible = False
      end
      object Label2: TLabel
        Left = 16
        Top = 8
        Width = 31
        Height = 23
        Caption = #1042#1080#1076
      end
      object Label3: TLabel
        Left = 232
        Top = 88
        Width = 46
        Height = 23
        Caption = #1043#1086#1088#1086#1076
      end
      object Label4: TLabel
        Left = 232
        Top = 160
        Width = 47
        Height = 23
        Caption = #1059#1083#1080#1094#1072
      end
      object Label5: TLabel
        Left = 432
        Top = 160
        Width = 66
        Height = 23
        Caption = #8470' '#1076#1086#1084#1072
      end
      object Label6: TLabel
        Left = 16
        Top = 280
        Width = 39
        Height = 23
        Caption = #1069#1090#1072#1078
      end
      object Label7: TLabel
        Left = 200
        Top = 280
        Width = 107
        Height = 23
        Caption = #1053#1086#1084#1077#1088' '#1086#1092#1080#1089#1072
      end
      object Label1: TLabel
        Left = 360
        Top = 280
        Width = 67
        Height = 23
        Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      object Button1: TButton
        Left = 120
        Top = 400
        Width = 160
        Height = 41
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1082#1072#1088#1090#1091
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = Button1Click
      end
      object DBImage1: TDBImage
        Left = 16
        Top = 80
        Width = 199
        Height = 185
        DataField = 'map'
        DataSource = DataModule2.FSourse
        ReadOnly = True
        Stretch = True
        TabOrder = 13
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 312
        Width = 175
        Height = 31
        DataField = 'etaj'
        DataSource = DataModule2.FSourse
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        OnKeyPress = DBEdit2KeyPress
      end
      object DBEdit3: TDBEdit
        Left = 432
        Top = 192
        Width = 63
        Height = 31
        DataField = 'dom'
        DataSource = DataModule2.FSourse
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 200
        Top = 312
        Width = 151
        Height = 31
        DataField = #8470'_office'
        DataSource = DataModule2.FSourse
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 16
        Top = 40
        Width = 199
        Height = 31
        DataField = 'type'
        DataSource = DataModule2.FSourse
        Enabled = False
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Calibri'
        Font.Style = []
        KeyField = #8470'_t'
        ListField = 'Type'
        ListSource = DataModule2.TypeSourse
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 232
        Top = 120
        Width = 151
        Height = 31
        DataField = 'City'
        DataSource = DataModule2.FSourse
        Enabled = False
        KeyField = #8470'_city'
        ListField = 'City'
        ListSource = DataModule2.CitySourse
        ReadOnly = True
        TabOrder = 1
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 232
        Top = 192
        Width = 151
        Height = 31
        DataField = 'Street'
        DataSource = DataModule2.FSourse
        Enabled = False
        KeyField = #8470'_street'
        ListField = 'Street'
        ListSource = DataModule2.StreetSourse
        ReadOnly = True
        TabOrder = 2
      end
      object Button3: TButton
        Left = 360
        Top = 360
        Width = 160
        Height = 41
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 8
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 200
        Top = 360
        Width = 160
        Height = 41
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 7
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 280
        Top = 400
        Width = 160
        Height = 41
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Enabled = False
        TabOrder = 11
        OnClick = Button5Click
      end
      object MaskEdit1: TMaskEdit
        Left = 360
        Top = 312
        Width = 123
        Height = 31
        EditMask = '!\(999\)999-9999;1;_'
        MaxLength = 13
        ReadOnly = True
        TabOrder = 6
        Text = '(   )   -    '
      end
      object Button6: TButton
        Left = 440
        Top = 400
        Width = 160
        Height = 41
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        Enabled = False
        TabOrder = 10
        OnClick = Button6Click
      end
      object Button9: TButton
        Left = 384
        Top = 120
        Width = 33
        Height = 31
        Caption = '...'
        TabOrder = 14
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 384
        Top = 192
        Width = 33
        Height = 31
        Caption = '...'
        TabOrder = 15
        OnClick = Button10Click
      end
      object DBEdit1: TDBEdit
        Left = 256
        Top = 40
        Width = 57
        Height = 31
        DataField = 'id_f_f'
        DataSource = DataModule2.FSourse
        TabOrder = 16
        Visible = False
      end
      object Button12: TButton
        Left = 3
        Top = 400
        Width = 90
        Height = 41
        Caption = #1047#1072#1082#1088#1099#1090#1100
        TabOrder = 12
        OnClick = Button12Click
      end
      object GroupBox1: TGroupBox
        Left = 528
        Top = 24
        Width = 241
        Height = 321
        Caption = ' '#1056#1077#1082#1074#1080#1079#1080#1090#1099' '
        TabOrder = 17
        object Label16: TLabel
          Left = 16
          Top = 88
          Width = 122
          Height = 23
          Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1081' '#1089#1095#1077#1090
        end
        object Label17: TLabel
          Left = 16
          Top = 24
          Width = 38
          Height = 23
          Caption = #1041#1072#1085#1082
        end
        object Label18: TLabel
          Left = 16
          Top = 224
          Width = 32
          Height = 23
          Caption = #1041#1048#1050
        end
        object Label19: TLabel
          Left = 16
          Top = 160
          Width = 36
          Height = 23
          Caption = #1048#1053#1053
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 16
          Top = 48
          Width = 177
          Height = 31
          DataField = 'Kod_banka'
          DataSource = DataModule2.RekvSource
          Enabled = False
          KeyField = 'Kod_banka'
          ListField = 'Nazv_banka'
          ListSource = DataModule2.BankSource
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit9: TDBEdit
          Left = 16
          Top = 120
          Width = 177
          Height = 31
          DataField = 'raschet'
          DataSource = DataModule2.RekvSource
          MaxLength = 21
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit10: TDBEdit
          Left = 16
          Top = 184
          Width = 177
          Height = 31
          DataField = 'INN_f'
          DataSource = DataModule2.RekvSource
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit11: TDBEdit
          Left = 16
          Top = 248
          Width = 177
          Height = 31
          DataField = 'BIK'
          DataSource = DataModule2.RekvSource
          ReadOnly = True
          TabOrder = 3
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
      ImageIndex = 1
      object Image2: TImage
        Left = 64
        Top = 56
        Width = 101
        Height = 105
        Stretch = True
        Visible = False
      end
      object Label8: TLabel
        Left = 232
        Top = 16
        Width = 74
        Height = 23
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label9: TLabel
        Left = 384
        Top = 256
        Width = 49
        Height = 23
        Caption = #1054#1090#1076#1077#1083
      end
      object Label10: TLabel
        Left = 232
        Top = 136
        Width = 123
        Height = 23
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
      end
      object Label11: TLabel
        Left = 560
        Top = 16
        Width = 72
        Height = 23
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      end
      object Label12: TLabel
        Left = 392
        Top = 136
        Width = 41
        Height = 23
        Caption = 'Email'
      end
      object Label13: TLabel
        Left = 560
        Top = 136
        Width = 67
        Height = 23
        Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      object Label14: TLabel
        Left = 392
        Top = 16
        Width = 34
        Height = 23
        Caption = #1048#1084#1103
      end
      object Label15: TLabel
        Left = 24
        Top = 256
        Width = 89
        Height = 23
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      end
      object DBImage2: TDBImage
        Left = 16
        Top = 16
        Width = 197
        Height = 185
        DataField = 'foto'
        DataSource = DataModule2.SotrudSourse
        ReadOnly = True
        Stretch = True
        TabOrder = 10
      end
      object DBEdit5: TDBEdit
        Left = 392
        Top = 48
        Width = 151
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
      end
      object DBEdit6: TDBEdit
        Left = 232
        Top = 48
        Width = 143
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
        TabOrder = 0
      end
      object DBEdit7: TDBEdit
        Left = 560
        Top = 48
        Width = 149
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
        TabOrder = 2
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 24
        Top = 296
        Width = 279
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
        TabOrder = 6
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 384
        Top = 296
        Width = 287
        Height = 31
        DataField = #8470'_otdel'
        DataSource = DataModule2.SotrudSourse
        Enabled = False
        KeyField = #8470'_otdel'
        ListField = 'Otdel'
        ListSource = DataModule2.OtdelSourse
        ReadOnly = True
        TabOrder = 7
      end
      object MaskEdit2: TMaskEdit
        Left = 560
        Top = 168
        Width = 129
        Height = 31
        EditMask = '!\(999\)999-9999;1;_'
        MaxLength = 13
        ReadOnly = True
        TabOrder = 5
        Text = '(   )   -    '
      end
      object DBEdit8: TDBEdit
        Left = 392
        Top = 168
        Width = 153
        Height = 31
        DataField = 'Email'
        DataSource = DataModule2.SotrudSourse
        ReadOnly = True
        TabOrder = 4
      end
      object DateTimePicker1: TDateTimePicker
        Left = 232
        Top = 168
        Width = 145
        Height = 31
        Date = 42852.021529733790000000
        Time = 42852.021529733790000000
        Enabled = False
        TabOrder = 3
      end
      object Button13: TButton
        Left = 80
        Top = 376
        Width = 145
        Height = 41
        Caption = #1055#1088#1080#1085#1103#1090#1100
        Enabled = False
        TabOrder = 8
        OnClick = Button13Click
      end
      object Button14: TButton
        Left = 224
        Top = 376
        Width = 145
        Height = 41
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 9
        OnClick = Button14Click
      end
      object Button2: TButton
        Left = 368
        Top = 376
        Width = 145
        Height = 41
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1086#1090#1086
        TabOrder = 11
        OnClick = Button2Click
      end
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 208
  end
end
