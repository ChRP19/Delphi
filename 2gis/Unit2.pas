unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, Grids, DBGrids, StdCtrls, DBCtrls, ComCtrls;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Button2: TButton;
    CheckBox1: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Button3: TButton;
    DateTimePicker3: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses DataMod, Glav, Unit3, Unit4, Unit6, Unit5;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
CheckBox1.Checked := false;
CheckBox2.Checked := false;
CheckBox3.Checked := false;
CheckBox4.Checked := false;
Datamodule2.ADOQuery4.Filtered := False;
DBLookupComboBox2.KeyValue := null;
DBLookupComboBox3.KeyValue := null;
Form2.Close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
CheckBox1.Checked := false;
CheckBox2.Checked := false;
CheckBox3.Checked := false;
CheckBox4.Checked := false;
Datamodule2.ADOQuery4.Filtered := False;
DBLookupComboBox2.KeyValue := null;
DBLookupComboBox3.KeyValue := null;
end;

procedure TForm2.DateTimePicker1Change(Sender: TObject);
begin
  if (CheckBox1.Checked) and (CheckBox2.Checked) and
      (CheckBox3.Checked) and (CheckBox4.Checked) then
      DataModule2.ADOQuery4.Filter := 'Data_oplati>=' + #39 + datetostr(DateTimePicker1.Date) + #39
      + ' AND ' +
      'Data_oplati<='+ #39 + datetostr(DateTimePicker2.Date) + #39
      + ' AND ' +
      'City=' + #39 + DBLookupComboBox2.Text + #39
      + ' AND ' +
      'Rubrika=' + #39 + DBLookupComboBox3.Text + #39
      + ' AND ' +
      'mes=' + #39 + FormatDateTime('MMMM yyyy', DateTimePicker3.Date) + #39
    else if (CheckBox1.Checked) and (CheckBox2.Checked) and
              (CheckBox3.Checked) then
              DataModule2.ADOQuery4.Filter := 'Data_oplati>=' + #39 + datetostr(DateTimePicker1.Date) + #39
              + ' AND ' +
              'Data_oplati<='+ #39 + datetostr(DateTimePicker2.Date) + #39
              + ' AND ' +
              'City=' + #39 + DBLookupComboBox2.Text + #39
              + ' AND ' +
              'Rubrika=' + #39 + DBLookupComboBox3.Text + #39
          else if (CheckBox1.Checked) and (CheckBox2.Checked) and
                    (CheckBox4.Checked) then
                    DataModule2.ADOQuery4.Filter := 'Data_oplati>=' + #39 + datetostr(DateTimePicker1.Date) + #39
                    + ' AND ' +
                    'Data_oplati<='+ #39 + datetostr(DateTimePicker2.Date) + #39
                    + ' AND ' +
                    'City=' + #39 + DBLookupComboBox2.Text + #39
                    + ' AND ' +
                    'mes=' + #39 + FormatDateTime('MMMM yyyy', DateTimePicker3.Date) + #39
                else if (CheckBox2.Checked) and (CheckBox3.Checked) and
                          (CheckBox4.Checked) then
                          DataModule2.ADOQuery4.Filter := 'City=' + #39 + DBLookupComboBox2.Text + #39
                          + ' AND ' +
                          'Rubrika=' + #39 + DBLookupComboBox3.Text + #39
                          + ' AND ' +
                          'mes=' + #39 + FormatDateTime('MMMM yyyy', DateTimePicker3.Date) + #39
                      else if (CheckBox1.Checked) and (CheckBox3.Checked) and
                                (CheckBox4.Checked) then
                                DataModule2.ADOQuery4.Filter := 'Data_oplati>=' + #39 + datetostr(DateTimePicker1.Date) + #39
                                + ' AND ' +
                                'Data_oplati<='+ #39 + datetostr(DateTimePicker2.Date) + #39
                                + ' AND ' +
                                'Rubrika=' + #39 + DBLookupComboBox3.Text + #39
                                + ' AND ' +
                                'mes=' + #39 + FormatDateTime('MMMM yyyy', DateTimePicker3.Date) + #39
                            else if (CheckBox1.Checked) and
                                      (CheckBox2.Checked) then
                                      DataModule2.ADOQuery4.Filter := 'Data_oplati>=' + #39 + datetostr(DateTimePicker1.Date) + #39 +
                                      ' AND ' +'Data_oplati<='+ #39 + datetostr(DateTimePicker2.Date) + #39
                                      + ' AND ' +
                                      'City=' + #39 + DBLookupComboBox2.Text + #39
                                  else if (CheckBox1.Checked) and
                                            (CheckBox3.Checked) then
                                            DataModule2.ADOQuery4.Filter := 'Data_oplati>=' + #39 + datetostr(DateTimePicker1.Date) + #39
                                            + ' AND ' +
                                            'Data_oplati<='+ #39 + datetostr(DateTimePicker2.Date) + #39
                                            + ' AND ' +
                                            'Rubrika=' + #39 + DBLookupComboBox3.Text + #39
                                        else if (CheckBox1.Checked) and
                                                  (CheckBox4.Checked) then
                                                  DataModule2.ADOQuery4.Filter := 'Data_oplati>=' + #39 + datetostr(DateTimePicker1.Date) + #39
                                                  + ' AND ' +
                                                  'Data_oplati<='+ #39 + datetostr(DateTimePicker2.Date) + #39
                                                  + ' AND ' +
                                                  'mes=' + #39 + FormatDateTime('MMMM yyyy', DateTimePicker3.Date) + #39
                                              else if (CheckBox2.Checked) and
                                                        (CheckBox3.Checked) then
                                                        DataModule2.ADOQuery4.Filter := 'City=' + #39 + DBLookupComboBox2.Text + #39
                                                        + ' AND ' + 'Rubrika=' + #39 + DBLookupComboBox3.Text + #39
                                                    else if (CheckBox2.Checked) and
                                                              (CheckBox4.Checked) then
                                                              DataModule2.ADOQuery4.Filter := 'City=' + #39 + DBLookupComboBox2.Text + #39
                                                              + ' AND '
                                                              + 'mes=' + #39 + FormatDateTime('MMMM yyyy', DateTimePicker3.Date) + #39
                                                          else if (CheckBox3.Checked) and
                                                                    (CheckBox4.Checked) then
                                                                    DataModule2.ADOQuery4.Filter := 'Rubrika=' + #39 + DBLookupComboBox3.Text + #39
                                                                    + ' AND ' +
                                                                    'mes=' + #39 + FormatDateTime('MMMM yyyy', DateTimePicker3.Date) + #39
                                                                else if (CheckBox1.Checked) then
                                                                DataModule2.ADOQuery4.Filter := 'Data_oplati>=' + #39 + datetostr(DateTimePicker1.Date) + #39
                                                                 + ' AND ' +
                                                                 'Data_oplati<='+ #39 + datetostr(DateTimePicker2.Date) + #39
                                                                      else if (CheckBox2.Checked) then
                                                                      DataModule2.ADOQuery4.Filter := 'City=' + #39 + DBLookupComboBox2.Text + #39
                                                                            else if (CheckBox3.Checked) then
                                                                            DataModule2.ADOQuery4.Filter := 'Rubrika=' + #39 + DBLookupComboBox3.Text + #39
                                                                                  else if (CheckBox4.Checked) then
                                                                                  DataModule2.ADOQuery4.Filter := 'mes=' + #39 + FormatDateTime('MMMM yyyy', DateTimePicker3.Date) + #39;



  DataModule2.ADOQuery4.Filtered:=true;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
DataModule2.ADOQuery4.Sort := '';
CheckBox1.Checked := false;
CheckBox2.Checked := false;
CheckBox3.Checked := false;
CheckBox4.Checked := false;
Datamodule2.ADOQuery4.Filtered := False;
DBLookupComboBox2.KeyValue := null;
DBLookupComboBox3.KeyValue := null;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
    begin
      DateTimePicker1.Enabled := true;
      DateTimePicker2.Enabled := true;
    end
  else
    begin
      DateTimePicker1.Enabled := false;
      DateTimePicker2.Enabled := false;
      DateTimePicker1.Date := strtodate('01.01.2017');
      DateTimePicker2.Date := now;
    end;
end;

procedure TForm2.CheckBox3Click(Sender: TObject);
begin
  if CheckBox3.Checked = true then
    begin
      DBLookupComboBox3.Enabled := true;
    end
  else
    begin
      DBLookupComboBox3.Enabled := false;
      DBLookupComboBox3.KeyValue := null;
    end;
end;

procedure TForm2.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then
    begin
      DBLookupComboBox2.Enabled := true;
      Button3.Enabled := true;
    end
  else
    begin
      Button3.Enabled := false;
      DBLookupComboBox2.Enabled := false;
      DBLookupComboBox2.KeyValue := null;
    end;
end;

procedure TForm2.CheckBox4Click(Sender: TObject);
begin
  if CheckBox4.Checked = true then
    begin
      DateTimePicker3.Enabled := true;
    end
  else
    begin
      DateTimePicker3.Enabled := false;
      DateTimePicker3.Date := now;
    end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := strtodate('01.01.2017');
  DateTimePicker2.Date := now;
  DateTimePicker3.Date := now;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  DataModule2.ADOQuery1.Locate('City', DbLookUpCombobox2.Text, []);
  if (CheckBox2.Checked) and (CheckBox3.Checked) and (CheckBox4.Checked) then
    begin
      DataModule2.ADOQuery4.Sort := 'Summa DESC';
      Form6.QRLabel3.Caption := DbLookUpCombobox2.Text;
      Form6.QuickRep1.Preview;
    end
      else if(CheckBox2.Checked) and (CheckBox3.Checked) then
      begin
        Form4.QRLabel3.Caption := DbLookUpCombobox2.Text;
        Form4.QuickRep1.Preview;
      end
        else if (CheckBox2.Checked) and (CheckBox4.Checked) then
        begin
          Form5.QRLabel2.Caption := DbLookUpCombobox2.Text;
          Form5.QuickRep1.Preview;
        end
          else if CheckBox2.Checked then
          begin
            Form3.QRLabel2.Caption := DbLookUpCombobox2.Text;
            Form3.QuickRep1.Preview;
          end
end;

end.
