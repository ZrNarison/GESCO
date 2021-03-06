unit trimestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  TForm11 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure PageControl1Enter(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Form11: TForm11;
  hr:TDate;
  wf,ps,resultat:integer;
  andro:word;
implementation

{$R *.dfm}

uses base, trimestre1;

procedure TForm11.BitBtn1Click(Sender: TObject);
begin
if ((UpperCase(Edit1.Text)+' TRIMESTRE')=DataModule2.AdoTable9.FieldByName('Trimestre').AsString) then
begin
ShowMessage('Calendrier scolaire d?ja enregistr? !');
Edit1.Clear;
end
else
begin
  DataModule2.Adotable9.Append;
  DataModule2.AdoTable9.insert;
  DataModule2.AdoTable9.FieldByName('Trimestre').Value:=UpperCase(Edit1.Text)+' TRIMESTRE';
  DataModule2.AdoTable9.FieldByName('Debut').Value:=DateTimePicker1.Date;
  DataModule2.AdoTable9.FieldByName('fin').Value:=DateTimePicker2.Date;
  with dataModule2 do
  begin
    AdoQuery7.SQL.Clear;
    adoQuery7.SQL.Add('SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" mois" AS [Dur?e ] FROM Trimestre GROUP BY Trimestre.Trimestre');
    AdoQuery7.ExecSQL;
    AdoQuery7.Open;
  end;
  Edit1.Text:='';
end
end;

procedure TForm11.BitBtn2Click(Sender: TObject);
begin
DataModule2.ADOTable9.Edit;
DbGrid1.ReadOnly:=false;
with dataModule2 do
begin
  AdoQuery7.SQL.Clear;
  adoQuery7.SQL.Add('SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" mois" AS [Dur?e ] FROM Trimestre GROUP BY Trimestre.Trimestre');
  AdoQuery7.ExecSQL;
  AdoQuery7.Open;
end;
end;

procedure TForm11.BitBtn3Click(Sender: TObject);
begin
DataModule2.AdoTable9.Delete;
Showmessage('Trimestre supprimer avec succ? !');
end;

procedure TForm11.BitBtn4Click(Sender: TObject);
begin
Edit1.Text:='';
with dataModule2 do
begin
  AdoQuery7.SQL.Clear;
  adoQuery7.SQL.Add('SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" mois" AS [Dur?e ] FROM Trimestre GROUP BY Trimestre.Trimestre');
  AdoQuery7.ExecSQL;
  AdoQuery7.Open;
end;
end;

procedure TForm11.BitBtn7Click(Sender: TObject);
begin
DataModule2.ADOTable9.Delete;
Showmessage('Trim?stre supprim? avec succ? !');
DataModule2.ADOQuery7.Refresh;
end;

procedure TForm11.Edit1Change(Sender: TObject);
begin
DataModule2.ADOQuery7.Refresh;
end;

procedure TForm11.FormCreate(Sender: TObject);
begin
//DataModule2.ADOQuery7.Active:=true;
Edit1.Text:='';
with dataModule2 do
begin
  AdoQuery7.Active:=true;
  AdoQuery7.SQL.Clear;
  adoQuery7.SQL.Add('SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" mois" AS [Dur?e ] FROM Trimestre GROUP BY Trimestre.Trimestre');
  AdoQuery7.ExecSQL;
  AdoQuery7.Open;
end;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
DataModule2.ADOTable9.Refresh;
DataModule2.ADOQuery7.Active:=true;
end;

procedure TForm11.Label4Click(Sender: TObject);
begin
Form11.Close;
Form13.Show;
end;

procedure TForm11.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
DataModule2.ADOQuery7.Refresh;
end;

procedure TForm11.PageControl1Enter(Sender: TObject);
begin
DataModule2.ADOQuery7.Refresh;
end;

end.
