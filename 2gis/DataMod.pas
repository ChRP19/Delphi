unit DataMod;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule2 = class(TDataModule)
    ADOConnection1: TADOConnection;
    FSourse: TDataSource;
    FTable: TADOTable;
    SotrudTable: TADOTable;
    SotrudSourse: TDataSource;
    CitySourse: TDataSource;
    DoljSourse: TDataSource;
    CityTable: TADOTable;
    DoljTable: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource6: TDataSource;
    OtdelTable: TADOTable;
    StreetTable: TADOTable;
    TypeTable: TADOTable;
    OtdelSourse: TDataSource;
    StreetSourse: TDataSource;
    TypeSourse: TDataSource;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource2: TDataSource;
    ClientsSource: TDataSource;
    ClientsTable: TADOTable;
    RubrTable: TADOTable;
    RubrSource: TDataSource;
    OplataSource: TDataSource;
    OplataTable: TADOTable;
    BankTable: TADOTable;
    BankSource: TDataSource;
    UchOplatTable: TADOTable;
    UchOplatSource: TDataSource;
    MesSource: TDataSource;
    MesTable: TADOTable;
    RekvTable: TADOTable;
    RekvSource: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource3: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

uses Main;

{$R *.dfm}

end.
