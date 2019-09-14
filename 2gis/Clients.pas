unit Clients;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, StdCtrls, ExtCtrls;

type
  TfClients = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    GroupBox2: TGroupBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Button7: TButton;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Button6: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button3: TButton;
    Button5: TButton;
    Button9: TButton;
    Button10: TButton;
    Label4: TLabel;
    Button2: TButton;
    Button4: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClients: TfClients;
  search: string;
  srt, x: integer;

implementation

uses DataMod, Add, CAdd, Main, UchOplat, Unit7;

{$R *.dfm}

procedure TfClients.ComboBox1Change(Sender: TObject);
begin
  case Combobox1.ItemIndex of
    0: search := 'Name_org';
    1: search := 'Email';
    2: search := 'Site';
  end;
  if ComboBox1.Text <> '' then Edit1.Enabled := true;
end;

procedure TfClients.Button1Click(Sender: TObject);
begin
if Edit1.Text > '' then
  if DataModule2.ADOQuery3.Locate(search, Edit1.Text, []) then
    begin
      ShowMessage('Запись найдена!');
      x := 1;
    end
  else
    begin
      ShowMessage('Запись не найдена. Попробуйте ввести заново');
      x := 0;
    end;
end;

procedure TfClients.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then srt := 1
  else srt := 0;
  if RadioGroup1.ItemIndex > -1 then
    begin
      RadioGroup2.Enabled := true;
      RadioGroup2.ItemIndex := -1;
      ComboBox1.Text := '';
      Edit1.Text := '';
    end
  else RadioGroup2.Enabled := false;
end;

procedure TfClients.RadioGroup2Click(Sender: TObject);
begin
  begin
    if srt = 0 then
      begin
        case RadioGroup2.ItemIndex of
          0: DataModule2.ADOQuery3.Sort := 'Name_org';
          1: DataModule2.ADOQuery3.Sort := 'Rubrika';
          2: DataModule2.ADOQuery3.Sort := 'Street';
      end;
    end
  else
    begin
      case RadioGroup2.ItemIndex of
        0: DataModule2.ADOQuery3.Sort := 'Name_org DESC';
        1: DataModule2.ADOQuery3.Sort := 'Rubrika DESC';
        2: DataModule2.ADOQuery3.Sort := 'Street DESC';
      end;
    end;
  end;
end;

procedure TfClients.Button7Click(Sender: TObject);
begin
  DataModule2.ADOQuery3.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
  ComboBox1.ItemIndex := -1;
end;

procedure TfClients.Button6Click(Sender: TObject);
begin
  Datamodule2.ADOQuery3.Filtered := False;
  Datamodule2.ADOQuery3.Filter:='id_f_f=' + QuotedStr(DataModule2.ADOQuery1.FieldByName('id_f_f').AsString);
  Datamodule2.ADOQuery3.Filtered:=true;
  DBLookUpComboBox1.KeyValue := null;
  DBLookUpComboBox3.KeyValue := null;
  ComboBox1.ItemIndex := -1;
  Button2.Enabled := false;
end;

procedure TfClients.Button5Click(Sender: TObject);
begin
  DataModule2.ClientsTable.Locate('INN', DataModule2.ADOQuery3.FieldByName('INN').AsString, []);
  fCAdd.MaskEdit1.Text :=  DataModule2.ClientsTable.FieldByName('Telefon').AsString;
  fCAdd.Caption := 'Клиенты - Редактор';

  fCAdd.Button1.Visible := false;
  fCAdd.Button3.Visible := false;
  fCAdd.Button4.Visible := false;
  fCAdd.Button5.Visible := false;
  fCAdd.Button6.Visible := false;
  fCAdd.Button9.Visible := false;
  fCAdd.Button10.Visible := false;

  fCAdd.Visible := true;
  fClients.Visible := false;
end;

procedure TfClients.Button3Click(Sender: TObject);
begin
  DataModule2.ClientsTable.Locate('INN', DataModule2.ADOQuery3.FieldByName('INN').AsString, []);
  fCAdd.MaskEdit1.Text :=  DataModule2.ClientsTable.FieldByName('Telefon').AsString;
  fCAdd.Caption := 'Клиенты - Редактор';

  fCAdd.Button1.Visible := true;
  fCAdd.Button3.Visible := true;
  fCAdd.Button4.Visible := true;
  fCAdd.Button5.Visible := true;
  fCAdd.Button6.Visible := true;
  fCAdd.Button9.Visible := true;
  fCAdd.Button10.Visible := true;

  fCAdd.Visible := true;
  fClients.Visible := false;
end;

procedure TfClients.Button9Click(Sender: TObject);
begin
  fCAdd.MaskEdit1.Text := '';
  DataModule2.ClientsTable.Insert;
  fCAdd.button4.Click;
  fCAdd.Caption := 'Клиенты - Редактор';
  fCAdd.Button1.Visible := true;
  fCAdd.Button3.Visible := true;
  fCAdd.Button4.Visible := true;
  fCAdd.Button5.Visible := true;
  fCAdd.Button6.Visible := true;
  fCAdd.Button9.Visible := true;
  fCAdd.Button10.Visible := true;

  fCAdd.Visible := true;
  fClients.Visible := false;
end;

procedure TfClients.Button10Click(Sender: TObject);
begin
  Datamodule2.ADOQuery3.Filtered := False;
  DBLookUpComboBox1.KeyValue := null;
  DBLookUpComboBox3.KeyValue := null;
  ComboBox1.ItemIndex := -1;
  DataModule2.ADOQuery3.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
  fClients.Visible := false;
  fMain.Position:=poScreenCenter;
  fMain.Visible := true;
end;

procedure TfClients.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Datamodule2.ADOQuery3.Filtered := False;
  DBLookUpComboBox1.KeyValue := null;
  DBLookUpComboBox3.KeyValue := null;
  ComboBox1.ItemIndex := -1;
  DataModule2.ADOQuery3.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
  fClients.Visible := false;
  fMain.Position:=poScreenCenter;
  fMain.Visible := true;
end;

procedure TfClients.DBLookupComboBox1Click(Sender: TObject);
begin
    DBLookUpComboBox3.KeyValue := null;
    DataModule2.ADOQuery3.Sort := '';
    RadioGroup1.ItemIndex := -1;
    RadioGroup2.ItemIndex := -1;
    RadioGroup2.Enabled := false;
if DBLookUpComboBox1.Text <> '' then
begin
  Button2.Enabled := true;
  DataModule2.ADOQuery3.Filtered:= false;
  DataModule2.ADOQuery3.Filter:='id_f_f=' + #39 + DataModule2.ADOQuery1.FieldByName('id_f_f').AsString + #39 +
  ' AND ' +
  'Rubrika='+ #39 + DBLookUpComboBox1.Text + #39 ;
  DataModule2.ADOQuery3.Filtered:=true;
end;
end;

procedure TfClients.DBLookupComboBox3Click(Sender: TObject);
begin
    DBLookUpComboBox1.KeyValue := null;
    DataModule2.ADOQuery3.Sort := '';
    RadioGroup1.ItemIndex := -1;
    RadioGroup2.ItemIndex := -1;
    RadioGroup2.Enabled := false;
if DBLookUpComboBox3.Text <> '' then
begin
  DataModule2.ADOQuery3.Filtered:= false;
  DataModule2.ADOQuery3.Filter:='id_f_f=' + #39 + DataModule2.ADOQuery1.FieldByName('id_f_f').AsString + #39 +
  ' AND ' +
  'Street='+ #39 + DBLookUpComboBox3.Text + #39 ;
  DataModule2.ADOQuery3.Filtered:=true;
end;
end;

procedure TfClients.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;
end;

procedure TfClients.Button4Click(Sender: TObject);
begin
  DataModule2.UchOplatTable.Insert;
  fUchOplat.Edit2.Text := DataModule2.ADOQuery3.FieldByName('INN').AsString;
  fUchOplat.Edit1.Text := DataModule2.ADOQuery3.FieldByName('Name_org').AsString;
  fUchOplat.Visible := true;
  fCAdd.Visible := false;
end;

procedure TfClients.Button2Click(Sender: TObject);
begin
  Form7.QuickRep1.Preview;
end;

end.
