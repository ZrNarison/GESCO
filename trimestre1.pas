unit trimestre1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm13 = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBGrid2: TDBGrid;
    Edit2: TEdit;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Label1: TLabel;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Form13: TForm13;
  j,m,a:word;
implementation

{$R *.dfm}

uses trimestre, base;

procedure TForm13.BitBtn5Click(Sender: TObject);
begin
if ((UpperCase(Edit2.Text)+' TRIMESTRE')=DataModule2.AdoTable9.FieldByName('Trimestre').AsString) then
begin
ShowMessage('Calendrier scolaire d?ja enregistr? !');
Edit2.Clear;
end
else
begin
  DataModule2.Adotable9.Append;
  DataModule2.AdoTable9.insert;
  DataModule2.AdoTable9.FieldByName('Trimestre').Value:=UpperCase(Edit2.Text)+' TRIMESTRE';
  DataModule2.AdoTable9.FieldByName('Debut').Value:=DateTimePicker3.Date;
  DataModule2.AdoTable9.FieldByName('fin').Value:=DateTimePicker4.Date;
  with dataModule2 do
  begin
    AdoQuery7.SQL.Clear;
    adoQuery7.SQL.Add('SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" mois" AS [Dur?e ] FROM Trimestre GROUP BY Trimestre.Trimestre');
    AdoQuery7.ExecSQL;
    AdoQuery7.Open;
  end;
  Edit2.Text:='';
end
end;

procedure TForm13.BitBtn6Click(Sender: TObject);
begin
DataModule2.ADOTable3.Edit;
DbGrid2.ReadOnly:=false;
with dataModule2 do
begin
  AdoQuery7.SQL.Clear;
  adoQuery7.SQL.Add('SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" mois" AS [Dur?e ] FROM Trimestre GROUP BY Trimestre.Trimestre');
  AdoQuery7.ExecSQL;
  AdoQuery7.Open;
end;
end;

procedure TForm13.BitBtn7Click(Sender: TObject);
begin
DataModule2.ADOTable9.Delete;
DataModule2.ADOQuery7.Close;
with dataModule2 do
begin
  AdoQuery7.SQL.Clear;
  adoQuery7.SQL.Add('SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" mois" AS [Dur?e ] FROM Trimestre GROUP BY Trimestre.Trimestre');
  AdoQuery7.ExecSQL;
  AdoQuery7.Open;
end;
end;

procedure TForm13.BitBtn8Click(Sender: TObject);
begin
Edit2.Clear;
with dataModule2 do
begin
  AdoQuery7.SQL.Clear;
  adoQuery7.SQL.Add('SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" mois" AS [Dur?e ] FROM Trimestre GROUP BY Trimestre.Trimestre');
  AdoQuery7.ExecSQL;
  AdoQuery7.Open;
end;
end;

procedure TForm13.FormCreate(Sender: TObject);
begin
Edit2.Clear;
end;

procedure TForm13.Label1Click(Sender: TObject);
begin
Form13.Close;
Form11.ShowModal;
end;

end.
