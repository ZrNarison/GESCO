unit login;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.ExtCtrls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompListbox, IWDBStdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm17 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses base,Unit1, resposable;

procedure TForm17.BitBtn1Click(Sender: TObject);
begin
if DBLookUpComboBox1.Text<>'' then
  begin
   if (DBLookUpComboBox1.text =DataModule2.AdoDataset1.FieldByName('id_ResF').AsString) and  (Edit1.Text=DataModule2.ADODataSet1.FieldByName('code').AsString) then
     begin
      image2.Picture.LoadFromFile('cadenas.png');
      Form3.ShowModal;
     end
  else
  begin
     showMessage(Uppercase('Mot de pass erronee, veuillez reessayer SVP !'));
     Edit1.Text:='';
     BitBtn1.Visible:=false;
     BitBtn2.Visible:=false;
  end;
  end
else
begin
  ShowMessage(Uppercase('Veuillez selectionné un utilisateur SVP !'));
  Edit1.Text:='';
end;
end;

procedure TForm17.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm17.DBLookupComboBox1Click(Sender: TObject);
begin
Image2.Visible:=true;
Label2.Visible:=true;
Edit1.Visible:=true;
end;

procedure TForm17.Edit1Change(Sender: TObject);
begin
BitBtn1.Visible:=true;
BitBtn2.Visible:=true;
end;

procedure TForm17.FormCreate(Sender: TObject);
var Id_ResF:String;
begin
image1.Picture.LoadFromFile('user.png');
image2.Picture.LoadFromFile('cadena.jpg');
Edit1.Visible:=false;
Image2.Visible:=false;
Label2.Visible:=false;
BitBtn1.Visible:=false;
BitBtn2.Visible:=false;
end;

end.
