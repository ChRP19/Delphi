unit Add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfAdd = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Button1: TButton;
    Label7: TLabel;
    ComboBox2: TComboBox;
    Label8: TLabel;
    ComboBox3: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAdd: TfAdd;

implementation

uses Main, ModData, Dolj;

{$R *.dfm}

procedure TfAdd.Button1Click(Sender: TObject);
var
 q, j: integer;
 qwe: Tsprav;
 nalichie: boolean;

begin
  if (Edit1.Text <> '')or (Edit2.Text <> '') or
      (Edit3.Text <> '') or (ComboBox1.Text <> '') or
        (ComboBox2.text <> '') or (MaskEdit1.Text <> '') or (MaskEdit2.Text <> '') or
          (ComboBox3.Text <> '') then
begin
nalichie:=False; 
assignfile(f,fname);
Reset(F);
Seek(f,0);
While not Eof(f) and not(nalichie) do
begin 
read(f,qwe);
if (qwe.fam = Edit1.Text) and (qwe.ime = Edit2.Text) and (qwe.och = Edit3.Text) then
begin
Application.Title:='Ошибка';
ShowMessage('Такая запись уже есть!');
nalichie:=True; 
end; 
end; 
if nalichie=False then 
begin 
              sprav.fam := Edit1.Text;
              sprav.ime := Edit2.Text;
              sprav.och := Edit3.Text;
              sprav.number := MaskEdit1.Text;
              sprav.dolj := ComboBox1.Text;
              sprav.sOtdel := ComboBox3.Text;
              sprav.mail := MaskEdit2.Text;
              sprav.pol := ComboBox2.Text;
              closefile(F);//закрываем файл
AssignFile (F, Fname); //открыие

If not FileExists (Fname) then Rewrite (F)
else begin 
Reset(F); //открытие
Seek(F,FileSize(F));
end; 
Write (F, sprav);
Seek (F, 0);
for j:=1 to FileSize(F) do
begin 
Read (F, sprav);
        fMain.stringgrid1.Cells[0,j]:=sprav.fam;
        fMain.stringgrid1.Cells[1,j]:=sprav.ime;
        fMain.stringgrid1.Cells[2,j]:=sprav.och;
        fMain.stringgrid1.Cells[3,j]:=sprav.number;
        fMain.stringgrid1.Cells[4,j]:=sprav.dolj;
        fMain.stringgrid1.Cells[5,j]:=sprav.sOtdel;
        fMain.stringgrid1.Cells[6,j]:=sprav.mail;
        fMain.stringgrid1.Cells[7,j]:=sprav.pol;

Seek (F, j);
end; 
CloseFile(F);
begin 
AssignFile(F,Fname);
if fileexists (Fname)=true then
begin 
Reset(F);
fMain.stringgrid1.RowCount:=filesize(F)+1;
closefile(F);
End;

AssignFile(F,Fname);
if fileexists (Fname)=true then
begin 
Reset(F);
q:=1;
While not Eof(F) do
begin 
Read(F, sprav);
        fMain.stringgrid1.Cells[0,j]:=sprav.fam;
        fMain.stringgrid1.Cells[1,j]:=sprav.ime;
        fMain.stringgrid1.Cells[2,j]:=sprav.och;
        fMain.stringgrid1.Cells[3,j]:=sprav.number;
        fMain.stringgrid1.Cells[4,j]:=sprav.dolj;
        fMain.stringgrid1.Cells[5,j]:=sprav.sOtdel;
        fMain.stringgrid1.Cells[6,j]:=sprav.mail;
        fMain.stringgrid1.Cells[7,j]:=sprav.pol;
q:=q+1;//приплюсовываем к значению q 1 
End;
// очищаем поля ввода
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  MaskEdit1.Text:='';
  MaskEdit2.Text:='';
  ComboBox1.Text:='';
  ComboBox2.Text:='';
  ComboBox3.Text:='';
closefile(F);//закрываем файл
end; 
end;
end;
end
else
ShowMessage('Заполните все поля');
end;


procedure TfAdd.FormShow(Sender: TObject);
begin
  ComboBox1.Items.LoadFromFile('dolj.txt');
  ComboBox2.Items.LoadFromFile('pol.txt');
  ComboBox3.Items.LoadFromFile('Otdel.txt');
end;

end.
