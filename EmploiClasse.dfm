object Form14: TForm14
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'EMPLOI DU TEMPS CLASSE'
  ClientHeight = 492
  ClientWidth = 797
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ScreenSnap = True
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 492
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 32
      Top = 56
      Width = 105
      Height = 21
      KeyField = 'Classe'
      ListSource = DataModule2.DataSource2
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 32
      Top = 160
      Width = 105
      Height = 21
      KeyField = 'Appellation'
      ListSource = DataModule2.DataSource5
      TabOrder = 1
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 32
      Top = 288
      Width = 105
      Height = 21
      KeyField = 'Code'
      ListSource = DataModule2.DataSource4
      TabOrder = 2
    end
    object BitBtn8: TBitBtn
      Left = 360
      Top = 451
      Width = 91
      Height = 25
      Caption = '&ANNULER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object BitBtn5: TBitBtn
      Left = 219
      Top = 451
      Width = 88
      Height = 25
      Caption = '&ENREGISTRER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 509
      Top = 451
      Width = 88
      Height = 25
      Caption = '&MODIFIER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      Left = 661
      Top = 451
      Width = 84
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StringGrid1: TStringGrid
      Left = 219
      Top = 32
      Width = 526
      Height = 385
      ColCount = 8
      RowCount = 15
      TabOrder = 7
    end
  end
end
