unit CAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtDlgs, Mask, DBCtrls, StdCtrls, ExtCtrls, ClipBrd;

type
  TfCAdd = class(TForm)
    Image1: TImage;
    Label2: TLabel;
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
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    MaskEdit1: TMaskEdit;
    Button6: TButton;
    Button9: TButton;
    Button10: TButton;
    DBEdit1: TDBEdit;
    OpenPictureDialog1: TOpenPictureDialog;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCAdd: TfCAdd;

implementation

uses DataMod, Add, SAdd, Rubr, Street, Oplata, Clients, UchOplat;

{$R *.dfm}

procedure TfCAdd.Button2Click(Sender: TObject);
begin
  if Button4.Enabled = false then
  begin
    ShowMessage('Нельзя закрыть окно. Запись не сохранена.');
  end
  else
    begin
      fCAdd.Visible := false;
      fClients.Visible := true;
    end;
end;

procedure TfCAdd.Button4Click(Sender: TObject);
begin

  DBEDIT1.ReadOnly := false;
  DBEDIT2.ReadOnly := false;
  DBEDIT3.ReadOnly := false;
  DBEDIT4.ReadOnly := false;
  DBEDIT5.ReadOnly := false;

  dbimage1.ReadOnly := false;

  MaskEdit1.ReadOnly := false;

  DBlookupcombobox1.ReadOnly := false;
  DBlookupcombobox2.ReadOnly := false;

  DBlookupcombobox1.Enabled := true;
  DBlookupcombobox2.Enabled := true;

  button4.Enabled := false;
  button3.Enabled := false;
  button1.Enabled := true;
  button5.Enabled := true;
  button6.Enabled := true;
end;

procedure TfCAdd.Button3Click(Sender: TObject);
begin
  if messageDlg('Вы уверены?', mtConfirmation, [mbYes,mbNo],0)=mrYes then
    begin
      MaskEdit1.Text := '';
      DataModule2.ClientsTable.Delete;
      application.Title:='Успех';
      showmessage('Запись удалена!');
      DataModule2.ADOQuery3.Close;
      DataModule2.ADOQuery3.Open;
    end;
end;

procedure TfCAdd.Button1Click(Sender: TObject);
begin
 if OpenPictureDialog1.Execute then
    begin
      image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      Clipboard.Assign(image1.Picture.Graphic);
      Dbimage1.PasteFromClipboard;
    end;
end;

procedure TfCAdd.Button5Click(Sender: TObject);
begin
      if (dbedit1.Text<>'') and (dbedit2.Text<>'') and (dbedit3.Text<>'') and
          (dbedit4.Text<>'') and (DBlookupcombobox1.Text<>'') and (DBlookupcombobox2.Text<>'') and
             (MaskEdit1.Text <> '') then
      begin
        DataModule2.ClientsTable.Edit;

        DataModule2.ClientsTable.FieldByName('telefon').AsString := MaskEdit1.Text;
        DataModule2.ClientsTable.FieldByName('id_f_f').AsString := fAdd.DBEdit1.Text;
        DataModule2.ClientsTable.Post; //Сохранение

        button4.Enabled:=true;
        Button3.enabled:=true;
        Button1.enabled:=false;
        Button5.enabled:=false;
        Button6.enabled:=false;

        DBEDIT1.ReadOnly:=TRUE;
        DBEDIT2.ReadOnly:=TRUE;
        DBEDIT3.ReadOnly:=TRUE;
        DBEDIT4.ReadOnly:=TRUE;
        DBEDIT5.ReadOnly:=TRUE;

        dbimage1.ReadOnly:=TRUE;

        MaskEdit1.ReadOnly := true;

        DBlookupcombobox1.ReadOnly := TRUE;
        DBlookupcombobox2.ReadOnly := TRUE;

        DBlookupcombobox1.Enabled := false;
        DBlookupcombobox2.Enabled := false;

        DataModule2.ADOQuery3.Close;
        DataModule2.ADOQuery3.Open;

        application.Title:='Успех';
        showmessage('Изменения сохранены!');
      end
  else
  begin
    application.Title:='Ошибка';
    showmessage('Заполните поля все!');
  end;
end;

procedure TfCAdd.Button6Click(Sender: TObject);
begin
    fCAdd.Close;
    DataModule2.ClientsTable.CancelUpdates;

    button4.Enabled:=true;
    Button3.enabled:=true;
    Button1.enabled:=false;
    Button5.enabled:=false;
    Button6.enabled:=false;

    DBEDIT1.ReadOnly:=TRUE;
    DBEDIT2.ReadOnly:=TRUE;
    DBEDIT3.ReadOnly:=TRUE;
    DBEDIT4.ReadOnly:=TRUE;
    DBEDIT5.ReadOnly:=TRUE;

    dbimage1.ReadOnly:=TRUE;

    MaskEdit1.ReadOnly := true;

    DBlookupcombobox1.ReadOnly := TRUE;
    DBlookupcombobox2.ReadOnly := TRUE;

    DBlookupcombobox1.Enabled := false;
    DBlookupcombobox2.Enabled := false;

end;

procedure TfCAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Button4.Enabled = false then
  begin
    ShowMessage('Нельзя закрыть окно. Запись не сохранена.');
    action := caNone;
  end
  else
    begin
      fCAdd.Visible := false;
      fClients.Visible := true;
    end;
end;

procedure TfCAdd.FormCreate(Sender: TObject);
begin
  fSAdd.MaskEdit1.Text := DataModule2.SotrudTable.FieldByName('Telefon').AsString;
end;

procedure TfCAdd.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
    if (Key in ['0'..'9',#8]) = False then
    Key:=Chr(0);
end;

procedure TfCAdd.Button9Click(Sender: TObject);
begin
fRubr.ShowModal;
end;

procedure TfCAdd.Button10Click(Sender: TObject);
begin
fStreet.ShowModal;
end;

end.
