object Form18: TForm18
  Left = 0
  Top = 0
  Caption = 'PARAMETRE DU COMPTE'
  ClientHeight = 182
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 32
    Width = 93
    Height = 13
    Caption = 'Ancien mot de pass'
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 104
    Height = 13
    Caption = 'Nouveau mot de pass'
  end
  object Label3: TLabel
    Left = 24
    Top = 152
    Width = 122
    Height = 13
    Caption = 'Confirmation mot de pass'
  end
  object Edit1: TEdit
    Left = 162
    Top = 24
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 162
    Top = 80
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 162
    Top = 144
    Width = 217
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 424
    Top = 22
    Width = 85
    Height = 25
    Caption = 'ENREGISTRER'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 424
    Top = 78
    Width = 85
    Height = 25
    Caption = 'ANNULER'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 424
    Top = 142
    Width = 85
    Height = 25
    Caption = 'S&UPPRIMER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn3Click
  end
end
