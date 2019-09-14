unit Diag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls;

type
  TfDiag = class(TForm)
    Chart1: TChart;
    Series1: TPieSeries;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDiag: TfDiag;

implementation

uses Main, ModData;

{$R *.dfm}








procedure TfDiag.Button1Click(Sender: TObject);
var
 b, t, m,  r, i: integer;
begin
diagr := false;
b:=0;
t:=0;
m:=0;
r:=0;
if diagr = false then Button1.Enabled := false;
  assignfile(f, FName);
  reset(f);
  for i:=1 to FileSize(f) do
    begin
      Read (f, sprav);
      begin

//��������� +1 � �������� ���������� ������ ��� ����� ��������� ������ � ������������ ���������� ������� �����

        if sprav.sOtdel='�����������' then b:=b+1;
        if sprav.sOtdel='����� ������������ ������������ �������������' then t:=t+1;
        if sprav.sOtdel='����� �������� ������ ������������' then m:=m+1;
        if sprav.sOtdel='����� �������' then r:=r+1;

      end;

      end;

  Chart1.SeriesList[0].Add(b,'�����������',clyellow);
  Chart1.SeriesList[0].Add(t,'����� ������������ ������������ �������������',clblue);
  Chart1.SeriesList[0].Add(m,'����� �������� ������ ������������',cllime);
  Chart1.SeriesList[0].Add(r,'����� �������',clred);
  closefile(F);//��������� ����


end;

procedure TfDiag.FormCreate(Sender: TObject);
begin
diagr := true;
end;

end.
