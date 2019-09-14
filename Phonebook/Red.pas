unit Red;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  TfRed = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Button1: TButton;
    Label8: TLabel;
    ComboBox3: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRed: TfRed;

implementation

uses ModData, Main;

{$R *.dfm}

procedure TfRed.Button1Click(Sender: TObject);
var
 j:integer;
begin
  if (Edit1.Text='')or (Edit2.Text='') or
      (Edit3.Text='') or (ComboBox1.Text='') or
        (ComboBox2.text='') or (MaskEdit1.Text = '') or
          (MaskEdit2.Text = '') or (ComboBox3.Text = '') then //проверка наличия информации в полях

begin
showmessage(' Нет данных ! '); //выводит сообщение
exit;
end;
      AssignFile(f, Fname);
      Reset(f);
      seek(f, fMain.stringgrid1.row-1);
      sprav.fam := Edit1.Text;
      sprav.ime := Edit2.Text;
      sprav.och := Edit3.Text;
      sprav.number := MaskEdit1.Text;
      sprav.dolj := ComboBox2.Text;
      sprav.sOtdel := ComboBox3.Text;
      sprav.mail := MaskEdit2.Text;
      sprav.pol := ComboBox1.Text;

      Write(f, sprav);
      CloseFile(f);
      begin
      AssignFile(f, Fname);
      if fileexists (Fname)=true then
        begin
          Reset(f);
          j:=1;
          While not Eof(f) do
            begin
              Read(f, sprav);
              fMain.stringgrid1.Cells[0,j]:=sprav.fam;
              fMain.stringgrid1.Cells[1,j]:=sprav.ime;
              fMain.stringgrid1.Cells[2,j]:=sprav.och;
              fMain.stringgrid1.Cells[3,j]:=sprav.number;
              fMain.stringgrid1.Cells[4,j]:=sprav.dolj;
              fMain.stringgrid1.Cells[5,j]:=sprav.sOtdel;
              fMain.stringgrid1.Cells[6,j]:=sprav.mail;
              fMain.stringgrid1.Cells[7,j]:=sprav.pol;
              j:=j+1;
            end;
  closefile(f);


end;
end;
end;
procedure TfRed.FormCreate(Sender: TObject);
begin
  ComboBox2.Items.LoadFromFile('dolj.txt');
  ComboBox1.Items.LoadFromFile('pol.txt');
end;

procedure TfRed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 redak := false;
end;

procedure TfRed.FormShow(Sender: TObject);
begin
  ComboBox2.Items.LoadFromFile('dolj.txt');
  ComboBox1.Items.LoadFromFile('pol.txt');
  ComboBox3.Items.LoadFromFile('Otdel.txt');
end;

end.

