unit professeur;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, Vcl.Mask, Vcl.DBCtrls, frxCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Buttons, Vcl.ComCtrls;

type
  TForm6 = class(TForm)
    FDMemTable1: TFDMemTable;
    FDMemTable1date: TStringField;
    FDMemTable1cin: TStringField;
    DataSource1: TDataSource;
    FDMemTable1tel: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    frxComboEdit1: TfrxComboEdit;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    Label14: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label15: TLabel;
    FDMemTable1sal: TStringField;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Label14Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses base, stat_prof;

procedure TForm6.BitBtn1Click(Sender: TObject);
begin
if
(Edit1.Text=DataModule2.AdoTable4.FieldByName('Appellation').AsString)
or
(DBEdit2.Text=DataModule2.AdoTable4.FieldByName('N°CIN').AsString) then
showMessage('Professeur existant (e)!')
else
begin
  DataModule2.Adotable4.Append;
  DataModule2.AdoTable4.insert;
  DataModule2.AdoTable4.FieldByName('Appellation').Value:=Edit1.Text;
  DataModule2.AdoTable4.FieldByName('Nom').Value:=UpperCase(Edit2.Text);
  DataModule2.AdoTable4.FieldByName('Prenom').Value:=Edit3.Text;
  DataModule2.AdoTable4.FieldByName('Date_naissance').Value:=DateTimePicker1.Date;
  DataModule2.AdoTable4.FieldByName('Lieu_naissance').Value:=UpperCase(Edit4.Text);
  DataModule2.AdoTable4.FieldByName('Diplome').Value:=UpperCase(frxComboEdit1.Text);
  DataModule2.AdoTable4.FieldByName('N°CIN').Value:=DBEdit2.Text;
  DataModule2.AdoTable4.FieldByName('Adress').Value:=UpperCase(Edit5.Text);
  DataModule2.AdoTable4.FieldByName('Contact').Value:=DBEdit3.Text;
  DataModule2.AdoTable4.FieldByName('D_Classe').Value:=DBLookUpCombobox2.Text;
  DataModule2.AdoTable4.FieldByName('F_Classe').Value:=DBLookUpCombobox3.Text;
  DataModule2.AdoTable4.FieldByName('Matiere').Value:=UpperCase(DBLookUpCombobox1.Text);
  DataModule2.AdoTable4.FieldByName('Salaire').Value:=DbEdit1.Text;
  DataModule2.AdoTable4.Post;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  frxComboEdit1.ItemIndex:=0;
  Dbedit2.clear;
  Edit5.Clear;
  DbEdit3.Clear;
  DBlookUpComboBox1.KeyField.Empty;
  DbEdit1.Text:='';
  With DataModule2 do
  begin
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT Count(Professeur.D_Classe) AS nb , Diplome FROM Professeur GROUP BY Professeur.D_Classe,Professeur.Diplome;');
  ADOQuery2.ExecSQL;
  ADOQuery2.Open;
  end;
end;
end;

procedure TForm6.BitBtn2Click(Sender: TObject);
begin
DataModule2.ADOTable4.Edit;
DbGrid1.ReadOnly:=false;
With DataModule2 do
  begin
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT Count(Professeur.D_Classe) AS nb , Diplome FROM Professeur GROUP BY Professeur.D_Classe,Professeur.Diplome;');
  ADOQuery2.ExecSQL;
  ADOQuery2.Open;
  end;
end;

procedure TForm6.BitBtn3Click(Sender: TObject);
begin
DataModule2.Adotable4.Delete;
With DataModule2 do
  begin
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT Count(Professeur.D_Classe) AS nb , Diplome FROM Professeur GROUP BY Professeur.D_Classe,Professeur.Diplome;');
  ADOQuery2.ExecSQL;
  ADOQuery2.Open;
  end;
end;

procedure TForm6.BitBtn4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
frxComboEdit1.Clear;
DBEdit2.Clear;
Edit5.Clear;
DBEdit1.Clear;
With DataModule2 do
  begin
  ADOQuery2.SQL.Clear;
  ADOQuery2.SQL.Add('SELECT Count(Professeur.D_Classe) AS nb , Diplome FROM Professeur GROUP BY Professeur.D_Classe,Professeur.Diplome;');
  ADOQuery2.ExecSQL;
  ADOQuery2.Open;
  end;
end;

procedure TForm6.DBLookupComboBox2Click(Sender: TObject);
begin
Label3.Visible:=true;
end;

procedure TForm6.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Form8.Close;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
frxComboEdit1.Clear;
DBEdit2.Clear;
Edit5.Clear;
DBEdit1.Clear;
DataModule2.ADOTable4.Active:=true;
DataModule2.AdoQuery1.Active:=false;
DataModule2.ADOQuery1.Close;

DataModule2.ADOQuery1.Active:=true;
FDMemTable1.Active:=true;
DBlookupComboBox3.Visible:=false;
Label3.Visible:=false;

end;

procedure TForm6.Label14Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm6.Label3Click(Sender: TObject);
begin
DBLookUpComboBox3.Visible:=true;
end;

end.
