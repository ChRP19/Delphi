unit Dolj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfDolj = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ListBox1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDolj: TfDolj;

implementation

uses Main;

{$R *.dfm}

procedure TfDolj.Button1Click(Sender: TObject);
var
  i:Integer;
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
            ListBox1.Items.SaveToFile('dolj.txt');
            Edit1.Text :='';
          end;
   end;
end;

procedure TfDolj.Button2Click(Sender: TObject);
begin
  ListBox1.DeleteSelected;
end;

procedure TfDolj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    ListBox1.Items.SaveToFile('dolj.txt');
    Edit1.Text := '';
    fMain.ComboBox2.Items.LoadFromFile('dolj.txt');
end;

procedure TfDolj.ListBox1DblClick(Sender: TObject);
begin
  Edit1.Text := ListBox1.Items[ListBox1.ItemIndex];
end;

procedure TfDolj.Button3Click(Sender: TObject);
begin
  if Edit1.Text = '' then ShowMessage ('Заполните поле!')
  else
    ListBox1.Items[ListBox1.ItemIndex] := Edit1.Text;
end;

end.
