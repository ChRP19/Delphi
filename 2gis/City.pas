unit City;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls;

type
  TfCity = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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
  fCity: TfCity;

implementation

uses DataMod;

{$R *.dfm}

procedure TfCity.Button1Click(Sender: TObject);
begin
    if DataModule2.CityTable.Locate('City', Edit1.Text, []) then ShowMessage('Добавление невозможно. Такая запись уже существует.')
      else
        begin
          DataModule2.CityTable.Insert;
          DataModule2.CityTable.FieldByName('City').AsString:= Edit1.Text;
          DataModule2.CityTable.Post;
          DataModule2.CityTable.Close;
          DataModule2.CityTable.Active:= false;
          DataModule2.CityTable.Active:= true;
          Edit1.Clear;
          Datamodule2.CityTable.Sort := 'City';
        end;
end;

procedure TfCity.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.CityTable.Locate('City', Edit1.Text, []) then ShowMessage('Изменение невозможно. Такая запись уже существует.')
      else
        begin
      DataModule2.CityTable.Edit;
      DataModule2.CityTable.FieldByName('City').AsString:= Edit1.Text;
      DataModule2.CityTable.Post;
      DataModule2.CityTable.Close;
      DataModule2.CityTable.Active:= false;
      DataModule2.CityTable.Active:= true;
      Edit1.Clear;
      Datamodule2.CityTable.Sort := 'City';
    end;
  end;
  Button3.Enabled := true;
end;

procedure TfCity.Edit1Change(Sender: TObject);
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

procedure TfCity.Button2Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      if DataModule2.ADOQuery1.Locate('City', DataModule2.CityTable.FieldByName('City').AsString, []) then ShowMessage('Удаление невозможно, выбранная запись используется')
      else
        begin
          DataModule2.CityTable.Delete;
          Edit1.Clear;
          Datamodule2.CityTable.Sort := 'City';
        end;
    end;
end;

procedure TfCity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Edit1.Clear;
end;

procedure TfCity.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DataModule2.CityTable.FieldByName('City').AsString;
end;

procedure TfCity.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    'A'..'Я':;
    'а'..'я':;
    #8:;
    #32:;
  else key := chr(0);
  end;
end;

procedure TfCity.FormCreate(Sender: TObject);
begin
Datamodule2.CityTable.Sort := 'City';
end;

end.
