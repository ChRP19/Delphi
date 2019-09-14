unit UchOplat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ComCtrls, Mask;

type
  TfUchOplat = class(TForm)
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    DateTimePicker2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUchOplat: TfUchOplat;

implementation

uses DataMod, CAdd, Clients;

{$R *.dfm}

procedure TfUchOplat.Button1Click(Sender: TObject);
begin
  if messageDlg('Вы уверены что хотите закрыть? Оплата не проведена.', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      DataModule2.UchOplatTable.CancelUpdates;
      fUchOplat.Visible := false;
      fClients.Position:=poScreenCenter;
      fClients.Visible := true;
    end;

end;

procedure TfUchOplat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
fUchOplat.Visible := false;
fClients.Position:=poScreenCenter;
fClients.Visible := true;
end;

procedure TfUchOplat.Button2Click(Sender: TObject);
begin
if (edit1.Text<>'') and (edit2.Text<>'')
  and (dbedit1.Text<>'') and (DBlookupcombobox1.Text<>'') then
    begin
      if DataModule2.ADOQuery4.Locate('INN_Client;Mes', VarArrayOf([DataModule2.ADOQuery3.FieldByName('INN').AsString, FormatDateTime('MMMM yyyy', DateTimePicker2.Date)]), [])
      then ShowMessage('Оплата за этот месяц уже существует! Выберите другой месяц.')
      else
      begin
      //Сохранение
      DataModule2.UchOplatTable.Edit;
      DataModule2.UchOplatTable.FieldByName('Data_oplati').AsString := DateToStr(DateTimePicker1.Date);
      DataModule2.UchOplatTable.FieldByName('Mes').AsString := FormatDateTime('MMMM yyyy', DateTimePicker2.Date);
      DataModule2.UchOplatTable.FieldByName('INN_client').AsString := Edit2.Text;
      DataModule2.UchOplatTable.Post;
      ShowMessage('Оплата проведена!');
      fUchOplat.Visible := false;
      fClients.Position:=poScreenCenter;
      fClients.Visible := true;
      end;
    end
  else ShowMessage('Заполните все поля!');

end;

procedure TfUchOplat.Button3Click(Sender: TObject);
begin
DataModule2.UchOplatTable.CancelUpdates;
DBlookupcombobox1.KeyValue := null;
DBEdit1.Text := '';
DateTimePicker1.Date := now;
end;

procedure TfUchOplat.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date := now;
DateTimePicker2.Date := now;
end;

end.
