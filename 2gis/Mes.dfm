object fMes: TfMes
  Left = 841
  Top = 261
  Width = 343
  Height = 335
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080' - '#1052#1077#1089#1103#1094#1099
  Color = clMoneyGreen
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Calibri'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 23
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 185
    Height = 200
    DataSource = DataModule2.MesSource
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
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
        FieldName = 'mes'
        Title.Caption = #1052#1077#1089#1103#1094
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -19
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 185
    Height = 31
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 216
    Top = 8
    Width = 100
    Height = 35
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Enabled = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button2: TButton
    Left = 216
    Top = 120
    Width = 100
    Height = 35
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Button3: TButton
    Left = 216
    Top = 64
    Width = 100
    Height = 35
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 256
    Width = 184
    Height = 41
    DataSource = DataModule2.MesSource
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
  end
end
