unit ecolage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons;

type
  TForm10 = class(TForm)
    FDMemTable1: TFDMemTable;
    FDMemTable1crd: TStringField;
    FDMemTable1esp: TStringField;
    FDMemTable1chq: TStringField;
    FDMemTable1mois: TStringField;
    FDMemTable1datepay: TStringField;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    FDMemTable1tmnt: TStringField;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    FDMemTable1cmtn: TStringField;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DateTimePicker2: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure PageControl1Enter(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses base, ecolage1, login;

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
if (DBLookUpComboBox1.Text<>'') then
begin
   if (DBLookUpComboBox1.Text=DataModule2.AdoTable7.FieldByName('N?Matricule').AsString)
    and (DateTimePicker2.Date=DataModule2.AdoTable7.FieldByName('Ecolage_mois').AsVariant) then
      begin
      with DataModule2 do
      begin
        ADOQuery9.Close;
        ADOQuery9.SQL.Clear;
        AdoQuery9.SQL.Add('SELECT * FROM Ecolage');
        ADOQuery9.ExecSQL;
        ADOQuery9.Open;
        AdoDataSet3.Close;
        AdoDataSet3.Open;
      end;
        showMessage('Ecolege de cette ?l?ve du mois  d?ja payer');
      end
    else
    begin
      DateTimePicker1.Date:=now;
      DataModule2.Adotable7.Append;
      DataModule2.AdoTable7.insert;
      DataModule2.AdoTable7.FieldByName('N?Matricule').Value:=DbLookUpComboBox1.Text;
      DataModule2.AdoTable7.FieldByName('Ecolage_mois').Value:=DateTimePicker2.Date;
      DataModule2.AdoTable7.FieldByName('Date_payer').Value:=DateTimePicker1.Date;
      if RadioButton1.Checked then
        begin
          if (DBedit1.Text <> '') then
          begin
            if (DBedit5.Text<>'')then
            begin
              DataModule2.ADOTable7.FieldByName('Montant').Value:=DBEdit5.Text ;
              DataModule2.ADOTable7.FieldByName('Mode_payement').Value:='N? Ch?que: '+DbEdit1.Text;
            end
            else
            showMessage(uppercase('Merci de precis? la montant vers? par ch?que!'));
          end
        else
            showMessage(uppercase('Merci de precis? la N? de ch?que !'))
        end;
      if Radiobutton2.Checked then
        begin
        if (DBEdit2.Text<>'') then
        begin
          if DBEdit4.Text<>''then
          begin
          DataModule2.ADOTable7.FieldByName('Montant').Value:=DBEdit4.Text ;
          DataModule2.ADOTable7.FieldByName('Mode_payement').Value:='Vennant du: '+DbEdit2.Text;
        end
        end
        else
          showMessage('Merci de precis? la montant transfer? par r?seau!')
        end;
      if RadioButton3.Checked then
        begin
          if (DbEdit3.Text<>'') then
          begin
            DataModule2.AdoTable7.FieldByName('Montant').Value:=DbEdit3.Text ;
            DataModule2.AdoTable7.FieldByName('Mode_payement').Value:='Esp?ce';
          end
          else
          showMessage('Merci de precis? la montant !')
        end;
          DataModule2.AdoTable7.FieldByName('Date_payer').Value:=DateTimePicker1.Date;
          DataModule2.AdoTable7.FieldByName('Responsable').Value:=Form17.DBLookUpComboBox1.Text;
          DataModule2.AdoTable7.Post;
        with DataModule2 do
          begin
            adoQuery9.Close;
            ADOQuery9.SQL.Clear;
            AdoQuery9.SQL.Add('SELECT N?Matricule,Ecolage_mois, Date_payer, Montant,Responsable FROM Ecolage GROUP BY N?Matricule,Ecolage_mois,Date_payer,Montant,Responsable HAVING (Ecolage_mois=''' + DBLookUpComboBox2.Text+''')');
            ADOQuery9.ExecSQL;
            ADOQuery9.Open;
            AdoDataSet2.Close;
            ADODataSet2.Open;
            AdoDataSet3.Close;
            AdoDataSet3.Open;
          end

      end;
  end
else
showMessage('Numero Matricule (N??tudiant), incorrect!')
end;

procedure TForm10.BitBtn2Click(Sender: TObject);
begin
BitBtn2.Caption:='VA&LIDER';
DataModule2.ADOTable7.Edit;
DbGrid1.ReadOnly:=false;
DBGrid1.Columns[2].ReadOnly:=true;
DBGrid1.Columns[3].ReadOnly:=true;
//with DataModule2 do
//begin
//    adoQuery9.Active:=true;
//    ADOQuery9.SQL.Clear;
//    AdoQuery9.SQL.Add('SELECT N?Matricule,Ecolage_mois, Date_payer,Montant, Responsable FROM Ecolage GROUP BY N?Matricule, Ecolage_mois, Date_payer, Montant, Responsable HAVING (([Ecolage_mois]) Like ''*'+DBLookUpComboBox2.Text+'*'')');
//    ADOQuery9.ExecSQL;
//    ADOQuery9.Open;
//    AdoQuery9.Close;
//    AdoQuery9.Active:=true;
//    AdoDataSet2.Close;
//    ADODataSet2.Open;
//end;
end;

procedure TForm10.BitBtn3Click(Sender: TObject);
begin
//with DataModule2 do
//begin
//    adoQuery9.Active:=true;
//    ADOQuery9.SQL.Clear;
//    AdoQuery9.SQL.Add('SELECT N?Matricule,Ecolage_mois, Date_payer,Montant, Responsable FROM Ecolage GROUP BY N?Matricule, Ecolage_mois, Date_payer, Montant, Responsable HAVING (([Ecolage_mois]) Like ''*'+DBLookUpComboBox2.Text+'*'')');
//    ADOQuery9.ExecSQL;
//    ADOQuery9.Open;
//    AdoQuery9.Close;
//    AdoQuery9.Active:=true;
//    AdoDataSet2.Close;
//    ADODataSet2.Open;
//end;
end;

procedure TForm10.BitBtn4Click(Sender: TObject);
begin
with DataModule2 do
begin
    adoQuery9.Active:=true;
    ADOQuery9.SQL.Clear;
    AdoQuery9.SQL.Add('SELECT N?Matricule,Ecolage_mois, Date_payer,Montant, Responsable FROM Ecolage GROUP BY N?Matricule, Ecolage_mois, Date_payer, Montant, Responsable HAVING ((([Ecolage_mois]) Like '''+DBLookUpComboBox2.Text+'''))');
    ADOQuery9.ExecSQL;
    ADOQuery9.Open;
    AdoDataSet2.Close;
    ADODataSet2.Open;
end;
end;

procedure TForm10.DBGrid1Enter(Sender: TObject);
begin
Form10.ClientWidth.ToDouble;
DbGrid1.Width.ToDouble;
end;

procedure TForm10.DBLookupComboBox2Click(Sender: TObject);
Var j,m,y:word;
begin
with DataModule2 do
begin
    adoQuery9.Active:=true;
    ADOQuery9.SQL.Clear;
    AdoQuery9.SQL.Add('SELECT N?Matricule,Ecolage_mois, Date_payer,Montant, Responsable FROM Ecolage GROUP BY N?Matricule, Ecolage_mois, Date_payer, Montant, Responsable HAVING ((([Ecolage_mois]) Like '''+DBLookUpComboBox2.Text+'''))');
    ADOQuery9.ExecSQL;
    ADOQuery9.Open;
    AdoDataSet2.Close;
    ADODataSet2.Open;
end;
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
label7.Visible:=false; DbEdit1.Visible:=false;Label10.Visible:=false;DbEdit5.Visible:=false;
label6.Visible:=false; DbEdit2.Visible:=false;Label9.Visible:=false;DbEdit4.Visible:=false;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
FDMemTable1.Active:=true;
With DataModule2 do
begin
  ADOTable7.Active:=true;
  ADODataSet2.Close;
  ADODataSet2.open;
end;
label7.Visible:=false; DbEdit1.Visible:=false;Label10.Visible:=false;DbEdit5.Visible:=false;
label6.Visible:=false; DbEdit2.Visible:=false;Label9.Visible:=false;DbEdit4.Visible:=false;
with DataModule2 do
begin
    adoQuery9.Active:=true;
    ADOQuery9.SQL.Clear;
    AdoQuery9.SQL.Add('SELECT N?Matricule,Ecolage_mois, Date_payer,Montant, Responsable FROM Ecolage GROUP BY N?Matricule, Ecolage_mois, Date_payer, Montant, Responsable HAVING ((([Ecolage_mois]) Like '''+DBLookUpComboBox2.Text+'''))');
    ADOQuery9.ExecSQL;
    ADOQuery9.Open;
    AdoDataSet2.Close;
    ADODataSet2.Open;
end;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
BitBtn2.Caption:='&MODIFIER';
DbGrid1.ReadOnly:=true;
if RadioButton1.Checked then
label7.Visible:=true; DbEdit1.Visible:=true;DbEdit1.Enabled:=true;
if RadioButton2.Checked then label6.Visible:=true; DbEdit2.Visible:=true;DbEdit2.Enabled:=true;
if RadioButton3.Checked then label5.Visible:=true; DbEdit3.Visible:=true;DbEdit3.Enabled:=true;
with DataModule2 do
begin
    adoQuery9.Active:=true;
    ADOQuery9.SQL.Clear;
    AdoQuery9.SQL.Add('SELECT N?Matricule,Ecolage_mois, Date_payer,Montant, Responsable FROM Ecolage GROUP BY N?Matricule, Ecolage_mois, Date_payer, Montant, Responsable HAVING ((([Ecolage_mois]) Like '''+DBLookUpComboBox2.Text+'''))');
    ADOQuery9.ExecSQL;
    ADOQuery9.Open;
    AdoDataSet2.Close;
    ADODataSet2.Open;
end;
end;

procedure TForm10.Label8Click(Sender: TObject);
begin
Form10.Close;
Form12.Show;
end;

procedure TForm10.PageControl1Enter(Sender: TObject);
begin
Label7.Visible:=false;DbEdit1.Visible:=false;
Label6.Visible:=false;DbEdit2.Visible:=false;
Label5.Visible:=false;DbEdit3.Visible:=false;
end;

procedure TForm10.RadioButton1Click(Sender: TObject);
begin
label7.Visible:=true; DbEdit1.Visible:=true;Label10.Visible:=true;DbEdit5.Visible:=true;
label6.Visible:=false; DbEdit2.Visible:=false;Label9.Visible:=false;DbEdit4.Visible:=false;
Label5.Visible:=false; Dbedit3.Visible:=false;
end;

procedure TForm10.RadioButton2Click(Sender: TObject);
begin
label7.Visible:=false; DbEdit1.Visible:=false;Label10.Visible:=false;DbEdit5.Visible:=false;
label6.Visible:=true; DbEdit2.Visible:=true;Label9.Visible:=true;DbEdit4.Visible:=true;
Label5.Visible:=false; Dbedit3.Visible:=false;
end;

procedure TForm10.RadioButton3Click(Sender: TObject);
begin
label7.Visible:=false; DbEdit1.Visible:=false;Label10.Visible:=false;DbEdit5.Visible:=false;
label6.Visible:=false; DbEdit2.Visible:=false;Label9.Visible:=false;DbEdit4.Visible:=false;
Label5.Visible:=true; Dbedit3.Visible:=true;
end;

end.
