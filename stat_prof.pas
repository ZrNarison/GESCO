unit stat_prof;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.DBChart, VCLTee.TeeDBCrossTab, VCLTee.Series, Vcl.ExtCtrls,
  VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm8 = class(TForm)
    Chart1: TChart;
    Series1: TPieSeries;
    DBCrossTabSource1: TDBCrossTabSource;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses base;

procedure TForm8.FormCreate(Sender: TObject);
begin
DataModule2.ADOQuery2.SQL.Clear;
DataModule2.ADOQuery2.SQL.Add('SELECT Count(Professeur.D_Classe) AS nb , Diplome FROM Professeur GROUP BY Professeur.D_Classe,Professeur.Diplome;');
DataModule2.ADOQuery2.ExecSQL;
DataModule2.ADOQuery2.Open;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
//DataModule2.ADOQuery2.Refresh;
end;

end.
