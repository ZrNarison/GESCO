object Form19: TForm19
  Left = 0
  Top = 0
  ClientHeight = 685
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 12
    Width = 31
    Height = 13
    Caption = 'Classe'
  end
  object Label2: TLabel
    Left = 32
    Top = 32
    Width = 90
    Height = 13
    Caption = 'Liste des etudiants'
  end
  object Label3: TLabel
    Left = 32
    Top = 357
    Width = 28
    Height = 13
    Caption = 'Notes'
  end
  object Label4: TLabel
    Left = 736
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Notes >>'
    OnClick = Label4Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 629
    Height = 257
    DataSource = DataModule2.DataSource31
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'N'#176'Matricule'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nom'
        Title.Alignment = taCenter
        Title.Caption = 'NOM'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Classe'
        Title.Alignment = taCenter
        Title.Caption = 'CLASSE'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sexe'
        Title.Alignment = taCenter
        Title.Caption = 'SEXE'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_naissance'
        Title.Alignment = taCenter
        Title.Caption = 'DATE '
        Width = 92
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lieu_naissance'
        Title.Alignment = taCenter
        Title.Caption = 'LIEU DE NAISSANCE'
        Width = 125
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 376
    Width = 787
    Height = 301
    DataSource = DataModule2.DataSource32
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Matiere'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Trimestre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Devoir'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observation'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 708
    Top = 64
    Width = 75
    Height = 25
    Caption = '&MODIFIER'
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 708
    Top = 184
    Width = 75
    Height = 25
    Caption = 'IM&PRIMER'
    TabOrder = 3
  end
end
