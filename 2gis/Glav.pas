unit Glav;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Menus;

type
  TfGlav = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N2: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N4: TMenuItem;
    N3: TMenuItem;
    N13: TMenuItem;
    Image1: TImage;
    N15: TMenuItem;
    N14: TMenuItem;
    procedure N13Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N15Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGlav: TfGlav;

implementation

uses Main, City, Street, Otdel, Dolj, Rubr, Oplata, Pass, Auth, Unit2,
  Bank, DataMod;

{$R *.dfm}

procedure TfGlav.N13Click(Sender: TObject);
begin
  fMain.RadioGroup1.ItemIndex := -1;
  fMain.RadioGroup2.ItemIndex := -1;
  fMain.Position:=poScreenCenter;
  fMain.Visible := true;
  fGlav.Visible := false;
end;

procedure TfGlav.N5Click(Sender: TObject);
begin
fCity.ShowModal;
end;

procedure TfGlav.N6Click(Sender: TObject);
begin
fStreet.ShowModal;
end;

procedure TfGlav.N7Click(Sender: TObject);
begin
fOtdel.ShowModal;
end;

procedure TfGlav.N8Click(Sender: TObject);
begin
fDolj.ShowModal;
end;

procedure TfGlav.N11Click(Sender: TObject);
begin
fRubr.ShowModal;
end;

procedure TfGlav.N12Click(Sender: TObject);
begin
fOplata.ShowModal;
end;

procedure TfGlav.N9Click(Sender: TObject);
begin
fPass.ShowModal;
end;

procedure TfGlav.N10Click(Sender: TObject);
begin
  fAuth.Edit1.Clear;
  fAuth.Combobox1.Text := 'Выберите пользователя';
  fAuth.CheckBox1.Checked := false;
  fGlav.Visible := false;
  fAuth.Position:=poScreenCenter;
  fAuth.Visible := true;
end;

procedure TfGlav.N4Click(Sender: TObject);
begin
MessageBox(ClientHandle, PCHAR('Дипломная практика на тему "Учет клиентов филиалов ООО "ДубльГИС"", выполнил Чирков Р.П., 2017 год'), PCHAR('Об авторе'), MB_OK + MB_ICONINFORMATION);
end;

procedure TfGlav.N3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      fAuth.Close;
    end;
end;

procedure TfGlav.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      fAuth.Close;
    end
  else
    action := caNone;
end;

procedure TfGlav.N15Click(Sender: TObject);
begin
fBank.ShowModal;
end;

procedure TfGlav.N14Click(Sender: TObject);
begin
DataModule2.ADOQuery4.Close;
DataModule2.ADOQuery4.Open;
Form2.Position:=poScreenCenter;
Form2.ShowModal;
end;

end.
