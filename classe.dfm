object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'CREER CLASSE'
  ClientHeight = 493
  ClientWidth = 654
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
  object Label3: TLabel
    Left = 24
    Top = 208
    Width = 38
    Height = 13
    Caption = 'Classe :'
  end
  object Panel1: TPanel
    Left = 0
    Top = 4
    Width = 825
    Height = 493
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 38
      Height = 13
      Caption = 'Classe :'
    end
    object Label2: TLabel
      Left = 24
      Top = 228
      Width = 45
      Height = 13
      Caption = 'Tutilaire :'
    end
    object Label4: TLabel
      Left = 24
      Top = 276
      Width = 44
      Height = 13
      Caption = 'Ecolage :'
      FocusControl = DBEdit1
    end
    object Label5: TLabel
      Left = 24
      Top = 104
      Width = 42
      Height = 13
      Caption = 'Section :'
    end
    object Label6: TLabel
      Left = 24
      Top = 161
      Width = 40
      Height = 13
      Caption = 'Niveau :'
    end
    object DBEdit1: TDBEdit
      Left = 88
      Top = 268
      Width = 81
      Height = 21
      DataField = 'emem'
      DataSource = DataSource2
      MaxLength = 7
      TabOrder = 4
    end
    object DBGrid1: TDBGrid
      Left = 253
      Top = 0
      Width = 396
      Height = 481
      DataSource = DataModule2.DataSource2
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
          FieldName = 'Classe'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tutilaire'
          Title.Alignment = taCenter
          Width = 185
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ecolage'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end>
    end
    object BitBtn2: TBitBtn
      Left = 158
      Top = 325
      Width = 89
      Height = 25
      Caption = '&MODIFIER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 325
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
    object BitBtn4: TBitBtn
      Left = 16
      Top = 385
      Width = 75
      Height = 25
      Caption = 'A&NNULER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn4Click
    end
    object BitBtn3: TBitBtn
      Left = 158
      Top = 385
      Width = 75
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BitBtn3Click
    end
    object Edit2: TEdit
      Left = 88
      Top = 53
      Width = 57
      Height = 21
      TabOrder = 0
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 88
      Top = 220
      Width = 145
      Height = 21
      KeyField = 'Appellation'
      ListSource = DataModule2.DataSource5
      TabOrder = 3
    end
    object Edit1: TEdit
      Left = 88
      Top = 101
      Width = 57
      Height = 21
      TabOrder = 1
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 158
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Text = 'Primaire'
      Items.Strings = (
        'Primaire'
        'S'#233'condaire pr'#233'miere cycle'
        'S'#233'condaire s'#233'conde cycle'
        'Universitaire')
    end
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'emem'
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    StoreDefs = True
    Left = 88
    Top = 404
    object FDMemTable1emem: TStringField
      FieldName = 'emem'
      EditMask = '999\ 000;1;_'
      Size = 8
    end
  end
  object DataSource2: TDataSource
    DataSet = FDMemTable1
    Left = 72
    Top = 344
  end
  object ADOQuery3: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Classe.[Ref_classe] AS CLASSE, Classe.Tutilaire AS TUTILA' +
        'IRE, Classe.Ecolage AS ECOLAGE'
      'FROM Classe'
      'GROUP BY Classe.[Ref_classe], Classe.Tutilaire, Classe.Ecolage;')
    Left = 664
    Top = 376
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery3
    Left = 664
    Top = 436
  end
  object DBCrossTabSource1: TDBCrossTabSource
    DataSet = ADOQuery3
    Formula = gfCount
    GroupField = 'ECOLAGE'
    ValueField = 'CLASSE'
    Left = 24
    Top = 8
  end
  object DBCrossTabSource2: TDBCrossTabSource
    DataSet = ADOQuery3
    GroupField = 'CLASSE'
    ValueField = 'ECOLAGE'
    Left = 152
    Top = 16
  end
end
