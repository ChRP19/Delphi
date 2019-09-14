unit SAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, Mask, ExtCtrls, DBCtrls, StdCtrls, ClipBrd, ComCtrls;

type
  TfSAdd = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DBImage1: TDBImage;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    MaskEdit1: TMaskEdit;
    Button6: TButton;
    Button9: TButton;
    Button10: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Label1: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Button6Click(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSAdd: TfSAdd;

implementation

uses DataMod, Dolj, Otdel, Add, Sotrud;

{$R *.dfm}

procedure TfSAdd.Button2Click(Sender: TObject);
begin
fSAdd.Visible := false;
fSotrud.Visible := true;
end;

procedure TfSAdd.Button10Click(Sender: TObject);
begin
fDolj.ShowModal;
end;

procedure TfSAdd.Button9Click(Sender: TObject);
begin
fOtdel.ShowModal;
end;

procedure TfSAdd.Button4Click(Sender: TObject);
begin

  dbimage1.ReadOnly := false;

  MaskEdit1.ReadOnly := false;

  DateTimePicker1.Enabled := true;

  DBlookupcombobox1.ReadOnly := false;
  DBlookupcombobox3.ReadOnly := false;

  DBlookupcombobox1.Enabled := true;
  DBlookupcombobox3.Enabled := true;

  DBEdit1.ReadOnly := false;
  DBEdit2.ReadOnly := false;
  DBEdit3.ReadOnly := false;
  DBEdit4.ReadOnly := false;

  button4.Enabled := false;
  button3.Enabled := false;
  button1.Enabled := true;
  button5.Enabled := true;
  button6.Enabled := true;

end;

procedure TfSAdd.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      MaskEdit1.Text := '';
      DataModule2.SotrudTable.Delete;
      application.Title:='Успех';
      showmessage('Запись удалена!');
      DataModule2.ADOQuery2.Close;
      DataModule2.ADOQuery2.Open;
  end;
end;

procedure TfSAdd.Button1Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
    begin
      image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      Clipboard.Assign(image1.Picture.Graphic);
      Dbimage1.PasteFromClipboard;
    end;
end;

procedure TfSAdd.Button5Click(Sender: TObject);
begin
if  (dbedit2.Text<>'') and (dbedit1.Text<>'') and
    (dbedit3.Text<>'') and (dbedit4.Text<>'') and (DBlookupcombobox1.Text<>'') and
      (DBlookupcombobox3.Text<>'') and (MaskEdit1.Text <> '') then
  begin
    DataModule2.SotrudTable.Edit;

    DataModule2.SotrudTable.FieldByName('telefon').AsString := MaskEdit1.Text;
    DataModule2.SotrudTable.FieldByName('Date_B').AsString := DateToStr(DateTimePicker1.Date);
    DataModule2.SotrudTable.FieldByName('id_f_f').AsString := fAdd.DBEdit1.Text;
    DataModule2.SotrudTable.Post; //Сохранение

    button4.Enabled:=true;
    Button3.enabled:=true;
    Button1.enabled:=false;
    Button5.enabled:=false;
    Button6.enabled:=false;

    DBEDIT1.ReadOnly:=TRUE;
    DBEDIT2.ReadOnly:=TRUE;
    DBEDIT3.ReadOnly:=TRUE;
    DBEDIT4.ReadOnly:=TRUE;

    DateTimePicker1.Enabled := false;

    dbimage1.ReadOnly:=TRUE;

    MaskEdit1.ReadOnly := true;

    DBlookupcombobox1.ReadOnly := TRUE;
    DBlookupcombobox3.ReadOnly := TRUE;


    DBlookupcombobox1.Enabled := false;
    DBlookupcombobox3.Enabled := false;

    DataModule2.ADOQuery2.Close;
    DataModule2.ADOQuery2.Open;

    application.Title:='Успех';
    showmessage('Изменения сохранены!');
  end
else
  begin
    application.Title:='Ошибка';
    showmessage('Изменения не внесены!');
  end;
end;

procedure TfSAdd.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text := DataModule2.SotrudTable.FieldByName('telefon').AsString;
  DateTimePicker1.Date := StrToDate(DataModule2.SotrudTable.FieldByName('Date_B').AsString);
end;

procedure TfSAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Button4.Enabled = false then
  begin
    ShowMessage('Нельзя закрыть окно. Запись не сохранена.');
    action := caNone;
  end
  else
    begin
      fSAdd.Visible := false;
      fSotrud.Visible := true;
    end;
end;

procedure TfSAdd.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
begin
  MaskEdit1.Text := DataModule2.SotrudTable.FieldByName('telefon').AsString;
  DateTimePicker1.Date := StrToDate(DataModule2.SotrudTable.FieldByName('Date_B').AsString);
end;

procedure TfSAdd.Button6Click(Sender: TObject);
begin
    fSAdd.Close;
    DataModule2.SotrudTable.CancelUpdates;

    button4.Enabled:=true;
    Button3.enabled:=true;
    Button1.enabled:=false;
    Button5.enabled:=false;
    Button6.enabled:=false;

    DBEDIT1.ReadOnly:=TRUE;
    DBEDIT2.ReadOnly:=TRUE;
    DBEDIT3.ReadOnly:=TRUE;
    DBEDIT4.ReadOnly:=TRUE;

    dbimage1.ReadOnly:=TRUE;

    MaskEdit1.ReadOnly := true;
    DateTimePicker1.Enabled := false;

    DBlookupcombobox1.ReadOnly := TRUE;
    DBlookupcombobox3.ReadOnly := TRUE;

    DBlookupcombobox1.Enabled := false;
    DBlookupcombobox3.Enabled := false;

end;

procedure TfSAdd.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    'A'..'Я':;
    'а'..'я':;
    #8:;
    #32:;
  else key := chr(0);
  end;
end;

end.
