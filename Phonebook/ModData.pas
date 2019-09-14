unit ModData;

interface

uses
  SysUtils, Classes;

type
  Tsprav = record
    fam, ime, och, dolj, number, mail, pol, sOtdel : string[50];
  end;

type
  TDataModule1 = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;
  f : File of Tsprav;
  sprav : Tsprav;
  fam, ime, och, dolj, number, mail, pol, sOtdel : string[50];
  Fname: string;
  redak, dostup, diagr: boolean;
  Col, Row, Pos:integer;


implementation

{$R *.dfm}

end.
 