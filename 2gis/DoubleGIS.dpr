program DoubleGIS;

uses
  Forms,
  Auth in 'Auth.pas' {fAuth},
  DataMod in 'DataMod.pas' {DataModule2: TDataModule},
  Main in 'Main.pas' {fMain},
  Add in 'Add.pas' {fAdd},
  City in 'City.pas' {fCity},
  Street in 'Street.pas' {fStreet},
  Otdel in 'Otdel.pas' {fOtdel},
  Dolj in 'Dolj.pas' {fDolj},
  Pass in 'Pass.pas' {fPass},
  Unit1 in 'Unit1.pas' {Form1},
  Sotrud in 'Sotrud.pas' {fSotrud},
  SAdd in 'SAdd.pas' {fSAdd},
  Clients in 'Clients.pas' {fClients},
  CAdd in 'CAdd.pas' {fCAdd},
  Rubr in 'Rubr.pas' {fRubr},
  Oplata in 'Oplata.pas' {fOplata},
  Glav in 'Glav.pas' {fGlav},
  Bank in 'Bank.pas' {fBank},
  UchOplat in 'UchOplat.pas' {fUchOplat},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Consts in 'Consts.pas',
  Unit7 in 'Unit7.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Учет клиентов филиалов ДубльГИС';
  Application.CreateForm(TfAuth, fAuth);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfAdd, fAdd);
  Application.CreateForm(TfCity, fCity);
  Application.CreateForm(TfStreet, fStreet);
  Application.CreateForm(TfOtdel, fOtdel);
  Application.CreateForm(TfDolj, fDolj);
  Application.CreateForm(TfPass, fPass);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfSotrud, fSotrud);
  Application.CreateForm(TfSAdd, fSAdd);
  Application.CreateForm(TfClients, fClients);
  Application.CreateForm(TfCAdd, fCAdd);
  Application.CreateForm(TfRubr, fRubr);
  Application.CreateForm(TfOplata, fOplata);
  Application.CreateForm(TfGlav, fGlav);
  Application.CreateForm(TfBank, fBank);
  Application.CreateForm(TfUchOplat, fUchOplat);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
