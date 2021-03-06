object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'MATIERE'
  ClientHeight = 544
  ClientWidth = 708
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 545
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 25
      Height = 13
      Caption = 'Code'
    end
    object Label2: TLabel
      Left = 16
      Top = 96
      Width = 31
      Height = 13
      Caption = 'Classe'
    end
    object Label3: TLabel
      Left = 16
      Top = 160
      Width = 67
      Height = 13
      Caption = 'Serie (Option)'
    end
    object Label5: TLabel
      Left = 16
      Top = 320
      Width = 52
      Height = 13
      Caption = 'Coefficient'
    end
    object Label4: TLabel
      Left = 16
      Top = 248
      Width = 36
      Height = 13
      Caption = 'Matiere'
    end
    object DBGrid1: TDBGrid
      Left = 340
      Top = 0
      Width = 367
      Height = 545
      DataSource = DataModule2.DataSource4
      ReadOnly = True
      TabOrder = 9
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Code'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Classe'
          Title.Alignment = taCenter
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Serie'
          Title.Alignment = taCenter
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Matiere'
          Title.Alignment = taCenter
          Width = 145
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Coefficient'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 120
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 120
      Top = 152
      Width = 57
      Height = 21
      DataField = 'serie'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 120
      Top = 312
      Width = 57
      Height = 21
      DataField = 'coef'
      DataSource = DataSource1
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 48
      Top = 416
      Width = 83
      Height = 25
      Caption = '&ENREGISTRER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 206
      Top = 416
      Width = 89
      Height = 25
      Caption = '&MODIFIER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 206
      Top = 476
      Width = 75
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 56
      Top = 476
      Width = 75
      Height = 25
      Caption = 'A&NNULER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn4Click
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 120
      Top = 88
      Width = 121
      Height = 21
      KeyField = 'Classe'
      ListFieldIndex = -1
      ListSource = DataModule2.DataSource2
      TabOrder = 1
    end
    object frxComboEdit1: TfrxComboEdit
      Left = 120
      Top = 240
      Width = 161
      Height = 21
      Style = csSimple
      TabOrder = 3
      Items.Strings = (
        'ANGLAIS'
        'CHIMIE'
        'EPS'
        'FRANCAIS'
        'GEOGRAPHIE'
        'HISTOIRE'
        'MALAGASY'
        'MATHEMATIQUE'
        'PHYSIQE'
        'SVT'
        'HISTOIRE - GEOOGRAPHIE'
        'INFORMATIQUE'
        'ECONOMIE'
        'COMMERCE'
        'COMPTABLE'
        'PHILOSOPHIE'
        'EDUCATION CIVIQUE'
        'BATIMENT'
        'MATHEMATIQUE - COMPTABLE'
        'OUVRAGE METALLIQUE'
        'ELECTRICITE'
        'OUVRAGE BOIS')
    end
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 176
    Top = 544
    object FDMemTable1serie: TStringField
      FieldName = 'serie'
      Size = 2
    end
    object FDMemTable1coef: TStringField
      FieldName = 'coef'
      EditMask = '0;1;_'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 328
    Top = 336
  end
end
