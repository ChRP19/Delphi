unit Oplata;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls;

type
  TfOplata = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOplata: TfOplata;

implementation

uses DataMod;

{$R *.dfm}

procedure TfOplata.Edit1Change(Sender: TObject);
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

procedure TfOplata.Button1Click(Sender: TObject);
begin
    if DataModule2.OplataTable.Locate('Var_oplati', Edit1.Text, []) then ShowMessage('Добавление невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.OplataTable.Insert;
          DataModule2.OplataTable.FieldByName('Var_oplati').AsString:= Edit1.Text;
          DataModule2.OplataTable.Post;
          DataModule2.OplataTable.Close;
          DataModule2.OplataTable.Active:= false;
          DataModule2.OplataTable.Active:= true;
          Edit1.Clear;
          Datamodule2.OplataTable.Sort := 'Var_oplati';
        end;
end;

procedure TfOplata.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.OplataTable.Locate('Var_oplati', Edit1.Text, []) then ShowMessage('Изменение невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.OplataTable.Edit;
          DataModule2.OplataTable.FieldByName('Var_oplati').AsString:= Edit1.Text;
          DataModule2.OplataTable.Post;
          DataModule2.OplataTable.Close;
          DataModule2.OplataTable.Active:= false;
          DataModule2.OplataTable.Active:= true;
          Edit1.Clear;
          Datamodule2.OplataTable.Sort := 'Var_oplati';
        end;
    end;
end;

procedure TfOplata.Button2Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.ADOQuery3.Locate('Var_oplati', DataModule2.OplataTable.FieldByName('Var_oplati').AsString, []) then ShowMessage('Удаление невозможно, выбранная запись используется')
      else
        begin
          DataModule2.OplataTable.Delete;
          Edit1.Clear;
          Datamodule2.OplataTable.Sort := 'Var_oplati';
        end;
    end;
end;

procedure TfOplata.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Clear;
end;

procedure TfOplata.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DataModule2.OplataTable.FieldByName('Var_oplati').AsString;
end;

procedure TfOplata.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    'A'..'Я':;
    'а'..'я':;
    #8:;
    #32:;
  else key := chr(0);
  end;
end;

procedure TfOplata.FormCreate(Sender: TObject);
begin
Datamodule2.OplataTable.Sort := 'Var_oplati';
end;

end.
