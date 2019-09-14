unit Pass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfPass = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPass: TfPass;

implementation

{$R *.dfm}

procedure TfPass.Edit1Change(Sender: TObject);
begin
  if (Edit1.Text > '') and (Edit2.Text > '') and (Edit1.Text = Edit2.Text) then
  Button1.Enabled := true
  else Button1.Enabled := false;
end;

procedure TfPass.Button1Click(Sender: TObject);
var
  t: textfile;
  p, pass: string;
begin
  AssignFile(t, 'pass.txt');
  rewrite(t);
  append(t);

 writeln(t, edit2.text);
 closefile(t);//закрытие файла
 messagedlg('Пароль изменен.',mtwarning,[mbok],0);
end;

end.
