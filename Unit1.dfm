object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 487
  ClientWidth = 803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 803
    Height = 487
    Align = alClient
    TabOrder = 0
  end
  object DBImage1: TDBImage
    Left = 0
    Top = 0
    Width = 803
    Height = 487
    Align = alClient
    Stretch = True
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object FICHIER1: TMenuItem
      Caption = '&FICHIER'
      object Nouveau1: TMenuItem
        Caption = '&Nouveau'
        object Classe1: TMenuItem
          Caption = 'C&lasse'
          OnClick = Classe1Click
        end
        object Ecolage1: TMenuItem
          Caption = 'E&colage'
          OnClick = Ecolage1Click
        end
        object Etablissement1: TMenuItem
          Caption = 'E&tablissement'
          OnClick = Etablissement1Click
        end
        object Etudiant1: TMenuItem
          Caption = 'Etu&diant'
          OnClick = Etudiant1Click
        end
        object Matire1: TMenuItem
          Caption = '&Mati'#233're'
          OnClick = Matire1Click
        end
        object Professeur1: TMenuItem
          Caption = 'Professe&ur'
          OnClick = Professeur1Click
        end
      end
      object Export2: TMenuItem
        Caption = 'E&xport'
        OnClick = Export2Click
      end
      object ImportExport1: TMenuItem
        Caption = 'I&mport'
        OnClick = ImportExport1Click
      end
      object QUITTER1: TMenuItem
        Caption = 'QUITTER'
        OnClick = QUITTER1Click
      end
    end
    object EDITER1: TMenuItem
      Caption = '&EDITER'
      object Compte1: TMenuItem
        Caption = 'Co&mpte'
        OnClick = Compte1Click
      end
      object Emploidutemps1: TMenuItem
        Caption = 'Emp&loi du temps'
        object Etudiant2: TMenuItem
          Caption = 'C&lasse'
          OnClick = Etudiant2Click
        end
        object Professeur2: TMenuItem
          Caption = 'P&rofesseur'
        end
      end
      object Notes1: TMenuItem
        Caption = 'Bulletin des &notes'
        OnClick = Notes1Click
      end
      object RsponsableCaissier1: TMenuItem
        Caption = '&R'#233'sponsable/Caissier'
        OnClick = RsponsableCaissier1Click
      end
      object AnnesScolaire1: TMenuItem
        Caption = 'Sc&olarit'#233
        OnClick = AnnesScolaire1Click
      end
    end
    object N1: TMenuItem
      Caption = '?'
      object Aide1: TMenuItem
        Caption = 'A&ide'
      end
      object Apropos1: TMenuItem
        Caption = 'A pr&opos'
        OnClick = Apropos1Click
      end
    end
  end
end
