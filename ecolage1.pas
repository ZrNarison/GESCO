unit ecolage1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    datasourceecolage1: TDataSource;
    ecolage1: TFDMemTable;
    ecolage1crd: TStringField;
    ecolage1esp: TStringField;
    ecolage1chq: TStringField;
    ecolage1mois: TStringField;
    ecolage1datepay: TStringField;
    DateTimePicker1: TDateTimePicker;
    DBLookupComboBox1: TDBLookupComboBox;
    ecolage1tmotn: TStringField;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    ecolage1cmtn: TStringField;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DateTimePicker2: TDateTimePicker;
    procedure Label15Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton6Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Ecolage2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses ecolage, base, login;

procedure TForm12.BitBtn5Click(Sender: TObject);
begin
if ((DbLookUpComboBox1.Text=DataModule2.AdoTable7.FieldByName('N°Matricule').AsString)
and(DateTimePicker2.Date=DataModule2.AdoTable7.FieldByName('Ecolage_mois').AsVariant))then
 begin
  with DataModule2 do
      begin
        ADOQuery9.SQL.Clear;
        AdoQuery9.SQL.Add('SELECT * FROM Ecolage');
        ADOQuery9.ExecSQL;
        ADOQuery9.Open;
        AdoDataSet3.Close;
        AdoDataSet3.Open;
        AdoDataSet2.Close;
        ADODataSet2.Open;
      end;
  showMessage('Ecolege de cette élève du mois déja payer');
  end
else
begin
  DataModule2.Adotable7.Append;
  DataModule2.AdoTable7.insert;
  DataModule2.AdoTable7.FieldByName('N°Matricule').Value:=DbLookUpComboBox1.Text;
  DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:=DateTimePicker2.Date;
  DataModule2.AdoTable7.FieldByName('Date_payer').Value:=DateTimePicker1.Date;
  DataModule2.ADOTable7.FieldByName('Responsable').Value:=Form17.DBLookupComboBox1.Text;
  if radioButton4.Checked then
    begin
      DataModule2.AdoTable7.FieldByName('Montant').Value:=DbEdit2.Text;
      DataModule2.AdoTable7.FieldByName('Mode_payement').Value:='N° Chéque :' +' '+ DBEdit4.Text;
    end;
  if radioButton5.Checked then
    begin
      DataModule2.AdoTable7.FieldByName('Montant').Value:=DbEdit1.Text ;
      DataModule2.AdoTable7.FieldByName('Mode_payement').Value:='Vennant du :' +' '+ DBEdit5.Text;
    end;
  if RadioButton6.Checked then
    begin
      DataModule2.AdoTable7.FieldByName('Montant').Value:=DbEdit6.Text ;
      DataModule2.AdoTable7.FieldByName('Mode_payement').Value:='Espèce';
    end;
  DataModule2.AdoTable7.FieldByName('Date_payer').Value:=datetostr(date);
  DBEdit4.Clear;DBEdit2.Clear;
  DBEdit5.Clear;DBEdit1.Clear;
  DBEdit6.Clear;
  With DataModule2 do
    begin
      ADOQuery9.SQL.Clear;
      AdoQuery9.SQL.Add('SELECT * FROM Ecolage');
      ADOQuery9.ExecSQL;
      ADOQuery9.Open;
      AdoDataSet3.Close;
      AdoDataSet3.Open;
      AdoDataSet2.Close;
      ADODataSet2.Open;
    end;
 end
end;

procedure TForm12.BitBtn6Click(Sender: TObject);
begin
  BitBtn6.Caption:='VA&LIDER';
  DataModule2.ADOTable7.Edit;
  DbGrid2.ReadOnly:=false;
  DbGrid2.Columns[3].ReadOnly:=true;
  DbGrid2.Columns[5].ReadOnly:=true;
  with DataModule2 do
  begin
    ADOQuery9.SQL.Clear;
    AdoQuery9.SQL.Add('SELECT * FROM Ecolage');
    ADOQuery9.ExecSQL;
    ADOQuery9.Open;
    AdoDataSet3.Close;
    AdoDataSet3.Open;
    AdoDataSet2.Close;
    ADODataSet2.Open;
  end;
end;

procedure TForm12.BitBtn7Click(Sender: TObject);
begin
dataModule2.Adotable7.Delete;
with DataModule2 do
 begin
   ADOQuery9.SQL.Clear;
   AdoQuery9.SQL.Add('SELECT * FROM Ecolage');
   ADOQuery9.ExecSQL;
   ADOQuery9.Open;
   AdoDataSet3.Close;
   AdoDataSet3.Open;
   AdoDataSet2.Close;
   ADODataSet2.Open;
 end;
end;

procedure TForm12.BitBtn8Click(Sender: TObject);
begin
DateTimePicker2.Date:=now;
DateTimePicker1.Date:=Now;
if radioButton4.Checked then
  begin
    DBEdit4.Clear;
    DBEdit2.Clear;
  end;
if radioButton5.Checked then
  begin
   DBEdit5.Clear;
   DBEdit1.Clear;
  end;
if radioButton6.Checked then
  begin
    DBEdit6.Clear;
  end;
with DataModule2 do
begin
  ADOQuery9.SQL.Clear;
  AdoQuery9.SQL.Add('SELECT * FROM Ecolage');
  ADOQuery9.ExecSQL;
  ADOQuery9.Open;
  AdoDataSet3.Close;
  AdoDataSet3.Open;
  AdoDataSet2.Close;
  ADODataSet2.Open;
end;
end;

procedure TForm12.CheckBox1Click(Sender: TObject);
begin
if CheckBox1.Checked then
begin
  DataModule2.ADOQuery6.SQL.Clear;
  DataModule2.ADOQuery6.SQL.Add('SELECT Etudiant.Classe FROM Etudiant GROUP BY Etudiant.Classe;');
  DataModule2.ADOQuery6.ExecSQL;
  DataModule2.ADOQuery6.Open;
//  DataModule2.ADOQuery9.SQL.Clear;
//  DataModule2.ADOQuery9.SQL.Add('SELECT Ecolage.N°Matricule, Ecolage.Ecolage_mois, Ecolage.Date_payer, Ecolage.Montant, Ecolage.Responsable FROM Ecolage  ORDER BY Ecolage.N°Matricule');
//  DataModule2.ADOQuery9.ExecSQL;
//  DataModule2.ADOQuery9.Open;
end;

end;

procedure TForm12.Ecolage2Click(Sender: TObject);
begin
with DataModule2 do
      begin
      ADOQuery9.SQL.Clear;
      AdoQuery9.SQL.Add('SELECT * FROM Ecolage');
      ADOQuery9.ExecSQL;
      ADOQuery9.Open;
    end
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DataModule2.ADOTable7.Active:=true;
Ecolage1.Active:=true;
DataModule2.ADOQuery11.Active:=true;
Label14.Visible:=false;DbEdit4.Visible:=false;Label2.Visible:=false;DbEdit2.Visible:=false;
Label13.Visible:=false;DbEdit5.Visible:=false;Label1.Visible:=false;DbEdit1.Visible:=false;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
BitBtn6.Caption:='&MODIFIER';
DbGrid2.ReadOnly:=true;
end;

procedure TForm12.Label15Click(Sender: TObject);
begin
Form12.Close;
Form10.ShowModal;
with DataModule2 do
      begin
      ADOQuery9.SQL.Clear;
      AdoQuery9.SQL.Add('SELECT * FROM Ecolage');
      ADOQuery9.ExecSQL;
      ADOQuery9.Open;
//      ADOQuery19.SQL.Clear;
//      AdoQuery19.SQL.Add('SELECT Ecolage.Ecolage_mois FROM Ecolage, Classee GROUP BY Ecolage.Ecolage_mois');
//      ADOQuery19.ExecSQL;
//      ADOQuery19.Open;
      end
end;

procedure TForm12.RadioButton4Click(Sender: TObject);
begin
Label12.Visible:=false;DbEdit6.Visible:=false;
Label13.Visible:=false;DbEdit5.Visible:=false;Label1.Visible:=false;DbEdit1.Visible:=false;
Label14.Visible:=true;DbEdit4.Visible:=true;Label2.Visible:=true;DbEdit2.Visible:=true;
end;

procedure TForm12.RadioButton5Click(Sender: TObject);
begin
Label14.Visible:=false;DbEdit4.Visible:=false;Label2.Visible:=false;DbEdit2.Visible:=false;
Label12.Visible:=false;DbEdit6.Visible:=false;
Label13.Visible:=true;DbEdit5.Visible:=true;Label1.Visible:=true;DbEdit1.Visible:=true;
end;

procedure TForm12.RadioButton6Click(Sender: TObject);
begin
Label13.Visible:=false;DbEdit4.Visible:=false;Label2.Visible:=false;DbEdit2.Visible:=false;
Label14.Visible:=false;DbEdit5.Visible:=false;Label1.Visible:=false;DbEdit1.Visible:=false;
label12.Visible:=true;DbEdit6.Visible:=true;
end;

end.
