unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRStringsBand1: TQRStringsBand;
    QRLabel1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRSysData1: TQRSysData;
    QRExpr1: TQRExpr;
    QRMemo2: TQRMemo;
    QRMemo3: TQRMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Main;

{$R *.dfm}

end.
