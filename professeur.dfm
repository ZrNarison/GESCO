object Form6: TForm6
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'PROFESSEUR'
  ClientHeight = 723
  ClientWidth = 1297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1297
    Height = 723
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 53
      Height = 13
      Caption = 'Appellation'
    end
    object Label6: TLabel
      Left = 16
      Top = 72
      Width = 21
      Height = 13
      Caption = 'Nom'
    end
    object Label7: TLabel
      Left = 16
      Top = 120
      Width = 36
      Height = 13
      Caption = 'Pr'#233'nom'
    end
    object Label8: TLabel
      Left = 16
      Top = 168
      Width = 88
      Height = 13
      Caption = 'Date de naissance'
    end
    object Label9: TLabel
      Left = 16
      Top = 224
      Width = 84
      Height = 13
      Caption = 'Lieu de naissance'
    end
    object Label10: TLabel
      Left = 16
      Top = 272
      Width = 37
      Height = 13
      Caption = 'Dipl'#244'me'
    end
    object Label11: TLabel
      Left = 16
      Top = 328
      Width = 33
      Height = 13
      Caption = 'N'#176' CIN'
    end
    object Label12: TLabel
      Left = 16
      Top = 392
      Width = 33
      Height = 13
      Caption = 'Adress'
    end
    object Label13: TLabel
      Left = 16
      Top = 492
      Width = 31
      Height = 13
      Caption = 'Classe'
    end
    object Label2: TLabel
      Left = 16
      Top = 556
      Width = 36
      Height = 13
      Caption = 'Mati'#233're'
    end
    object Label4: TLabel
      Left = 16
      Top = 443
      Width = 38
      Height = 13
      Caption = 'Contact'
      FocusControl = DBEdit3
    end
    object Label3: TLabel
      Left = 202
      Top = 486
      Width = 55
      Height = 16
      Caption = 'jusqu'#39'au'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      OnClick = Label3Click
    end
    object Label14: TLabel
      Left = 328
      Top = 661
      Width = 58
      Height = 13
      Caption = 'Graphique'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label14Click
    end
    object Label15: TLabel
      Left = 16
      Top = 600
      Width = 32
      Height = 13
      Caption = 'Salaire'
    end
    object DBGrid1: TDBGrid
      Left = 392
      Top = 0
      Width = 889
      Height = 681
      DataSource = DataModule2.DataSource5
      ReadOnly = True
      TabOrder = 17
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Appellation'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nom'
          Title.Alignment = taCenter
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Prenom'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Matiere'
          Title.Alignment = taCenter
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Adress'
          Title.Alignment = taCenter
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Contact'
          Title.Alignment = taCenter
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Date_naissance'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lieu_naissance'
          Title.Alignment = taCenter
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'D_Classe'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'F_Classe'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Diplome'
          Title.Alignment = taCenter
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N'#176'CIN'
          Title.Alignment = taCenter
          Width = 92
          Visible = True
        end>
    end
    object Edit1: TEdit
      Left = 128
      Top = 16
      Width = 209
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 128
      Top = 64
      Width = 209
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 128
      Top = 112
      Width = 209
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 128
      Top = 216
      Width = 209
      Height = 21
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 128
      Top = 384
      Width = 209
      Height = 21
      TabOrder = 7
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 128
      Top = 548
      Width = 145
      Height = 21
      KeyField = 'Matiere'
      ListSource = DataModule2.DataSource4
      TabOrder = 11
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 128
      Top = 484
      Width = 65
      Height = 21
      KeyField = 'Classe'
      ListSource = DataModule2.DataSource2
      TabOrder = 9
      OnClick = DBLookupComboBox2Click
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 273
      Top = 484
      Width = 64
      Height = 21
      KeyField = 'Classe'
      ListSource = DataModule2.DataSource6
      TabOrder = 10
    end
    object frxComboEdit1: TfrxComboEdit
      Left = 128
      Top = 264
      Width = 95
      Height = 21
      Style = csSimple
      ItemIndex = 0
      TabOrder = 5
      Text = 'CEPE'
      Items.Strings = (
        'CEPE'
        'BEPC'
        'BACC'
        'DTS/BTS'
        'LICENCE 1'
        'LICENCE 2'
        'MASTER 1'
        'MASTER 2')
    end
    object DBEdit2: TDBEdit
      Left = 128
      Top = 319
      Width = 145
      Height = 21
      DataField = 'cin'
      DataSource = DataSource1
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 72
      Top = 633
      Width = 83
      Height = 25
      Caption = '&ENREGISTRER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 230
      Top = 633
      Width = 89
      Height = 25
      Caption = '&MODIFIER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 230
      Top = 682
      Width = 75
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 80
      Top = 682
      Width = 75
      Height = 25
      Caption = 'A&NNULER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnClick = BitBtn4Click
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 435
      Width = 209
      Height = 21
      DataField = 'tel'
      DataSource = DataSource1
      TabOrder = 8
    end
    object DateTimePicker1: TDateTimePicker
      Left = 128
      Top = 160
      Width = 95
      Height = 21
      Date = 44143.000000000000000000
      Time = 44143.000000000000000000
      TabOrder = 3
    end
    object DBEdit1: TDBEdit
      Left = 128
      Top = 595
      Width = 96
      Height = 21
      DataField = 'sal'
      DataSource = DataSource1
      TabOrder = 12
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
    Left = 232
    Top = 576
    object FDMemTable1date: TStringField
      FieldName = 'date'
      EditMask = '!09/09/9999;1;_'
      Size = 30
    end
    object FDMemTable1cin: TStringField
      FieldName = 'cin'
      EditMask = '!000\ 000\ 000\ 000;1;_'
      Size = 40
    end
    object FDMemTable1tel: TStringField
      FieldName = 'tel'
      EditMask = '!999\ 00\ 900\ 00 \ -\ 999\ 99\ 999\ 99;1;_'
      Size = 50
    end
    object FDMemTable1sal: TStringField
      FieldName = 'sal'
      EditMask = '000\ 000\ 000;1;_'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 720
    Top = 336
  end
end
