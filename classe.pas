unit classe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.DBChart, VCLTee.TeeDBCrossTab,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, frxCtrls,System.Math;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FDMemTable1: TFDMemTable;
    FDMemTable1emem: TStringField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    DBCrossTabSource1: TDBCrossTabSource;
    DBCrossTabSource2: TDBCrossTabSource;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    Edit2: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Form4: TForm4;
  MODIFIER,VALIDER:String;

implementation

{$R *.dfm}

uses base, login;

procedure TForm4.BitBtn1Click(Sender: TObject);
var
verfication, list:string;
niv:double;
begin
if (Edit2.Text<>'') then
  begin
  if (DBEdit1.Text<>'') then
    begin
    if(Edit2.Text+(('?me '))+Uppercase(Edit1.Text)=DataModule2.AdoTable2.FieldByName('Classe').AsString) then
      begin
        ShowMessage('Niveau classe existe d?j? !');
        Edit1.Clear;
        Edit2.Clear;
        DBEdit1.Clear;
      end
    else
      begin
      if (ComboBox1.Text='Primaire') then
        begin
        with DataModule2 do
          begin
            ADOTable2.Append;
            AdoTable2.insert;DataModule2.AdoTable2.FieldByName('Classe').Value:=Uppercase(Edit2.Text)+'?me '+Uppercase(Edit1.Text);
            AdoTable2.FieldByName('Tutilaire').Value:=DBLookUpComboBox1.Text;
            AdoTable2.FieldByName('Ecolage').Value:=DBEdit1.Text;
            AdoTable2.Post;
            Edit1.Clear;
            Edit2.Clear;
            DBEdit1.Clear;
          end;
        end
      else
        begin
         if (ComboBox1.Text='S?condaire pr?miere cycle') then
          begin
           DataModule2.ADOTable2.Append;
           DataModule2.AdoTable2.insert;DataModule2.AdoTable2.FieldByName('Classe').Value:=Uppercase(Edit2.Text)+'?me '+Uppercase(Edit1.Text);
           DataModule2.AdoTable2.FieldByName('Tutilaire').Value:=DBLookUpComboBox1.Text;
           DataModule2.AdoTable2.FieldByName('Ecolage').Value:=DBEdit1.Text;
           DataModule2.AdoTable2.Post;
           Edit1.Clear;
           Edit2.Clear;
           DBEdit1.Clear;
         end
      else
        begin
        if (ComboBox1.Text='S?condaire s?conde cycle') then
          begin
          if (Edit2.Text='2') then
            begin
            DataModule2.ADOTable2.Append;
            DataModule2.AdoTable2.insert;DataModule2.AdoTable2.FieldByName('Classe').Value:=Uppercase(Edit2.Text)+'nd'+Uppercase(Edit1.Text);
            DataModule2.AdoTable2.FieldByName('Tutilaire').Value:=DBLookUpComboBox1.Text;
            DataModule2.AdoTable2.FieldByName('Ecolage').Value:=DBEdit1.Text;
            DataModule2.AdoTable2.Post;
            Edit1.Clear;
            Edit2.Clear;
            DBEdit1.Clear;
          end
        else
          begin
            if (Edit2.Text<>'1') then
              begin
                DataModule2.ADOTable2.Append;
                DataModule2.AdoTable2.insert;DataModule2.AdoTable2.FieldByName('Classe').Value:=Uppercase(Edit2.Text)+'le'+Uppercase(Edit1.Text);
                DataModule2.AdoTable2.FieldByName('Tutilaire').Value:=DBLookUpComboBox1.Text;
                DataModule2.AdoTable2.FieldByName('Ecolage').Value:=DBEdit1.Text;
                DataModule2.AdoTable2.Post;
                Edit1.Clear;
                Edit2.Clear;
                DBEdit1.Clear;
              end
           else
              begin
                DataModule2.ADOTable2.Append;
                DataModule2.AdoTable2.insert;DataModule2.AdoTable2.FieldByName('Classe').Value:=Uppercase(Edit2.Text)+'er'+Uppercase(Edit1.Text);
                DataModule2.AdoTable2.FieldByName('Tutilaire').Value:=DBLookUpComboBox1.Text;
                DataModule2.AdoTable2.FieldByName('Ecolage').Value:=DBEdit1.Text;
                DataModule2.AdoTable2.Post;
                Edit1.Clear;
                Edit2.Clear;
                DBEdit1.Clear;
              end;
          end
        end
      else
        begin
        if (ComboBox1.Text='Universitaire') then
          begin
            if (Edit2.Text='1') then
            begin
              DataModule2.ADOTable2.Append;
              DataModule2.AdoTable2.insert;DataModule2.AdoTable2.FieldByName('Classe').Value:=Uppercase(Edit2.Text)+'er'+' Annn?es '+Uppercase(Edit1.Text);
              DataModule2.AdoTable2.FieldByName('Tutilaire').Value:=DBLookUpComboBox1.Text;
              DataModule2.AdoTable2.FieldByName('Ecolage').Value:=DBEdit1.Text;
              DataModule2.AdoTable2.Post;
              Edit1.Clear;
              Edit2.Clear;
              DBEdit1.Clear;
            end
       else
        begin
         DataModule2.ADOTable2.Append;
         DataModule2.AdoTable2.insert;DataModule2.AdoTable2.FieldByName('Classe').Value:=Edit2.Text+'?me'+' Annn?es '+Uppercase(Edit1.Text);
         DataModule2.AdoTable2.FieldByName('Tutilaire').Value:=DBLookUpComboBox1.Text;
         DataModule2.AdoTable2.FieldByName('Ecolage').Value:=DBEdit1.Text;
         DataModule2.AdoTable2.Post;
         Edit1.Clear;
         Edit2.Clear;
         DBEdit1.Clear;
        end;
       end;
      end;
     end;
    end
  end
  end
  else
    showMessage('Ecolage du nouveau classe invalide!')
  end
else
  showMessage('Veuillez saisissez le niveau !')
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
BitBtn2.Caption:='VA&LIDER';
DataModule2.ADOTable2.Edit;
DbGrid1.ReadOnly:=false;
end;

procedure TForm4.BitBtn3Click(Sender: TObject);
begin
DataModule2.Adotable2.Delete;
//Showmessage('Classe supprim? avec succ? !');
end;

procedure TForm4.BitBtn4Click(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
DBEdit1.Clear;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
//DataModule2.ADOTable2.Active:=true;
FDmemTable1.Active:=true;
Edit1.Clear;
Edit2.Clear;
DBEdit1.Clear;
//DAtaModule2.ADOTable2.Active:=true;
end;

end.
