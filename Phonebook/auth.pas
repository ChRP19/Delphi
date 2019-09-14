unit auth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TfAuth = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Edit2: TEdit;
    Label3: TLabel;
    Image2: TImage;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAuth : TfAuth;

implementation

uses main, Unit1, ModData;

{$R *.dfm}


procedure TfAuth.Button1Click(Sender: TObject);

var
  n: integer;
  t: textfile;
  p, pass: string;
begin
  AssignFile(t, 'pass.txt');
  reset(t);
  readln(t, pass);
  p := Edit2.Text;
  if p = pass then
    begin
      Edit2.Text := '';
      fMain.Visible := true;
      fMain.StringGrid1.Visible := false;
      fMain.GroupBox1.Hide;
      fMain.GroupBox2.Hide;
      fMain.GroupBox3.Hide;
      fAuth.Visible := false;
      fMain.Image1.Visible := true;
      fMain.ComboBox1.Items.LoadFromFile('Otdel.txt');
      fMain.ComboBox2.Items.LoadFromFile('dolj.txt');
      fMain.N5.Visible := true;
      fMain.N11.Visible := true;
      fMain.N15.Visible := true;
      fMain.N4.Visible := true;
      fMain.N22.Visible := false;
      dostup := true;
  end
  else showmessage('Пароль неверный');
 closefile(t);
end;






procedure TfAuth.Button2Click(Sender: TObject);
begin
    fMain.Visible := true;
    fMain.StringGrid1.Visible := false;
    fMain.GroupBox1.Hide;
    fMain.GroupBox2.Hide;
    fMain.GroupBox3.Hide;
    fAuth.Visible := false;
    fMain.Image1.Visible := true;
    fMain.ComboBox1.Items.LoadFromFile('Otdel.txt');
    fMain.ComboBox2.Items.LoadFromFile('dolj.txt');
    fMain.N5.Visible := false;
    fMain.N11.Visible := false;
    fMain.N15.Visible := false;
    fMain.N4.Visible := false;
    fMain.N22.Visible := false;
    dostup := false;
end;

procedure TfAuth.FormCreate(Sender: TObject);
begin
dostup := true;
end;

end.
