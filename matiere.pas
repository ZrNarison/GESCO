unit matiere;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls, frxCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    FDMemTable1: TFDMemTable;
    FDMemTable1serie: TStringField;
    FDMemTable1coef: TStringField;
    Edit1: TEdit;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    DBEdit2: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    frxComboEdit1: TfrxComboEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses base;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
if (Edit1.Text+'-'+DBLookUpCombobox1.Text=DataModule2.AdoTable3.FieldByName('Code').AsString) then
begin
  showMessage('Matiere en cours!');
  Edit1.Clear
end
else
begin
DataModule2.Adotable3.Append;
DataModule2.AdoTable3.insert;
DataModule2.AdoTable3.FieldByName('Code').Value:=Edit1.Text+'-'+DBLookUpCombobox1.Text;
DataModule2.AdoTable3.FieldByName('Classe').Value:=DBLookUpCombobox1.Text;
DataModule2.AdoTable3.FieldByName('Serie').Value:=UpperCase(DBEdit1.Text);
DataModule2.AdoTable3.FieldByName('Matiere').Value:=UpperCase(frxComboEdit1.Text);
DataModule2.AdoTable3.FieldByName('Coefficient').Value:=DBEdit2.Text;
DataModule2.AdoTable3.Post;
Edit1.Clear;//Classe
DBLookUpCombobox1.ListFieldIndex:=(-1);
DBEdit1.Clear;//Matiere
frxComboEdit1.ItemIndex:=-1;//Serie
DBEdit2.Clear;//Coefficient
end;
end;

procedure TForm5.BitBtn2Click(Sender: TObject);
begin
DataModule2.ADOTable3.Edit;
DbGrid1.ReadOnly:=False;
end;

procedure TForm5.BitBtn3Click(Sender: TObject);
begin
DataModule2.Adotable3.Delete;
end;

procedure TForm5.BitBtn4Click(Sender: TObject);
begin
Edit1.Clear;//Code
Edit1.Clear;//Classe
DBEdit1.Clear;//Matiere
//frxComboEdit1.Clear;//Serie
DBEdit2.Clear;//Coefficient
end;

procedure TForm5.FormCreate(Sender: TObject);
begin

DataModule2.ADOTable3.Active:=true;
FDMemTable1.Active:=true;
end;

end.
