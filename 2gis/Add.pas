unit Add;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ClipBrd, DBCtrls, StdCtrls, ExtDlgs, Mask, ComCtrls;

type
  TfAdd = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Button1: TButton;
    DBImage1: TDBImage;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    MaskEdit1: TMaskEdit;
    Button6: TButton;
    Button9: TButton;
    Button10: TButton;
    DBEdit1: TDBEdit;
    Button12: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Image2: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBImage2: TDBImage;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    MaskEdit2: TMaskEdit;
    DBEdit8: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Button13: TButton;
    Button14: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAdd: TfAdd;

implementation

uses DataMod, Unit1, City, Dolj, Otdel, Street, Sotrud, Clients, Main;

{$R *.dfm}

procedure TfAdd.Button1Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
    begin
      image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      Clipboard.Assign(image1.Picture.Graphic);
      Dbimage1.PasteFromClipboard;
    end;
end;

procedure TfAdd.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      MaskEdit1.Text := '';
      //DataModule2.SotrudTable.Delete;
      //DataModule2.RekvTable.Delete;
      DataModule2.FTable.Delete;
      application.Title:='Успех';
      showmessage('Запись удалена!');
      DataModule2.ADOQuery1.Close;
      DataModule2.ADOQuery1.Open;
      fAdd.Close;
    end;
end;

procedure TfAdd.Button5Click(Sender: TObject);
begin
  if (dbedit2.Text<>'') and (dbedit3.Text<>'') and (DBEdit9.Text <> '')
    and (DBEdit10.Text <> '') and (DBEdit11.Text <> '') and (dbedit4.Text<>'')
      and (DBlookupcombobox1.Text<>'') and (DBlookupcombobox2.Text<>'') and
      (DBlookupcombobox3.Text<>'') and (DBlookupcombobox6.Text<>'') and (MaskEdit1.Text<>'') then
        begin
          if (DBEdit5.Text <> '') and (DBEdit6.Text<>'') and (DBEdit7.Text <> '')
            and (DBEdit8.Text <> '') and (MaskEdit1.Text <> '') and (DBlookupcombobox4.Text<>'')
              and (DBlookupcombobox5.Text<>'') then
                begin
            DataModule2.SotrudTable.Edit;
            DataModule2.SotrudTable.Post;
            DataModule2.RekvTable.Edit;
            DataModule2.RekvTable.FieldByName('id_Rukov').AsString := DataModule2.SotrudTable.FieldByName('№_sotr').AsString;
            DataModule2.RekvTable.Post;
            DataModule2.FTable.Edit;
            DataModule2.FTable.FieldByName('id_rekv').AsString := DataModule2.RekvTable.FieldByName('id_rekv').AsString;
            DataModule2.FTable.FieldByName('telefon').AsString := MaskEdit1.Text;
            DataModule2.FTable.Post; //Сохранение


            button4.Enabled:=true;
            Button3.enabled:=true;
            Button1.enabled:=false;
            Button5.enabled:=false;
            Button6.enabled:=false;

            DBEDIT2.ReadOnly:=TRUE;
            DBEDIT3.ReadOnly:=TRUE;
            DBEDIT4.ReadOnly:=TRUE;

            dbimage1.ReadOnly:=TRUE;

            MaskEdit1.ReadOnly := true;

            DBlookupcombobox1.ReadOnly := TRUE;
            DBlookupcombobox2.ReadOnly := TRUE;
            DBlookupcombobox3.ReadOnly := TRUE;

            DBlookupcombobox1.Enabled := false;
            DBlookupcombobox2.Enabled := false;
            DBlookupcombobox3.Enabled := false;

            DataModule2.ADOQuery1.Close;
            DataModule2.ADOQuery1.Open;

            application.Title:='Успех';
            showmessage('Изменения сохранены!');
          end
        else
          begin
            PageControl1.ActivePageIndex := 1;
            Showmessage('Заполните поля!');
          end;
        end
  else
  begin
    application.Title:='Ошибка';
    showmessage('Заполните поля все!');
  end;
end;

procedure TfAdd.Button6Click(Sender: TObject);
begin
    DataModule2.FTable.CancelUpdates;
    DataModule2.RekvTable.CancelUpdates;
    DataModule2.SotrudTable.CancelUpdates;

    button4.Enabled:=true;
    Button3.enabled:=true;
    Button1.enabled:=false;
    Button5.enabled:=false;
    Button6.enabled:=false;


    DBEDIT2.ReadOnly:=TRUE;
    DBEDIT3.ReadOnly:=TRUE;
    DBEDIT4.ReadOnly:=TRUE;

    dbimage1.ReadOnly:=TRUE;

    MaskEdit1.ReadOnly := true;

    DBlookupcombobox1.ReadOnly := TRUE;
    DBlookupcombobox2.ReadOnly := TRUE;
    DBlookupcombobox3.ReadOnly := TRUE;


    DBlookupcombobox1.Enabled := false;
    DBlookupcombobox2.Enabled := false;
    DBlookupcombobox3.Enabled := false;

end;

procedure TfAdd.Button4Click(Sender: TObject);
begin

  DBEDIT2.ReadOnly := false;
  DBEDIT3.ReadOnly := false;
  DBEDIT4.ReadOnly := false;
  DBEDIT9.ReadOnly := false;
  DBEDIT10.ReadOnly := false;
  DBEDIT11.ReadOnly := false;

  dbimage1.ReadOnly := false;

  MaskEdit1.ReadOnly := false;

  DBlookupcombobox1.ReadOnly := false;
  DBlookupcombobox2.ReadOnly := false;
  DBlookupcombobox3.ReadOnly := false;
  DBlookupcombobox6.ReadOnly := false;

  DBlookupcombobox1.Enabled := true;
  DBlookupcombobox2.Enabled := true;
  DBlookupcombobox3.Enabled := true;
  DBlookupcombobox6.Enabled := true;

  button4.Enabled := false;
  button3.Enabled := false;
  button1.Enabled := true;
  button5.Enabled := true;
  button6.Enabled := true;

end;

procedure TfAdd.FormCreate(Sender: TObject);
begin
  MaskEdit1.Text :=  DataModule2.FTable.FieldByName('telefon').AsString;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfAdd.Button9Click(Sender: TObject);
begin
  fCity.ShowModal;
end;

procedure TfAdd.Button10Click(Sender: TObject);
begin
  fStreet.ShowModal;
end;

procedure TfAdd.Button11Click(Sender: TObject);
begin
Datamodule2.ADOQuery3.Filter:='id_f_f='+QuotedStr(fAdd.DBEdit1.Text);
datamodule2.ADOQuery3.Filtered:=true;
fClients.Label4.Caption := DBLookUpCombobox2.Text;
fClients.Position:=poScreenCenter;
fClients.Visible := true;
fAdd.Visible := false;
end;

procedure TfAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Button4.Enabled = false then
  begin
    ShowMessage('Нельзя закрыть окно. Запись не сохранена.');
    action := caNone;
  end
  else
    begin
      fAdd.Close;
    end;
end;

procedure TfAdd.Button12Click(Sender: TObject);
begin
  if Button4.Enabled = false then
  begin
    ShowMessage('Нельзя закрыть окно. Запись не сохранена.');
  end
  else
    begin
      fAdd.Close;
    end;
end;

procedure TfAdd.FormShow(Sender: TObject);
begin
PageControl1.ActivePageIndex := 0;
end;

procedure TfAdd.Button14Click(Sender: TObject);
begin
  DBEdit5.ReadOnly := false;
  DBEdit6.ReadOnly := false;
  DBEdit7.ReadOnly := false;
  DBEdit8.ReadOnly := false;

  DateTimePicker1.Enabled := true;
  MaskEdit2.ReadOnly := false;

  DBLookUpComboBox4.ReadOnly := false;
  DBLookUpComboBox5.ReadOnly := false;

  DBLookUpComboBox4.Enabled := true;
  DBLookUpComboBox5.Enabled := true;

  Button13.Enabled := true;
  Button14.Enabled := false;
end;

procedure TfAdd.Button13Click(Sender: TObject);
begin
  DBEdit5.ReadOnly := true;
  DBEdit6.ReadOnly := true;
  DBEdit7.ReadOnly := true;
  DBEdit8.ReadOnly := true;

  DateTimePicker1.Enabled := false;
  MaskEdit2.ReadOnly := true;

  DBLookUpComboBox4.ReadOnly := true;
  DBLookUpComboBox5.ReadOnly := true;

  DBLookUpComboBox4.Enabled := false;
  DBLookUpComboBox5.Enabled := false;

  Button13.Enabled := false;
  Button14.Enabled := true;
end;

procedure TfAdd.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
    if (Key in ['0'..'9',#8]) = False then
    Key:=Chr(0);
end;

procedure TfAdd.Button2Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
    begin
      image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      Clipboard.Assign(image2.Picture.Graphic);
      Dbimage2.PasteFromClipboard;
    end;
end;

end.
