program Phonebook;

uses
  Forms,
  auth in 'auth.pas' {fAuth},
  Main in 'Main.pas' {fMain},
  Create in 'Create.pas' {fCreate},
  ModData in 'ModData.pas' {DataModule1: TDataModule},
  Add in 'Add.pas' {fAdd},
  Dolj in 'Dolj.pas' {fDolj},
  Red in 'Red.pas' {fRed},
  Unit1 in 'Unit1.pas' {Form1},
  Pol in 'Pol.pas' {fPol},
  Otdel in 'Otdel.pas' {fOtdel},
  Pass in 'Pass.pas' {fPass},
  Diag in 'Diag.pas' {fDiag};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfAuth, fAuth);
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfCreate, fCreate);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfAdd, fAdd);
  Application.CreateForm(TfDolj, fDolj);
  Application.CreateForm(TfRed, fRed);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfPol, fPol);
  Application.CreateForm(TfOtdel, fOtdel);
  Application.CreateForm(TfPass, fPass);
  Application.CreateForm(TfDiag, fDiag);
  Application.Run;
end.
