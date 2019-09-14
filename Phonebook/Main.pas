unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, StdCtrls, Menus, XPMan, jpeg, ComCtrls, Buttons;

type
  TfMain = class(TForm)
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    GroupBox1: TGroupBox;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    OpenDialog1: TOpenDialog;
    N12: TMenuItem;
    XPManifest1: TXPManifest;
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    G1: TMenuItem;
    N13: TMenuItem;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    Button1: TButton;
    N18: TMenuItem;
    N19: TMenuItem;
    Button2: TButton;
    N22: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N8Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

uses Create, ModData, Add, Dolj, auth, Red, Unit1, Pol, Otdel, Pass, Diag;

{$R *.dfm}

procedure TfMain.FormCreate(Sender: TObject);
var
  i: integer;
begin

    for i:=0 to stringgrid1.ColCount do
    stringgrid1.Cols[i].Clear;
    stringgrid1.Cells[0,0]:='Фамилия';
    stringgrid1.Cells[1,0]:='Имя';
    stringgrid1.Cells[2,0]:='Отчество';
    stringgrid1.Cells[3,0]:='Номер';
    stringgrid1.Cells[4,0]:='Должность';
    stringgrid1.Cells[5,0]:='Отдел';
    stringgrid1.Cells[6,0]:='E-mail';
    stringgrid1.Cells[7,0]:='Пол';

end;

procedure TfMain.N2Click(Sender: TObject);
begin
  fCreate.ShowModal;
end;

procedure TfMain.N3Click(Sender: TObject);
var
  i, j : integer;
begin
  //очистка таблицы
  for i := 0 to StringGrid1.ColCount do
    for j := 1 to StringGrid1.RowCount do
      begin
        stringGrid1.Cells[i,j] := '';
      end;

  OpenDialog1.Filter:='*.dat|*.dat';   //открытие только формата (*.Dat)

//заполнение таблицы из файла
if OpenDialog1.Execute then
 begin
  Fname:=OpenDialog1.FileName;
  assignfile(f,Fname);
  reset(f);
  for i:=1 to FileSize(F) do
    begin
      Read (f, sprav);
        stringgrid1.Cells[0,i]:=sprav.fam;
        stringgrid1.Cells[1,i]:=sprav.ime;
        stringgrid1.Cells[2,i]:=sprav.och;
        stringgrid1.Cells[3,i]:=sprav.number;
        stringgrid1.Cells[4,i]:=sprav.dolj;
        stringgrid1.Cells[5,i]:=sprav.sOtdel;
        stringgrid1.Cells[6,i]:=sprav.mail;
        stringgrid1.Cells[7,i]:=sprav.pol;
        stringgrid1.RowCount:=filesize(f)+1;
      Seek (f, i);
    end;
  CloseFile(f);
  StringGrid1.Visible := true;
  GroupBox1.Visible := true;
  GroupBox2.Visible := true;
  Image1.Visible := false;
  N5.Enabled := true;
  N9.Enabled := true;
  N22.Visible := true;
  if dostup = false then GroupBox3.Visible := false
  else GroupBox3.Visible := true;
  fMain.Refresh;
end;
end;

procedure TfMain.N4Click(Sender: TObject);
var
  i, j : integer;
begin
if StringGrid1.Visible = false then ShowMessage('Файл не открыт!')
 else
  if MessageDlg('Очистить файл?', mtWarning,[mbYes,mbNo],0)=mrYes then
    begin
      AssignFile (f, Fname);
      Reset (f);
      for i:=0 to 16 do
        for j:=1 to FileSize (f) do StringGrid1.Cells [i,j]:='';
          Seek (f, 0);
          Truncate (f);
          CloseFile (f);
          begin
            Reset(f);
            fMain.stringgrid1.RowCount:=2;
            closefile(f);
          end;
    end;

end;
procedure TfMain.N12Click(Sender: TObject);
begin
  fDolj.ListBox1.Items.LoadFromFile('dolj.txt');
  fDolj.Showmodal;
  stringgrid1.Refresh;
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fAuth.Close;
end;

procedure TfMain.N9Click(Sender: TObject);
Var pr:textFile;
begin
  assignFile(pr,'print.txt');
  Rewrite (pr) ;//перезаписываем
  Writeln(pr,'Фамилия      -  ',stringgrid1.cells[0,stringgrid1.row]);
  Writeln(pr,'Имя             -  ',stringgrid1.cells[1,stringgrid1.row]);
  Writeln(pr,'Отчество     -  ',stringgrid1.cells[2,stringgrid1.row]);
  Writeln(pr,'Телефон   -  ', stringgrid1.cells[3,stringgrid1.row]);
  Writeln(pr,'Должность      -  ', stringgrid1.cells[4,stringgrid1.row]);
  Writeln(pr,'Отдел        -  ', stringgrid1.cells[5,stringgrid1.row]);
  Writeln(pr,'E-mail             -  ', stringgrid1.cells[6,stringgrid1.row]);
  Writeln(pr,'Пол            -  ', stringgrid1.cells[7,stringgrid1.row]);

CloseFile (pr);
Form1.QRStringsBand1.Items.Clear;
Form1.QRStringsband1.items.LoadFromFile('print.txt');
Form1.QRExpr1.AutoSize:=false;
Form1.QRExpr1.AutoStretch:=true;
Form1.QRExpr1.Left:=0;
Form1.QRExpr1.Width:=Form1.QRStringsBand1.width;
Form1.QuickRep1.Preview;
end;

procedure TfMain.N8Click(Sender: TObject);
var
  Nstr,i,j:integer;
begin
  Nstr:=stringgrid1.Row;
  AssignFile(f, Fname);
  rewrite(f);
if MessageDlg('Вы действительно хотите удалить?', mtWarning,[mbYes,mbNo],0)=mrYes then
for i:=1 to Nstr-1 do
  begin
    sprav.fam := stringgrid1.cells[0,i];
    sprav.ime := stringgrid1.cells[1,i];
    sprav.och := stringgrid1.cells[2,i];
    sprav.number := stringgrid1.cells[3,i];
    sprav.dolj := stringgrid1.cells[4,i];
    sprav.sOtdel := stringgrid1.cells[5,i];
    sprav.mail := stringgrid1.cells[6,i];
    sprav.pol := stringgrid1.cells[7,i];
    Write(f, sprav);
  end;
for i:=Nstr+1 to stringgrid1.rowcount-1 do
  begin
    sprav.fam := stringgrid1.cells[0,i];
    sprav.ime := stringgrid1.cells[1,i];
    sprav.och := stringgrid1.cells[2,i];
    sprav.number := stringgrid1.cells[3,i];
    sprav.dolj := stringgrid1.cells[4,i];
    sprav.sOtdel := stringgrid1.cells[5,i];
    sprav.mail := stringgrid1.cells[6,i];
    sprav.pol := stringgrid1.cells[7,i];
    Write(f, sprav);
  end;
  CloseFile(f);
  Application.MessageBox('Запись удалена!', 'Удаление');
    begin
      Reset(f);//перезапускаем FT
      stringgrid1.RowCount:=filesize(f)+1;//к размеру файла +1
      closefile(f);//закрываем файл
    end;
  AssignFile(f,Fname);
  if fileexists (Fname)=true then
    begin
      Reset(f);
      While not Eof(f) do
        begin
          Read(f, sprav);
          sprav.fam := stringgrid1.cells[0,i];
          sprav.ime := stringgrid1.cells[1,i];
          sprav.och := stringgrid1.cells[2,i];
          sprav.number := stringgrid1.cells[3,i];
          sprav.dolj := stringgrid1.cells[4,i];
          sprav.sOtdel := stringgrid1.cells[5,i];
          sprav.mail := stringgrid1.cells[6,i];
          sprav.pol := stringgrid1.cells[7,i];
        end;


  //очистка таблицы
  for i := 0 to StringGrid1.ColCount do
    for j := 1 to StringGrid1.RowCount do
      begin
        stringGrid1.Cells[i,j] := '';
      end;

//заполнение таблицы из файла
  reset(f);
  seek(f, 0);
  for i:=1 to FileSize(F) do
    begin
      Read (f, sprav);
        stringgrid1.Cells[0,i]:=sprav.fam;
        stringgrid1.Cells[1,i]:=sprav.ime;
        stringgrid1.Cells[2,i]:=sprav.och;
        stringgrid1.Cells[3,i]:=sprav.number;
        stringgrid1.Cells[4,i]:=sprav.dolj;
        stringgrid1.Cells[5,i]:=sprav.sOtdel;
        stringgrid1.Cells[6,i]:=sprav.mail;
        stringgrid1.Cells[7,i]:=sprav.pol;
      Seek (f, i);
    end;
  closefile(f);
  end;
end;

procedure TfMain.N7Click(Sender: TObject);
begin
 if redak = true then redak:=false else
        begin
          redak:=true;
          ShowMessage ('Выберите запись для редактирования');
        end;
end;

procedure TfMain.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := FormatDateTime('dd.mm.yyyy', Date);
  StatusBar1.Panels[1].Text := FormatDateTime('hh:mm:ss', Time);
end;

procedure TfMain.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: integer;
begin
  if redak = true then
    begin
      StringGrid1.MouseToCell(X, Y, Col, Row);
      fam:=StringGrid1.Cells [0,Row];
      ime:=stringgrid1.Cells [1, Row];
      och := StringGrid1.Cells [2, Row];
      number:= stringgrid1.Cells [3,Row];
      sprav.dolj:= StringGrid1.Cells [4, Row];
      sOtdel := stringgrid1.Cells [5,Row];
      mail:= stringgrid1.Cells [6,Row];
      sprav.pol := StringGrid1.Cells [7, Row];

      fRed.Show;
      fRed.Edit1.Text := fMain.StringGrid1.cells[0,Row];
      fRed.Edit2.Text := fMain.StringGrid1.cells[1,Row];
      fRed.Edit3.Text := fMain.StringGrid1.cells[2,Row];
      fRed.MaskEdit1.Text := fMain.StringGrid1.cells[3,Row];
      fRed.ComboBox2.Text := fMain.StringGrid1.cells[4,Row];
      fRed.ComboBox3.Text := fMain.StringGrid1.cells[5,Row];
      fRed.MaskEdit2.Text := fMain.StringGrid1.cells[6,Row];
      fRed.ComboBox1.Text := fMain.StringGrid1.cells[7,Row];
    end;
end;


procedure TfMain.N6Click(Sender: TObject);
begin
  fAdd.ShowModal;
end;

procedure TfMain.G1Click(Sender: TObject);
begin
  fPol.ListBox1.Items.LoadFromFile('pol.txt');
  fPol.Showmodal;
end;

procedure TfMain.N13Click(Sender: TObject);
begin
  fOtdel.ListBox1.Items.LoadFromFile('Otdel.txt');
  fOtdel.ShowModal;
end;

procedure TfMain.N16Click(Sender: TObject);
begin
fAuth.Visible := true;
fMain.Hide;
fAuth.Edit2.Text := '';
end;

procedure TfMain.N17Click(Sender: TObject);
begin
fAuth.Close;
end;

procedure TfMain.BitBtn1Click(Sender: TObject);
begin
fAdd.ShowModal;
end;

procedure TfMain.BitBtn2Click(Sender: TObject);
begin
 if redak = true then redak:=false else
        begin
          redak:=true;
          ShowMessage ('Выберите запись для редактирования');
        end;
end;

procedure TfMain.BitBtn3Click(Sender: TObject);
var
  Nstr,i,j:integer;
begin
if MessageDlg('Вы действительно хотите удалить?', mtWarning,[mbYes,mbNo],0)=mrYes then
begin
  Nstr:=stringgrid1.Row;
  AssignFile(f, Fname);
  rewrite(f);

for i:=1 to Nstr-1 do
  begin
    sprav.fam := stringgrid1.cells[0,i];
    sprav.ime := stringgrid1.cells[1,i];
    sprav.och := stringgrid1.cells[2,i];
    sprav.number := stringgrid1.cells[3,i];
    sprav.dolj := stringgrid1.cells[4,i];
    sprav.sOtdel := stringgrid1.cells[5,i];
    sprav.mail := stringgrid1.cells[6,i];
    sprav.pol := stringgrid1.cells[7,i];
    Write(f, sprav);
  end;
for i:=Nstr+1 to stringgrid1.rowcount-1 do
  begin
    sprav.fam := stringgrid1.cells[0,i];
    sprav.ime := stringgrid1.cells[1,i];
    sprav.och := stringgrid1.cells[2,i];
    sprav.number := stringgrid1.cells[3,i];
    sprav.dolj := stringgrid1.cells[4,i];
    sprav.sOtdel := stringgrid1.cells[5,i];
    sprav.mail := stringgrid1.cells[6,i];
    sprav.pol := stringgrid1.cells[7,i];
    Write(f, sprav);
  end;
  CloseFile(f);
  Application.MessageBox('Запись удалена!', 'Удаление');
    begin
      Reset(f);//перезапускаем FT
      stringgrid1.RowCount:=filesize(f)+1;//к размеру файла +1
      closefile(f);//закрываем файл
    end;
  AssignFile(f,Fname);
  if fileexists (Fname)=true then
    begin
      Reset(f);
      While not Eof(f) do
        begin
          Read(f, sprav);
          sprav.fam := stringgrid1.cells[0,i];
          sprav.ime := stringgrid1.cells[1,i];
          sprav.och := stringgrid1.cells[2,i];
          sprav.number := stringgrid1.cells[3,i];
          sprav.dolj := stringgrid1.cells[4,i];
          sprav.sOtdel := stringgrid1.cells[5,i];
          sprav.mail := stringgrid1.cells[6,i];
          sprav.pol := stringgrid1.cells[7,i];
        end;


  //очистка таблицы
  for i := 0 to StringGrid1.ColCount do
    for j := 1 to StringGrid1.RowCount do
      begin
        stringGrid1.Cells[i,j] := '';
      end;

//заполнение таблицы из файла
  reset(f);
  seek(f, 0);
  for i:=1 to FileSize(F) do
    begin
      Read (f, sprav);
        stringgrid1.Cells[0,i]:=sprav.fam;
        stringgrid1.Cells[1,i]:=sprav.ime;
        stringgrid1.Cells[2,i]:=sprav.och;
        stringgrid1.Cells[3,i]:=sprav.number;
        stringgrid1.Cells[4,i]:=sprav.dolj;
        stringgrid1.Cells[5,i]:=sprav.sOtdel;
        stringgrid1.Cells[6,i]:=sprav.mail;
        stringgrid1.Cells[7,i]:=sprav.pol;
      Seek (f, i);
    end;
  closefile(f);
  end;
end;
end;

procedure TfMain.N15Click(Sender: TObject);
begin
  fPass.ShowModal;
end;

procedure TfMain.ComboBox1Change(Sender: TObject);
var
  i, j: integer;
  sOtdel : string;
begin
stringgrid1.RowCount:=2;
 assignfile(f,Fname);
 reset(f);
 for i:=0 to 50 do
 for j:=1 to FileSize (f) do StringGrid1.Cells [i,j]:='';
 j:=1;
 for i:=1 to FileSize (f) do
  begin
    Read (f, sprav);

    sOtdel := ComboBox1.Text;

    if sOtdel = sprav.sOtdel  then
    begin
        stringgrid1.Cells[0,j]:=sprav.fam;
        stringgrid1.Cells[1,j]:=sprav.ime;
        stringgrid1.Cells[2,j]:=sprav.och;
        stringgrid1.Cells[3,j]:=sprav.number;
        stringgrid1.Cells[4,j]:=sprav.dolj;
        stringgrid1.Cells[5,j]:=sprav.sOtdel;
        stringgrid1.Cells[6,j]:=sprav.mail;
        stringgrid1.Cells[7,j]:=sprav.pol;
        stringgrid1.RowCount:=filesize(F)+1;

 j:=j+1;
 end;
 Seek (f, i);
 end;
 closefile(F);//закрываем файл

 end;

procedure GridSort(StrGrid: TStringGrid; NoColumn: Integer);
var
  Line, PosActual: Integer;
  Row: TStringList;
  Renglon :TStringList;
begin
  Renglon := TStringList.Create;
  Row := TStringList.Create;
  for Line := 1 to StrGrid.RowCount-1 do
  begin
    PosActual := Line;
    Row.Assign(StrGrid.Rows[PosActual]);
    while True do
    begin
      if (PosActual = 1) or
         (Row.Strings[NoColumn] >= StrGrid.Cells[NoColumn,PosActual-1])
        then break;
      StrGrid.Rows[PosActual] := StrGrid.Rows[PosActual-1];
      Dec(PosActual);
    end;
    if (Row.Strings[NoColumn] < StrGrid.Cells[NoColumn,PosActual])
      then StrGrid.Rows[PosActual].Assign(Row);
  end;
  Row.Free;
  Renglon.Free;
end;


procedure TfMain.N19Click(Sender: TObject);
begin
  GridSort(StringGrid1, 0);
end;

procedure TfMain.N20Click(Sender: TObject);
begin
  GridSort(StringGrid1, 1);
end;

procedure TfMain.N21Click(Sender: TObject);
begin
  GridSort(StringGrid1, 2);
end;

procedure TfMain.Button1Click(Sender: TObject);
var
i, j:integer;
fam, ime, och : string;
begin

    stringgrid1.RowCount:=2;


      AssignFile (f, Fname);
      Reset (f, Fname);
      for i:=0 to 50 do
      for j:=1 to FileSize (f) do StringGrid1.Cells [i,j]:='';
      j:=1;
  for i:=1 to FileSize (f) do
  begin
    Read (f, sprav);
    fam := Edit1.Text;
    ime := Edit2.Text;
    och := Edit3.Text;
    if (fam = sprav.fam) or (ime = sprav.ime) or (och = sprav.och)  then
    begin
        stringgrid1.Cells[0,j]:=sprav.fam;
        stringgrid1.Cells[1,j]:=sprav.ime;
        stringgrid1.Cells[2,j]:=sprav.och;
        stringgrid1.Cells[3,j]:=sprav.number;
        stringgrid1.Cells[4,j]:=sprav.dolj;
        stringgrid1.Cells[5,j]:=sprav.sOtdel;
        stringgrid1.Cells[6,j]:=sprav.mail;
        stringgrid1.Cells[7,j]:=sprav.pol;
        stringgrid1.RowCount:=filesize(F)+1;

 j:=j+1;
 end;
 Seek (f, i);
 end;
  closefile(F);//закрываем файл
end;

procedure TfMain.ComboBox2Change(Sender: TObject);
var
  i, j: integer;
  dolj : string;
begin
stringgrid1.RowCount:=2;
 assignfile(f,Fname);
 reset(f);
 for i:=0 to 50 do
 for j:=1 to FileSize (f) do StringGrid1.Cells [i,j]:='';
 j:=1;
 for i:=1 to FileSize (f) do
  begin
    Read (f, sprav);

    dolj := ComboBox2.Text;

    if dolj = sprav.dolj  then
    begin
        stringgrid1.Cells[0,j]:=sprav.fam;
        stringgrid1.Cells[1,j]:=sprav.ime;
        stringgrid1.Cells[2,j]:=sprav.och;
        stringgrid1.Cells[3,j]:=sprav.number;
        stringgrid1.Cells[4,j]:=sprav.dolj;
        stringgrid1.Cells[5,j]:=sprav.sOtdel;
        stringgrid1.Cells[6,j]:=sprav.mail;
        stringgrid1.Cells[7,j]:=sprav.pol;
        stringgrid1.RowCount:=filesize(F)+1;

 j:=j+1;
 end;
 Seek (f, i);
 end;
 closefile(F);//закрываем файл
end;

procedure TfMain.Button2Click(Sender: TObject);
var
  i : integer;
begin
  Combobox1.Text := '';
  Combobox2.Text := '';
  Fname:=OpenDialog1.FileName;
  assignfile(f,Fname);
  reset(f);
  for i:=1 to FileSize(F) do
    begin
      Read (f, sprav);
        stringgrid1.Cells[0,i]:=sprav.fam;
        stringgrid1.Cells[1,i]:=sprav.ime;
        stringgrid1.Cells[2,i]:=sprav.och;
        stringgrid1.Cells[3,i]:=sprav.number;
        stringgrid1.Cells[4,i]:=sprav.dolj;
        stringgrid1.Cells[5,i]:=sprav.sOtdel;
        stringgrid1.Cells[6,i]:=sprav.mail;
        stringgrid1.Cells[7,i]:=sprav.pol;
        stringgrid1.RowCount:=filesize(f)+1;
      Seek (f, i);
    end;
    closefile(F);//закрываем файл
end;

procedure TfMain.N22Click(Sender: TObject);
begin
  fDiag.Show;
end;

procedure TfMain.N10Click(Sender: TObject);
begin
ShowMessage('Автор программы: Чирков Р.П.; Студент группы 3п3')
end;

end.



