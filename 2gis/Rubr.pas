unit Rubr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls;

type
  TfRubr = class(TForm)
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
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRubr: TfRubr;

implementation

uses DataMod;

{$R *.dfm}

procedure TfRubr.Button1Click(Sender: TObject);
begin
    if DataModule2.RubrTable.Locate('Rubrika', Edit1.Text, []) then ShowMessage('Добавление невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.RubrTable.Insert;
          DataModule2.RubrTable.FieldByName('Rubrika').AsString:= Edit1.Text;
          DataModule2.RubrTable.Post;
          DataModule2.RubrTable.Close;
          DataModule2.RubrTable.Active:= false;
          DataModule2.RubrTable.Active:= true;
          Edit1.Clear;
          Datamodule2.RubrTable.Sort := 'Rubrika';
        end;
end;

procedure TfRubr.Button2Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.ADOQuery3.Locate('Rubrika', DataModule2.RubrTable.FieldByName('Rubrika').AsString, []) then ShowMessage('Удаление невозможно, выбранная запиcь используется')
      else
        begin
          DataModule2.RubrTable.Delete;
          Edit1.Clear;
          Datamodule2.RubrTable.Sort := 'Rubrika';
        end;
    end;
end;

procedure TfRubr.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
  if DataModule2.RubrTable.Locate('Rubrika', Edit1.Text, []) then ShowMessage('Изменение невозможно. Такая запись уже существует.')
    else
      begin
        DataModule2.RubrTable.Edit;
        DataModule2.RubrTable.FieldByName('Rubrika').AsString:= Edit1.Text;
        DataModule2.RubrTable.Post;
        DataModule2.RubrTable.Close;
        DataModule2.RubrTable.Active:= false;
        DataModule2.RubrTable.Active:= true;
        Edit1.Clear;
        Datamodule2.RubrTable.Sort := 'Rubrika';
      end;
    end;
end;

procedure TfRubr.Edit1Change(Sender: TObject);
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

procedure TfRubr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Clear;
end;

procedure TfRubr.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DataModule2.RubrTable.FieldByName('Rubrika').AsString;
end;

procedure TfRubr.FormCreate(Sender: TObject);
begin
Datamodule2.RubrTable.Sort := 'Rubrika';
end;

end.
