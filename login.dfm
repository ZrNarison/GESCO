object Form17: TForm17
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'LOGIN'
  ClientHeight = 175
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 32
    Width = 96
    Height = 16
    Caption = 'Nom d'#39'utilisateur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 88
    Width = 69
    Height = 16
    Caption = 'Mot de pass'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 8
    Top = 20
    Width = 34
    Height = 33
    Stretch = True
  end
  object Image2: TImage
    Left = 8
    Top = 76
    Width = 34
    Height = 33
    Stretch = True
  end
  object Edit1: TEdit
    Left = 160
    Top = 85
    Width = 193
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 0
    OnChange = Edit1Change
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 135
    Width = 89
    Height = 25
    Caption = 'Valider'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'SimSun-ExtB'
    Font.Style = [fsBold]
    Kind = bkOK
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 264
    Top = 135
    Width = 89
    Height = 25
    Caption = 'Quitter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'SimSun-ExtB'
    Font.Style = [fsBold]
    Kind = bkAbort
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    AlignWithMargins = True
    Left = 160
    Top = 29
    Width = 193
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'id_ResF'
    ListSource = DataModule2.SourceDataSet
    ParentFont = False
    TabOrder = 3
    OnClick = DBLookupComboBox1Click
  end
end
