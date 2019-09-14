unit Auth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, ExtCtrls, jpeg, ComCtrls;

type
  TfAuth = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    XPManifest1: TXPManifest;
    CheckBox1: TCheckBox;
    Image1: TImage;
    ComboBox1: TComboBox;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  Tauth = record
  login : string[15];
  pass : string[15];
end;

var
  fAuth: TfAuth;
  p: boolean;
  Vauth: Tauth;
  f : File of Tauth;

implementation

uses Main, Sotrud, Clients, Glav;

{$R *.dfm}

procedure TfAuth.Button1Click(Sender: TObject);
var
 Flag: boolean;
begin
if (edit1.Text='') then showmessage('Введите пароль!')
  else begin
  AssignFile(f, ExtractFilePath(Application.ExeName) + 'auth_f.dat');
  Reset(f);
if IOResult = 0 then
  begin
    Flag:=false;
  while not eof(f) do
 begin
  read(f, Vauth);
  if (ComboBox1.Text=Vauth.login) and (edit1.Text=Vauth.pass) then
  begin
    Flag:=true;
    Break;
  end;
   end;
  closefile(f);

  //Конец авторизации
  //В зависимости от пользователя
  //будут различные ограничения
  if flag then
    begin
      ShowMessage('Добро пожаловать!');
      CheckBox1.Checked := false;
      fAuth.Visible := false;
      fGlav.Position:=poScreenCenter;
      fGlav.Visible := true;
    end
  else
    ShowMessage('Неправильно');
  end else
 ShowMessage('Cannot open file');
 end;
end;

procedure TfAuth.Button3Click(Sender: TObject);
begin
fAuth.Close;
end;

procedure TfAuth.FormCreate(Sender: TObject);
begin
p := true;

end;

procedure TfAuth.CheckBox1Click(Sender: TObject);
begin
if p = true then
    begin
      p:= false;
      Edit1.PasswordChar:=#0;
    end
    else begin
      p:= true;
      Edit1.PasswordChar:=#42;
    end;
end;

procedure TfAuth.ComboBox1Change(Sender: TObject);
begin
case Combobox1.ItemIndex of
0:  begin
      fMain.Button1.Enabled := true;
      fMain.Button3.Enabled := true;
      fMain.Button8.Enabled := true;
      fMain.Button11.Enabled := true;
      fGlav.N5.Enabled := true;
      fGlav.N6.Enabled := true;
      fGlav.N7.Enabled := true;
      fGlav.N8.Enabled := true;
      fGlav.N9.Enabled := true;
      fGlav.N11.Enabled := true;
      fGlav.N12.Enabled := true;
      fGlav.N15.Enabled := true;
      Statusbar1.Panels[0].Text := 'Системный администратор';
    end;
1:  begin
      fMain.Button1.Enabled := false;
      fMain.Button3.Enabled := false;
      fMain.Button8.Enabled := false;
      fMain.Button11.Enabled := true;
      fGlav.N5.Enabled := false;
      fGlav.N6.Enabled := true;
      fGlav.N7.Enabled := false;
      fGlav.N8.Enabled := false;
      fGlav.N9.Enabled := false;
      fGlav.N11.Enabled := true;
      fGlav.N12.Enabled := true;
      fGlav.N15.Enabled := false;
      Statusbar1.Panels[0].Text := 'Бухгалтер';
    end;
2:  begin
      fMain.Button1.Enabled := false;
      fMain.Button3.Enabled := true;
      fMain.Button8.Enabled := false;
      fMain.Button11.Enabled := false;
      fGlav.N5.Enabled := false;
      fGlav.N6.Enabled := false;
      fGlav.N7.Enabled := true;
      fGlav.N8.Enabled := true;
      fGlav.N9.Enabled := true;
      fGlav.N11.Enabled := false;
      fGlav.N12.Enabled := false;
      fGlav.N15.Enabled := false;
      Statusbar1.Panels[0].Text := 'Специалист по кадровому делопроизводству';
    end;
  end;
end;

procedure TfAuth.FormShow(Sender: TObject);
begin
Statusbar1.Panels[0].Text := 'Авторизация';
end;

procedure TfAuth.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;
end;

procedure TfAuth.Timer1Timer(Sender: TObject);
begin
StatusBar1.Panels[1].Text := FormatDateTime('dd.mm.yyyy', Date);
  StatusBar1.Panels[2].Text := FormatDateTime('hh:mm:ss', Time);
end;

end.

