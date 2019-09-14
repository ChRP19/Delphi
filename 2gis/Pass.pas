unit Pass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfPass = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure Edit1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPass: TfPass;
  p: boolean;

implementation

uses Auth;

{$R *.dfm}


procedure TfPass.Edit1Change(Sender: TObject);
begin
  if (Edit1.Text > '') and (Edit2.Text > '') and (Edit1.Text = Edit2.Text) then
  Button1.Enabled := true
  else Button1.Enabled := false;
end;

procedure TfPass.Button4Click(Sender: TObject);
begin
if p = true then
    begin
      p:= false;
      Edit1.PasswordChar:=#0;
      Edit2.PasswordChar:=#0;
    end
    else begin
      p:= true;
      Edit1.PasswordChar:=#42;
      Edit2.PasswordChar:=#42;
    end;
end;

procedure TfPass.FormCreate(Sender: TObject);
begin
p := true;
end;

procedure TfPass.CheckBox1Click(Sender: TObject);
begin
if p = true then
    begin
      p:= false;
      Edit1.PasswordChar:=#0;
      Edit2.PasswordChar:=#0;
    end
    else begin
      p:= true;
      Edit1.PasswordChar:=#42;
      Edit2.PasswordChar:=#42;
    end;
end;

procedure TfPass.Button1Click(Sender: TObject);
begin
AssignFile(f, ExtractFilePath(Application.ExeName) + 'auth_f.dat');
  Reset(f);
  read(f, Vauth);
  if fAuth.ComboBox1.Text = Vauth.login then
    begin
      Vauth.pass := Edit2.Text;
      ShowMessage('Пароль успешно изменен!');
    end;
end;

end.
