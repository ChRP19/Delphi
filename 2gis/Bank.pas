unit Bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids;

type
  TfBank = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBank: TfBank;

implementation

uses DataMod;

{$R *.dfm}

procedure TfBank.Button1Click(Sender: TObject);
begin
    if DataModule2.BankTable.Locate('Nazv_banka', Edit1.Text, []) then ShowMessage('Добавление невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.BankTable.Insert;
          DataModule2.BankTable.FieldByName('Nazv_banka').AsString:= Edit1.Text;
          DataModule2.BankTable.Post;
          DataModule2.BankTable.Close;
          DataModule2.BankTable.Active:= false;
          DataModule2.BankTable.Active:= true;
          Edit1.Clear;
          Datamodule2.BankTable.Sort := 'Nazv_banka';
        end;
end;

procedure TfBank.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.BankTable.Locate('Nazv_banka', Edit1.Text, []) then ShowMessage('Изменение невозможно. Такая запись уже существует.')
      else
        begin
      DataModule2.BankTable.Edit;
      DataModule2.BankTable.FieldByName('Nazv_banka').AsString:= Edit1.Text;
      DataModule2.BankTable.Post;
      DataModule2.BankTable.Close;
      DataModule2.BankTable.Active:= false;
      DataModule2.BankTable.Active:= true;
      Edit1.Clear;
      Datamodule2.BankTable.Sort := 'Nazv_banka';
    end;
  end;

  Button3.Enabled := true;

end;

procedure TfBank.Button2Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.RekvTable.Locate('Kod_banka', DataModule2.BankTable.FieldByName('Nazv_banka').AsString, []) then ShowMessage('Удаление невозможно, выбранная запись используется')
      else
        begin
          DataModule2.BankTable.Delete;
          Edit1.Clear;
          Datamodule2.BankTable.Sort := 'Nazv_banka';
        end;
    end;
end;

procedure TfBank.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DataModule2.BankTable.FieldByName('Nazv_banka').AsString;
end;

procedure TfBank.FormCreate(Sender: TObject);
begin
Datamodule2.BankTable.Sort := 'Nazv_banka';
end;

procedure TfBank.Edit1Change(Sender: TObject);
begin
  if Edit1.Text > '' then
    begin
      Button1.Enabled := true;
      Button3.Enabled := true;
    end
  else
    begin
      Button1.Enabled := false;
      Button3.Enabled := false;
    end;
end;

procedure TfBank.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Edit1.Clear;
end;

end.
