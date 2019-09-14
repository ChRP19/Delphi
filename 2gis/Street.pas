unit Street;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls;

type
  TfStreet = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  fStreet: TfStreet;

implementation

uses DataMod;

{$R *.dfm}

procedure TfStreet.Edit1Change(Sender: TObject);
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

procedure TfStreet.Button1Click(Sender: TObject);
begin
    if DataModule2.StreetTable.Locate('Street', Edit1.Text, []) then ShowMessage('Добавление невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.StreetTable.Insert;
          DataModule2.StreetTable.FieldByName('Street').AsString:= Edit1.Text;
          DataModule2.StreetTable.Post;
          DataModule2.StreetTable.Close;
          DataModule2.StreetTable.Active:= false;
          DataModule2.StreetTable.Active:= true;
          Edit1.Clear;
          Datamodule2.StreetTable.Sort := 'Street';
        end;
end;

procedure TfStreet.Button2Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.ADOQuery1.Locate('Street', DataModule2.StreetTable.FieldByName('Street').AsString, []) then ShowMessage('Удаление невозможно, выбранная запиcь используется')
      else
        if DataModule2.ADOQuery3.Locate('Street', DataModule2.StreetTable.FieldByName('Street').AsString, []) then ShowMessage('Удаление невозможно, выбранная запиcь используется')
        else
          begin
            DataModule2.StreetTable.Delete;
            Edit1.Clear;
            Datamodule2.StreetTable.Sort := 'Street';
          end;
    end;
end;

procedure TfStreet.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
if DataModule2.StreetTable.Locate('Street', Edit1.Text, []) then ShowMessage('Изменение невозможно. Такая запись уже существует.')
  else
    begin
      DataModule2.StreetTable.Edit;
      DataModule2.StreetTable.FieldByName('Street').AsString:= Edit1.Text;
      DataModule2.StreetTable.Post;
      DataModule2.StreetTable.Close;
      DataModule2.StreetTable.Active:= false;
      DataModule2.StreetTable.Active:= true;
      Edit1.Clear;
      Datamodule2.StreetTable.Sort := 'Street';
    end;
    end;
end;

procedure TfStreet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Edit1.Clear;
end;

procedure TfStreet.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DataModule2.StreetTable.FieldByName('Street').AsString;
end;

procedure TfStreet.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    'A'..'Я':;
    'а'..'я':;
    #8:;
    #32:;
  else key := chr(0);
  end;
end;

procedure TfStreet.FormCreate(Sender: TObject);
begin
Datamodule2.StreetTable.Sort := 'Street';
end;

end.
