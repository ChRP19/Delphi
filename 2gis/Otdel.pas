unit Otdel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls;

type
  TfOtdel = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOtdel: TfOtdel;

implementation

uses DataMod;

{$R *.dfm}

procedure TfOtdel.Button1Click(Sender: TObject);
begin
    if DataModule2.OtdelTable.Locate('Otdel', Edit1.Text, []) then ShowMessage('Добавление невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.OtdelTable.Insert;
          DataModule2.OtdelTable.FieldByName('Otdel').AsString:= Edit1.Text;
          DataModule2.OtdelTable.Post;
          DataModule2.OtdelTable.Close;
          DataModule2.OtdelTable.Active:= false;
          DataModule2.OtdelTable.Active:= true;
          Edit1.Clear;
          Datamodule2.OtdelTable.Sort := 'Otdel';
        end;
end;

procedure TfOtdel.Button2Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.ADOQuery1.Locate('Otdel', DataModule2.OtdelTable.FieldByName('Otdel').AsString, []) then ShowMessage('Удаление невозможно, выбранная запиcь используется')
      else
        begin
          DataModule2.OtdelTable.Delete;
          Edit1.Clear;
          Datamodule2.OtdelTable.Sort := 'Otdel';
        end;
    end;
end;

procedure TfOtdel.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
  if DataModule2.OtdelTable.Locate('Otdel', Edit1.Text, []) then ShowMessage('Изменение невозможно. Такая запись уже существует.')
    else
      begin
        DataModule2.OtdelTable.Edit;
        DataModule2.OtdelTable.FieldByName('Otdel').AsString:= Edit1.Text;
        DataModule2.OtdelTable.Post;
        DataModule2.OtdelTable.Close;
        DataModule2.OtdelTable.Active:= false;
        DataModule2.OtdelTable.Active:= true;
        Edit1.Clear;
        Datamodule2.OtdelTable.Sort := 'Otdel';
        end;
    end;
end;

procedure TfOtdel.Edit1Change(Sender: TObject);
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

procedure TfOtdel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Clear;
end;

procedure TfOtdel.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    'A'..'Я':;
    'а'..'я':;
    #8:;
    #32:;
  else key := chr(0);
  end;
end;

procedure TfOtdel.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DataModule2.OtdelTable.FieldByName('Otdel').AsString;
end;

procedure TfOtdel.FormCreate(Sender: TObject);
begin
Datamodule2.OtdelTable.Sort := 'Otdel';
end;

end.
