unit Dolj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls;

type
  TfDolj = class(TForm)
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
  fDolj: TfDolj;

implementation

uses DataMod;

{$R *.dfm}

procedure TfDolj.Edit1Change(Sender: TObject);
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

procedure TfDolj.Button1Click(Sender: TObject);
begin
    if DataModule2.DoljTable.Locate('Dolj', Edit1.Text, []) then ShowMessage('Добавление невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.DoljTable.Insert;
          DataModule2.DoljTable.FieldByName('Dolj').AsString:= Edit1.Text;
          DataModule2.DoljTable.Post;
          DataModule2.DoljTable.Close;
          DataModule2.DoljTable.Active:= false;
          DataModule2.DoljTable.Active:= true;
          Edit1.Clear;
          Datamodule2.DoljTable.Sort := 'Dolj';
        end;
end;

procedure TfDolj.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.DoljTable.Locate('Dolj', Edit1.Text, []) then ShowMessage('Изменение невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.DoljTable.Edit;
          DataModule2.DoljTable.FieldByName('Dolj').AsString:= Edit1.Text;
          DataModule2.DoljTable.Post;
          DataModule2.DoljTable.Close;
          DataModule2.DoljTable.Active:= false;
          DataModule2.DoljTable.Active:= true;
          Edit1.Clear;
          Datamodule2.DoljTable.Sort := 'Dolj';
        end;
     end;
end;

procedure TfDolj.Button2Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.ADOQuery1.Locate('Dolj', DataModule2.DoljTable.FieldByName('Dolj').AsString, []) then ShowMessage('Удаление невозможно, выбранная запись используется')
      else
        begin
          DataModule2.DoljTable.Delete;
          Edit1.Clear;
          Datamodule2.DoljTable.Sort := 'Dolj';
        end;
    end;
end;

procedure TfDolj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Clear;
end;

procedure TfDolj.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text := DataModule2.DoljTable.FieldByName('Dolj').AsString;
end;

procedure TfDolj.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    'A'..'Я':;
    'а'..'я':;
    #8:;
    #32:;
  else key := chr(0);
  end;
end;

procedure TfDolj.FormCreate(Sender: TObject);
begin
Datamodule2.DoljTable.Sort := 'Dolj';
end;

end.
