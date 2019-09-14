object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 462
  Top = 481
  Height = 258
  Width = 780
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=2gis.accdb;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.ACE.OLEDB.12.0'
    Left = 40
    Top = 16
  end
  object FSourse: TDataSource
    DataSet = FTable
    Left = 112
    Top = 64
  end
  object FTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'F_F'
    Left = 112
    Top = 16
  end
  object SotrudTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Sotrud'
    Left = 184
    Top = 16
  end
  object SotrudSourse: TDataSource
    DataSet = SotrudTable
    Left = 184
    Top = 64
  end
  object CitySourse: TDataSource
    DataSet = CityTable
    Left = 248
    Top = 64
  end
  object DoljSourse: TDataSource
    DataSet = DoljTable
    Left = 320
    Top = 64
  end
  object CityTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'City'
    Left = 248
    Top = 16
  end
  object DoljTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Dolj'
    Left = 320
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT F_F.id_f_f, Type.Type, City.City, Street.Street, F_F.dom,' +
        ' F_F.etaj, F_F.['#8470'_office], F_F.telefon'
      
        'FROM Street INNER JOIN (Type INNER JOIN (City INNER JOIN F_F ON ' +
        'City.['#8470'_city] = F_F.[City]) ON Type.['#8470'_t] = F_F.[type]) ON Stree' +
        't.['#8470'_street] = F_F.[Street];')
    Left = 24
    Top = 120
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery1
    Left = 24
    Top = 168
  end
  object OtdelTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Otdel'
    Left = 392
    Top = 16
  end
  object StreetTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Street'
    Left = 464
    Top = 16
  end
  object TypeTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Type'
    Left = 536
    Top = 16
  end
  object OtdelSourse: TDataSource
    DataSet = OtdelTable
    Left = 392
    Top = 64
  end
  object StreetSourse: TDataSource
    DataSet = StreetTable
    Left = 464
    Top = 64
  end
  object TypeSourse: TDataSource
    DataSet = TypeTable
    Left = 536
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 96
    Top = 168
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Sotrud.['#8470'_sotr], Sotrud.Fam, Sotrud.Name, Sotrud.Och, Sot' +
        'rud.Date_B, Sotrud.Telefon, Sotrud.Email, F_F.id_f_f, Otdel.Otde' +
        'l, Dolj.Dolj, Sotrud.foto'
      
        'FROM F_F INNER JOIN (Otdel INNER JOIN (Dolj INNER JOIN Sotrud ON' +
        ' Dolj.['#8470'_dolj] = Sotrud.['#8470'_dolj]) ON Otdel.['#8470'_otdel] = Sotrud.['#8470 +
        '_otdel]) ON F_F.[id_f_f] = Sotrud.[id_f_f];')
    Left = 96
    Top = 120
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Clients.INN, Clients.Name_org, Rubriki.Rubrika, F_F.id_f_' +
        'f, Street.Street, Clients.['#8470'_doma], Clients.Telefon, Clients.Sit' +
        'e, Clients.Email'
      
        'FROM Street INNER JOIN (F_F INNER JOIN (Rubriki INNER JOIN Clien' +
        'ts ON Rubriki.['#8470'_rubriki] = Clients.[Rubrika]) ON F_F.[id_f_f] =' +
        ' Clients.[id_f_f]) ON Street.['#8470'_street] = Clients.[Street];'
      '')
    Left = 168
    Top = 120
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery3
    Left = 168
    Top = 168
  end
  object ClientsSource: TDataSource
    DataSet = ClientsTable
    Left = 608
    Top = 64
  end
  object ClientsTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Clients'
    Left = 608
    Top = 16
  end
  object RubrTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Rubriki'
    Left = 320
    Top = 120
  end
  object RubrSource: TDataSource
    DataSet = RubrTable
    Left = 320
    Top = 168
  end
  object OplataSource: TDataSource
    DataSet = OplataTable
    Left = 392
    Top = 168
  end
  object OplataTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Var_oplati'
    Left = 392
    Top = 120
  end
  object BankTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Banks'
    Left = 464
    Top = 120
  end
  object BankSource: TDataSource
    DataSet = BankTable
    Left = 464
    Top = 168
  end
  object UchOplatTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Uchet_oplati'
    Left = 536
    Top = 120
  end
  object UchOplatSource: TDataSource
    DataSet = UchOplatTable
    Left = 536
    Top = 168
  end
  object MesSource: TDataSource
    DataSet = MesTable
    Left = 616
    Top = 168
  end
  object MesTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Mes'
    Left = 616
    Top = 120
  end
  object RekvTable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Rekv_F'
    Left = 680
    Top = 16
  end
  object RekvSource: TDataSource
    DataSet = RekvTable
    Left = 680
    Top = 64
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Uchet_oplati.kod_uch_oplati, Var_oplati.Var_oplati, Uchet' +
        '_oplati.INN_Client, Clients.Name_org, Rubriki.Rubrika, Uchet_opl' +
        'ati.Data_oplati, Uchet_oplati.Summa, Uchet_oplati.Mes, City.City'
      
        'FROM ((City INNER JOIN F_F ON City.['#8470'_city] = F_F.[City]) INNER ' +
        'JOIN (Rubriki INNER JOIN Clients ON Rubriki.['#8470'_rubriki] = Client' +
        's.[Rubrika]) ON F_F.[id_f_f] = Clients.[id_f_f]) INNER JOIN (Var' +
        '_oplati INNER JOIN Uchet_oplati ON Var_oplati.['#8470'_oplati] = Uchet' +
        '_oplati.['#8470'_oplati]) ON Clients.[INN] = Uchet_oplati.[INN_Client]' +
        ';')
    Left = 240
    Top = 120
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery4
    Left = 240
    Top = 168
  end
end
