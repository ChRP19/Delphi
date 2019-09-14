unit Sotrud;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TfSotrud = class(TForm)
    DBGrid1: TDBGrid;
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
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button3: TButton;
    Button5: TButton;
    Button8: TButton;
    Button9: TButton;
    Label2: TLabel;
    procedure Button5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSotrud: TfSotrud;
  search: string;
  srt, x: integer;

implementation

uses DataMod, SAdd, Add, Main;

{$R *.dfm}

procedure TfSotrud.Button5Click(Sender: TObject);
begin
  DataModule2.SotrudTable.Locate('№_sotr', DataModule2.ADOQuery2.FieldByName('№_sotr').AsString, []);
  fSAdd.MaskEdit1.Text := DataModule2.SotrudTable.FieldByName('Telefon').AsString;

  fSAdd.Caption := 'Сотрудники - Просмотр';
  fSAdd.Button1.Visible := false;
  fSAdd.Button3.Visible := false;
  fSAdd.Button4.Visible := false;
  fSAdd.Button5.Visible := false;
  fSAdd.Button6.Visible := false;
  fSAdd.Button9.Visible := false;
  fSAdd.Button10.Visible := false;

  fSAdd.Visible := true;
  fSotrud.Visible := false;
end;

procedure TfSotrud.ComboBox1Change(Sender: TObject);
begin
  case Combobox1.ItemIndex of
    0: search := 'Fam';
    1: search := 'Name';
    2: search := 'Och';
    3: search := 'Email';
  end;
  if ComboBox1.Text <> '' then Edit1.Enabled := true;
end;

procedure TfSotrud.Button1Click(Sender: TObject);
begin
if Edit1.Text > '' then
  if DataModule2.ADOQuery2.Locate(search, Edit1.Text, []) then
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

procedure TfSotrud.RadioGroup1Click(Sender: TObject);
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

procedure TfSotrud.RadioGroup2Click(Sender: TObject);
begin
  begin
    if srt = 0 then
      begin
        case RadioGroup2.ItemIndex of
          0: DataModule2.ADOQuery2.Sort := 'Fam';
          1: DataModule2.ADOQuery2.Sort := 'Name';
          2: DataModule2.ADOQuery2.Sort := 'Och';
      end;
    end
  else
    begin
      case RadioGroup2.ItemIndex of
        0: DataModule2.ADOQuery2.Sort := 'Fam DESC';
        1: DataModule2.ADOQuery2.Sort := 'Name DESC';
        2: DataModule2.ADOQuery2.Sort := 'Och DESC';
      end;
    end;
  end;
end;

procedure TfSotrud.Button7Click(Sender: TObject);
begin
  DataModule2.ADOQuery2.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
  ComboBox1.ItemIndex := -1;
end;

procedure TfSotrud.Button6Click(Sender: TObject);
begin
    Datamodule2.ADOQuery2.Filtered := False;
    Datamodule2.ADOQuery2.Filter:='id_f_f=' + QuotedStr(DataModule2.ADOQuery1.FieldByName('id_f_f').AsString);
    Datamodule2.ADOQuery2.Filtered:=true;
    DBLookUpComboBox1.KeyValue := null;
    DBLookUpComboBox3.KeyValue := null;
    ComboBox1.ItemIndex := -1;
end;

procedure TfSotrud.FormCreate(Sender: TObject);
begin
  srt := 0;
  x := 0;
end;

procedure TfSotrud.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Datamodule2.ADOQuery2.Filtered := False;
  DBLookUpComboBox1.KeyValue := null;
  DBLookUpComboBox3.KeyValue := null;
  DataModule2.ADOQuery2.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
  ComboBox1.ItemIndex := -1;
  fSotrud.Visible := false;
  fMain.Position:=poScreenCenter;
  fMain.Visible := true;
end;

procedure TfSotrud.Button3Click(Sender: TObject);
begin
  DataModule2.SotrudTable.Locate('№_sotr', DataModule2.ADOQuery2.FieldByName('№_sotr').AsString, []);
  fSAdd.MaskEdit1.Text := DataModule2.SotrudTable.FieldByName('Telefon').AsString;
  fSAdd.Caption := 'Сотрудники - Просмотр';
  fSAdd.Button1.Visible := true;
  fSAdd.Button3.Visible := true;
  fSAdd.Button4.Visible := true;
  fSAdd.Button5.Visible := true;
  fSAdd.Button6.Visible := true;
  fSAdd.Button9.Visible := true;
  fSAdd.Button10.Visible := true;

  fSAdd.Visible := true;
  fSotrud.Visible := false;
end;

procedure TfSotrud.FormShow(Sender: TObject);
begin
if DBGrid1.DataSource.DataSet.FieldByName('Fam').Value = '' then
  begin
    Button3.Enabled := false;
    Button5.Enabled := false;
  end;
end;

procedure TfSotrud.Button8Click(Sender: TObject);
begin
  fSAdd.MaskEdit1.Text := '';
  DataModule2.SotrudTable.Insert;
  fSAdd.Button4.Click;
  fSAdd.Caption := 'Сотрудники - Просмотр';
  fSAdd.Button1.Visible := true;
  fSAdd.Button3.Visible := true;
  fSAdd.Button4.Visible := true;
  fSAdd.Button5.Visible := true;
  fSAdd.Button6.Visible := true;
  fSAdd.Button9.Visible := true;
  fSAdd.Button10.Visible := true;

  fSAdd.Visible := true;
  fSotrud.Visible := false;
end;

procedure TfSotrud.Button9Click(Sender: TObject);
begin
  Datamodule2.ADOQuery2.Filtered := False;
  DBLookUpComboBox1.KeyValue := null;
  DBLookUpComboBox3.KeyValue := null;
  DataModule2.ADOQuery2.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
  ComboBox1.ItemIndex := -1;
  fSotrud.Visible := false;
  fMain.Position:=poScreenCenter;
  fMain.Visible := true;
end;

procedure TfSotrud.DBLookupComboBox1Click(Sender: TObject);
begin
    DBLookUpComboBox3.KeyValue := null;
    DataModule2.ADOQuery2.Sort := '';
    RadioGroup1.ItemIndex := -1;
    RadioGroup2.ItemIndex := -1;
    RadioGroup2.Enabled := false;
if DBLookUpComboBox1.Text <> '' then
begin
  datamodule2.ADOQuery2.Filtered:= false;
  datamodule2.ADOQuery2.Filter:='id_f_f=' + #39 + DataModule2.ADOQuery1.FieldByName('id_f_f').AsString + #39 +
  ' AND ' +
  'Otdel='+ #39 + DBLookUpComboBox1.Text + #39 ;
  datamodule2.ADOQuery2.Filtered:=true;
end;
end;

procedure TfSotrud.DBLookupComboBox3Click(Sender: TObject);
begin
    DBLookUpComboBox1.KeyValue := null;
    DataModule2.ADOQuery1.Sort := '';
    RadioGroup1.ItemIndex := -1;
    RadioGroup2.ItemIndex := -1;
    RadioGroup2.Enabled := false;
if DBLookUpComboBox3.Text <> '' then
begin
  datamodule2.ADOQuery2.Filtered:= false;
  datamodule2.ADOQuery2.Filter:='id_f_f=' + #39 + DataModule2.ADOQuery1.FieldByName('id_f_f').AsString + #39 +
  ' AND ' +
  'Dolj='+ #39 + DBLookUpComboBox3.Text + #39 ;
  datamodule2.ADOQuery2.Filtered:=true;
end;
end;

procedure TfSotrud.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then Button1.Click;
end;

end.
