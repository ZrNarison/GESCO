unit etablissement;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, Data.Win.ADODB,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn4: TBitBtn;
    Edit2: TEdit;
    FDMemTable1: TFDMemTable;
    FDMemTable1stat: TStringField;
    FDMemTable1nif: TStringField;
    FDMemTable1tel: TStringField;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edit1: TEdit;
    Label7: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Form2: TForm2;
  Nom_etablissement,Adress,email:string ;
  STAT,NIF,tel:integer;
implementation

{$R *.dfm}

uses base;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
if (Edit1.Text<>'') then
begin
if (Edit2.Text<>'') then
begin
if (DbEdit1.Text<>'') then
begin
if (DBedit2.Text<>'') then
begin
if (Edit3.Text<>'') then
begin
  if (Edit1.Text=DataModule2.AdoTable1.FieldByName('Code').AsString) then
  begin
    showMessage('Ecole d?ja ouverte !');
    Edit1.Clear;//Nom
    Edit2.Clear;//Nom
    DBEdit1.text:='';//Stat
    DBEdit2.text:='';//nif
    Edit3.Clear;//Adress
    Edit4.Clear;//Email
    DBEdit3.text:='';//Telephone
  end
  else
    begin
      DataModule2.ADOTable1.Active:=true;
      DataModule2.Adotable1.Append;
      //DataModule2.Adotable1.TableName:='Etablissement';
      DataModule2.AdoTable1.insert;
      DataModule2.AdoTable1.FieldByName('Code').Value:=Edit1.Text;
      DataModule2.AdoTable1.FieldByName('Nom').Value:=UpperCase(Edit2.Text);
      DataModule2.AdoTable1.FieldByName('STAT').Value:=DBEdit1.Text;
      DataModule2.AdoTable1.FieldByName('NIF').Value:=DBEdit2.Text;
      DataModule2.AdoTable1.FieldByName('Adress').Value:=UpperCase(Edit3.Text);
      DataModule2.AdoTable1.FieldByName('Email').Value:=Edit4.Text;
      DataModule2.AdoTable1.FieldByName('Contact').Value:=DBEdit3.Text;
      DataModule2.AdoTable1.Post;
      Edit1.Clear;//Nom
      Edit2.Clear;//Nom
      DBEdit1.text:='';//Stat
      DBEdit2.text:='';//nif
      Edit3.Clear;//Adress
      Edit4.Clear;//Email
      DBEdit3.text:='';//Telephone
    end;
end
else
showMessage('Localisation d''?tablissement invalide!')
end
else
showMessage('Un ?cole doit avoir une Num?ro d''Identit? Fiscal (N.I.F)!')
end
else
showMessage('Une ?cole doit avoir une num?ro de carte Statistique!')
  end
  else
  showMessage('Aucun nom d''?tablissement introduit!')
end
else
showMessage('Code d''?tablissement invalide , Merci de r?verifier !')
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
DataModule2.ADOTable1.Edit;
DbGrid1.ReadOnly:=false;
end;

procedure TForm2.BitBtn3Click(Sender: TObject);
begin
DataModule2.Adotable1.Delete;
end;

procedure TForm2.BitBtn4Click(Sender: TObject);
begin
Edit1.Clear;//Nom
Edit2.Clear;//Nom
DBEdit1.Clear;//Stat
DBEdit2.Clear;//nif
Edit3.Clear;//Adress
Edit4.Clear;//Email
DBEdit3.Clear;//Telephone
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
FDMemTable1.Active:=true;
end;

end.
