unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,etablissement, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.FileCtrl,
  Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    FICHIER1: TMenuItem;
    EDITER1: TMenuItem;
    N1: TMenuItem;
    Aide1: TMenuItem;
    Apropos1: TMenuItem;
    Nouveau1: TMenuItem;
    Etablissement1: TMenuItem;
    Classe1: TMenuItem;
    Matire1: TMenuItem;
    Professeur1: TMenuItem;
    ImportExport1: TMenuItem;
    QUITTER1: TMenuItem;
    PageControl1: TPageControl;
    Etudiant1: TMenuItem;
    Ecolage1: TMenuItem;
    AnnesScolaire1: TMenuItem;
    Emploidutemps1: TMenuItem;
    Etudiant2: TMenuItem;
    Professeur2: TMenuItem;
    RsponsableCaissier1: TMenuItem;
    Export2: TMenuItem;
    DBImage1: TDBImage;
    Compte1: TMenuItem;
    Notes1: TMenuItem;
    procedure Etablissement1Click(Sender: TObject);
    procedure Classe1Click(Sender: TObject);
    procedure Matire1Click(Sender: TObject);
    procedure Professeur1Click(Sender: TObject);
    procedure Etudiant1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QUITTER1Click(Sender: TObject);
    procedure Ecolage1Click(Sender: TObject);
    procedure AnnesScolaire1Click(Sender: TObject);
    procedure Etudiant2Click(Sender: TObject);
    procedure RsponsableCaissier1Click(Sender: TObject);
    procedure Export2Click(Sender: TObject);
    procedure ImportExport1Click(Sender: TObject);
    procedure Apropos1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Compte1Click(Sender: TObject);
    procedure Notes1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form3,Form20: TForm3;
  etablissement,Classe,Matiere:Tform;
  MyFile:TextFile;
  dir:TDriveComboBox;
  i:integer;
  sauvegarde,emplacement,aide:string;
implementation


{$R *.dfm}

uses classe,base, matiere, professeur, etudiant, ecolage, trimestre, ecolage1,
  EmploiClasse, resposable, propos, compte, bulletin, login;



procedure TForm3.AnnesScolaire1Click(Sender: TObject);
begin
Form11.ShowModal;
end;

procedure TForm3.Apropos1Click(Sender: TObject);
begin
//emplacement:=ExtractFilePath(ExtractFileDir(Application.ExeName));
//aide:=emplacement(MyFile,'A_propos.html');
WinExec('application.exeName(A_propos.html)',sw_show)
end;

procedure TForm3.Classe1Click(Sender: TObject);
begin
if Form17.DBLookupComboBox1.Text<>'Sécretaire' then
begin
 Form4.Caption:='CLASSE';
 form4.ShowModal;
end
else
ShowMessage('Vous n''avez pas d'' accés !')
end;

procedure TForm3.Compte1Click(Sender: TObject);
begin
Form18.ShowModal;
end;

procedure TForm3.Ecolage1Click(Sender: TObject);
begin
Form10.Caption:='ECOLAGE';
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

procedure TForm3.Etablissement1Click(Sender: TObject);
var
Etablissement:Tform;
begin
Form2.Caption:='ETABLISSEMENT';
form2.ShowModal;
end;

procedure TForm3.Etudiant1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm3.Etudiant2Click(Sender: TObject);
begin
Form14.ShowModal;
end;

procedure TForm3.Export2Click(Sender: TObject);
begin
(*if True then      //Sauvegarde de table à table par selection dia mametraka boucle intertable ilay izy

AssignFile(Myfile,'Liste des Etudiant.docx');
ReWrite(MyFile);
for i := 0 to 100 do
begin
Writeln(MyFile,DataModule2.ADOTable6.TableName[i]);
end;
closeFile(MyFile);*)
end;

procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
if messagedlg('Voulez vous quitter le logiciel ?',mtconfirmation,[mbyes,mbno],0)=mryes then
begin
canclose:=true;
application.terminate;
end
else
canclose:=false;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
DbImage1.Picture.LoadFromFile('17858_1.jpg');
end;

procedure TForm3.ImportExport1Click(Sender: TObject);
begin


(*AssignFile(Myfile,'Liste des Etudiant.docx');
Reset(MyFile);
DataModule2.AdoTable6.Cancel;
while not Eof(MyFile) do begin
ReadLn(MyFile,sauvegarde);
DataModule2.ADOTable6.Insert;
end;

(*for i := 0 to 100 do
begin
Writeln(MyFile,DataModule2.ADOTable6.TableName[i]);
end;
closeFile(MyFile);*)
end;

procedure TForm3.Matire1Click(Sender: TObject);
begin
Form5.Caption:='MATIERE';
Form5.ShowModal;
end;

procedure TForm3.Notes1Click(Sender: TObject);
begin
Form19.ShowModal
end;

procedure TForm3.Professeur1Click(Sender: TObject);
begin
form6.Caption:='PROFESSEUR';
form6.ShowModal;
end;

procedure TForm3.QUITTER1Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.RsponsableCaissier1Click(Sender: TObject);
begin
if Form17.DBLookupComboBox1.Text<>'Sécretaire' then
begin
Form15.ShowModal;
end
else
ShowMessage('Vous n''avez pas d'' accés !')
end;
end.
