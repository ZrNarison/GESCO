unit compte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm18 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { D?clarations priv?es }
  public
    { D?clarations publiques }
  end;

var
  Form18: TForm18;

implementation

{$R *.dfm}

uses base, login;

procedure TForm18.BitBtn1Click(Sender: TObject);
begin
  If (edit1.text = Form17.Edit1.Text) then
//    If edit2.text = edit3.text then
      Begin
        with DataModule2 do
          begin
            //        DataModule2.ADOTable15.edit;
    //        DataModule2.ADOTable15.FieldByName('Mot_de_passe').asstring:=edit2.text;
    //        DataModule2.ADOTable15.post;
            AdoDataSet4.Active:=false;
//            AdoDataSet4.CreateDataSet;
            AdodataSet4.CommandText:=('UPDATE Responsable set code='''+Edit1.Text+''' Where ([code]like'''+Edit2.Text+''')');
//            AdoQuery11.ExecSQL;
            AdodataSet4.ExecuteOptions;
            AdoDataSet4.Open;
            Showmessage('la modification du mot de passe est effectu?e avec succ?e !');
            Application.Terminate;
          end;
      End
//    Else
//      begin
//        Showmessage('Mot de pass diff?rent, confirm? SVP ! ');
//        Edit3.Text:='';
//      end
  Else
    Begin
        Showmessage('Vous essay? d''acc?der au une autre compte !') ;
        Edit1.Clear;
        Edit2.Clear;
        Edit3.Clear
//    End
//Else
// begin
// Showmessage('Vous n''?tes un intruis !');
end;

end;

procedure TForm18.BitBtn2Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit3.Text:='';
end;

procedure TForm18.BitBtn3Click(Sender: TObject);
begin
with DataModule2 do
begin
 Adotable15.Delete;
ShowMessage('Utilisateur supprim? avec succ?e !');
ShowMessage('L''application va se ferm? !');
application.Terminate;
end
end;

end.
