unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Menus, StdCtrls, ExtCtrls, DBCtrls, jpeg;

type
  TfMain = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button6: TButton;
    Button7: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Button5: TButton;
    Button4: TButton;
    Button8: TButton;
    Button2: TButton;
    Button3: TButton;
    Button11: TButton;
    Label3: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button8Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

  srt, a, x: integer;

implementation

uses DataMod, City, Street, Otdel, Dolj, Auth, Pass, Add, DB, Sotrud, Rubr,
  Oplata, Glav, Unit2, Unit1, Clients;

{$R *.dfm}

procedure TfMain.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 1 then srt := 1
  else srt := 0;
  if RadioGroup1.ItemIndex > -1 then
    begin
      RadioGroup2.Enabled := true;
      RadioGroup2.ItemIndex := -1;
    end
  else RadioGroup2.Enabled := false;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
  srt := 0;
  a := 0;
  x := 0;
end;

procedure TfMain.RadioGroup2Click(Sender: TObject);
begin
  begin
    if srt = 0 then
      begin
        case RadioGroup2.ItemIndex of
          0: DataModule2.ADOQuery1.Sort := 'City';
          1: DataModule2.ADOQuery1.Sort := 'Street';
      end;
    end
  else
    begin
      case RadioGroup2.ItemIndex of
        0: DataModule2.ADOQuery1.Sort := 'City DESC';
        1: DataModule2.ADOQuery1.Sort := 'Street DESC';
      end;
    end;
  end;
end;

procedure TfMain.Button4Click(Sender: TObject);
begin
  srt := 0;
  a := 0;
  x := 0;
  datamodule2.ADOQuery1.Filtered := False;
  DBLookUpComboBox1.KeyValue := null;
  DBLookUpComboBox2.KeyValue := null;
  DataModule2.ADOQuery1.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
  fMain.Visible := false;
  fGlav.Position:=poScreenCenter;
  fGlav.Visible := true;

end;

procedure TfMain.Button6Click(Sender: TObject);
begin
    datamodule2.ADOQuery1.Filtered := False;
    DBLookUpComboBox1.KeyValue := null;
    DBLookUpComboBox2.KeyValue := null;
end;

procedure TfMain.Button7Click(Sender: TObject);
begin
  DataModule2.ADOQuery1.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
end;

procedure TfMain.Button1Click(Sender: TObject);
begin
  DataModule2.FTable.Locate('id_f_f', DataModule2.ADOQuery1.FieldByName('id_f_f').AsString, []);
  fAdd.MaskEdit1.Text :=  DataModule2.FTable.FieldByName('telefon').AsString;
  DataModule2.RekvTable.Locate('id_rekv', DataModule2.FTable.FieldByName('id_rekv').AsString, []);
  if DataModule2.SotrudTable.Locate('№_sotr', DataModule2.RekvTable.FieldByName('id_Rukov').AsString, [])
  then
    begin
      DataModule2.SotrudTable.Locate('№_sotr', DataModule2.RekvTable.FieldByName('id_Rukov').AsString, []);
    fAdd.PageControl1.Pages[1].tabVisible := true;
    end
  else fAdd.PageControl1.Pages[1].tabVisible := false;
  fAdd.Caption := 'Учет клиентов филиалов ДубльГИС - Редактор';
  fAdd.Button1.Visible := true;
  fAdd.Button2.Visible := true;
  fAdd.Button3.Visible := true;
  fAdd.Button4.Visible := true;
  fAdd.Button5.Visible := true;
  fAdd.Button6.Visible := true;
  fAdd.Button9.Visible := true;
  fAdd.Button10.Visible := true;
  fAdd.Button13.Visible := true;
  fAdd.Button14.Visible := true;
  fAdd.ShowModal;
end;

procedure TfMain.Button5Click(Sender: TObject);
begin
  DataModule2.FTable.Locate('id_f_f', DataModule2.ADOQuery1.FieldByName('id_f_f').AsString, []);
  fAdd.MaskEdit1.Text :=  DataModule2.FTable.FieldByName('telefon').AsString;
  DataModule2.RekvTable.Locate('id_rekv', DataModule2.FTable.FieldByName('id_rekv').AsString, []);
  if DataModule2.SotrudTable.Locate('№_sotr', DataModule2.RekvTable.FieldByName('id_Rukov').AsString, [])
  then
    begin
      DataModule2.SotrudTable.Locate('№_sotr', DataModule2.RekvTable.FieldByName('id_Rukov').AsString, []);
      fAdd.PageControl1.Pages[1].tabVisible := true;
    end
  else fAdd.PageControl1.Pages[1].tabVisible := false;
  fAdd.Caption := 'Учет клиентов филиалов ДубльГИС - Просмотр';
  fAdd.Button1.Visible := false;
  fAdd.Button2.Visible := false;
  fAdd.Button3.Visible := false;
  fAdd.Button4.Visible := false;
  fAdd.Button5.Visible := false;
  fAdd.Button6.Visible := false;
  fAdd.Button9.Visible := false;
  fAdd.Button10.Visible := false;
  fAdd.Button13.Visible := false;
  fAdd.Button14.Visible := false;
  fAdd.ShowModal;
end;

procedure TfMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  datamodule2.ADOQuery1.Filtered := False;
  DBLookUpComboBox1.KeyValue := null;
  DBLookUpComboBox2.KeyValue := null;
  DataModule2.ADOQuery1.Sort := '';
  RadioGroup1.ItemIndex := -1;
  RadioGroup2.ItemIndex := -1;
  RadioGroup2.Enabled := false;
  fGlav.Position:=poScreenCenter;
  fGlav.Visible := true;
end;

procedure TfMain.Button8Click(Sender: TObject);
begin
  fAdd.Caption := 'Учет клиентов филиалов ДубльГИС - Добавление';
  fAdd.Button1.Visible := true;
  fAdd.Button2.Visible := true;
  fAdd.Button3.Visible := true;
  fAdd.Button4.Visible := true;
  fAdd.Button5.Visible := true;
  fAdd.Button6.Visible := true;
  fAdd.Button9.Visible := true;
  fAdd.Button10.Visible := true;
  fAdd.Button13.Visible := true;
  fAdd.Button14.Visible := true;
  fAdd.MaskEdit1.Text := '';
  DataModule2.FTable.Insert;
  DataModule2.RekvTable.Insert;
  DataModule2.SotrudTable.Insert;
  fAdd.button4.Click;
  fAdd.ShowModal;
end;

procedure TfMain.DBLookupComboBox1Click(Sender: TObject);
begin
    DBLookUpComboBox2.KeyValue := null;
    DataModule2.ADOQuery1.Sort := '';
    RadioGroup1.ItemIndex := -1;
    RadioGroup2.ItemIndex := -1;
    RadioGroup2.Enabled := false;
if DBLookUpComboBox1.Text <> '' then
begin
  datamodule2.ADOQuery1.Filter:='Type='''+DBLookUpComboBox1.Text+'''';
  datamodule2.ADOQuery1.Filtered:=true;
end;
end;

procedure TfMain.DBLookupComboBox2Click(Sender: TObject);
begin
    DBLookUpComboBox1.KeyValue := null;
    DataModule2.ADOQuery1.Sort := '';
    RadioGroup1.ItemIndex := -1;
    RadioGroup2.ItemIndex := -1;
    RadioGroup2.Enabled := false;
  if DBLookUpComboBox2.Text <> '' then
begin
  datamodule2.ADOQuery1.Filter:='City='''+DBLookUpComboBox2.Text+'''';
  datamodule2.ADOQuery1.Filtered:=true;
end;
end;

procedure TfMain.Button2Click(Sender: TObject);
begin
  Datamodule2.ADOQuery2.Filter:='id_f_f='+QuotedStr(DataModule2.ADOQuery1.FieldByName('id_f_f').AsString);
  Datamodule2.ADOQuery2.Filtered:=true;
  Form1.QuickRep1.Preview;
end;

procedure TfMain.Button3Click(Sender: TObject);
begin
Datamodule2.ADOQuery2.Filter:='id_f_f='+QuotedStr(DataModule2.ADOQuery1.FieldByName('id_f_f').AsString);
datamodule2.ADOQuery2.Filtered:=true;
fSotrud.Label2.Caption := DataModule2.ADOQuery1.FieldByName('City').AsString;
if DataModule2.ADOQuery2.FieldByName('Fam').AsString <> '' then
  begin
    fSotrud.Button3.Enabled := true;
    fSotrud.Button5.Enabled := true;
  end
else
  begin
    fSotrud.Button3.Enabled := false;
    fSotrud.Button5.Enabled := false;
  end;
fSotrud.Position:=poScreenCenter;
fSotrud.Visible := true;
fAdd.Visible := false;
end;

procedure TfMain.Button11Click(Sender: TObject);
begin
Datamodule2.ADOQuery3.Filter:='id_f_f='+QuotedStr(DataModule2.ADOQuery1.FieldByName('id_f_f').AsString);
datamodule2.ADOQuery3.Filtered:=true;
fClients.Label4.Caption := DataModule2.ADOQuery1.FieldByName('City').AsString;
if DataModule2.ADOQuery3.FieldByName('Name_org').AsString <> '' then
  begin
    fClients.Button3.Enabled := true;
    fClients.Button5.Enabled := true;
  end
else
  begin
    fClients.Button3.Enabled := false;
    fClients.Button5.Enabled := false;
  end;
fClients.Position:=poScreenCenter;
fClients.Visible := true;
fAdd.Visible := false;
end;

end.




