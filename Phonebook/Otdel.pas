unit Otdel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfOtdel = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOtdel: TfOtdel;

implementation

{$R *.dfm}

procedure TfOtdel.Button1Click(Sender: TObject);
var
  i: integer;
  sov: boolean;
begin
  if Edit1.Text = '' then ShowMessage ('Заполните поле!')
  else
  begin
    sov:=false;
      for i := 0 to ListBox1.Count - 1 do
          if Edit1.Text = ListBox1.Items[i]
          then sov:= true;

        if sov then
        begin
            ShowMessage('Такая запись уже существует!');
        end
        else
          begin
            ListBox1.Items.Add(Edit1.Text);
            ListBox1.Items.SaveToFile('otdel.txt');
            Edit1.Text :='';
          end;
   end;
end;

procedure TfOtdel.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then ShowMessage ('Заполните поле!')
  else
    ListBox1.Items[ListBox1.ItemIndex] := Edit1.Text;
end;

procedure TfOtdel.Button3Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
end;

procedure TfOtdel.ListBox1DblClick(Sender: TObject);
begin
  Edit1.Text := ListBox1.Items[ListBox1.ItemIndex];
end;

end.
