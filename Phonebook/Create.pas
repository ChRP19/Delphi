unit Create;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfCreate = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCreate: TfCreate;

implementation

uses Main, ModData, Add;

{$R *.dfm}

procedure TfCreate.Button1Click(Sender: TObject);
var
  i, j : integer;
begin
if Edit1.Text = '' then ShowMessage('¬ведите название!')
    else
      begin
      //очистка таблицы
        for i := 0 to fMain.StringGrid1.ColCount do
        for j := 1 to fMain.StringGrid1.RowCount do
      begin
        fMain.stringGrid1.Cells[i,j] := '';
      end;
        Fname:=Edit1.Text+'.dat';
        AssignFile (f, Fname);
        Rewrite(f);
        fCreate.Close;
        ShowMessage('‘айл создан!');
        fMain.ComboBox1.Items := fAdd.ComboBox2.Items;
        fMain.ComboBox2.Items := fAdd.ComboBox1.Items;
        fMain.StringGrid1.Visible := true;
        fMain.GroupBox1.Visible := true;
        fMain.GroupBox2.Visible := true;
        fMain.Image1.Visible := false;
        fMain.Refresh;
        fMain.N5.Enabled := true;
        fMain.N9.Enabled := true;
      end;
  Edit1.Text := '';
  fMain.stringgrid1.RowCount:=2;
  closefile(F);//закрываем файл
end;

end.
