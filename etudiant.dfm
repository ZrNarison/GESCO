object Form7: TForm7
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'INSCRIPTION ETUDIANT'
  ClientHeight = 699
  ClientWidth = 1079
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
    Width = 1079
    Height = 699
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 21
      Height = 13
      Caption = 'Nom'
    end
    object Label2: TLabel
      Left = 16
      Top = 96
      Width = 88
      Height = 13
      Caption = 'Date de naissance'
    end
    object Label3: TLabel
      Left = 16
      Top = 144
      Width = 84
      Height = 13
      Caption = 'Lieu de naissance'
    end
    object Label5: TLabel
      Left = 16
      Top = 336
      Width = 33
      Height = 13
      Caption = 'Adress'
    end
    object Label8: TLabel
      Left = 16
      Top = 456
      Width = 31
      Height = 13
      Caption = 'Classe'
    end
    object Label9: TLabel
      Left = 16
      Top = 392
      Width = 24
      Height = 13
      Caption = 'Sexe'
    end
    object Label10: TLabel
      Left = 16
      Top = 523
      Width = 38
      Height = 13
      Caption = 'Contact'
      FocusControl = DBEdit2
    end
    object Label11: TLabel
      Left = 16
      Top = 56
      Width = 36
      Height = 13
      Caption = 'Pr'#233'nom'
    end
    object Label12: TLabel
      Left = 310
      Top = 657
      Width = 58
      Height = 13
      Caption = 'Graphique'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clOlive
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = Label12Click
    end
    object SpeedButton1: TSpeedButton
      Left = 968
      Top = 7
      Width = 97
      Height = 22
      Caption = 'Exporter'
      OnClick = SpeedButton1Click
    end
    object Label7: TLabel
      Left = 448
      Top = 13
      Width = 59
      Height = 16
      Caption = 'Classe de :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 624
      Top = 13
      Width = 33
      Height = 16
      Caption = 'Nom :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 367
      Top = 35
      Width = 712
      Height = 664
      DataSource = DataModule2.DataSource8
      ReadOnly = True
      TabOrder = 14
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnEnter = DBGrid1Enter
      Columns = <
        item
          Expanded = False
          FieldName = 'N'#176'Matricule'
          Title.Alignment = taCenter
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nom'
          Title.Alignment = taCenter
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Adresse'
          Title.Alignment = taCenter
          Width = 120
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
          FieldName = 'Contact'
          Title.Alignment = taCenter
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Sexe'
          Title.Alignment = taCenter
          Width = 60
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
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Fille_Fils'
          Title.Alignment = taCenter
          Width = 200
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 72
      Top = 592
      Width = 83
      Height = 25
      Caption = '&ENREGISTRER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 230
      Top = 652
      Width = 75
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 80
      Top = 652
      Width = 75
      Height = 25
      Caption = 'A&NNULER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BitBtn4Click
    end
    object BitBtn2: TBitBtn
      Left = 230
      Top = 592
      Width = 89
      Height = 25
      Caption = '&MODIFIER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = BitBtn2Click
    end
    object Edit1: TEdit
      Left = 58
      Top = 8
      Width = 303
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 106
      Top = 136
      Width = 255
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 95
      Top = 328
      Width = 263
      Height = 21
      TabOrder = 5
    end
    object RadioButton1: TRadioButton
      Left = 106
      Top = 391
      Width = 113
      Height = 17
      Caption = 'F'#233'minine'
      Checked = True
      TabOrder = 6
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 232
      Top = 391
      Width = 113
      Height = 17
      Caption = 'Masculine'
      TabOrder = 7
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 106
      Top = 448
      Width = 146
      Height = 21
      KeyField = 'Classe'
      ListSource = DataModule2.DataSource2
      TabOrder = 8
    end
    object DBEdit2: TDBEdit
      Left = 106
      Top = 520
      Width = 176
      Height = 21
      DataField = 'tel'
      DataSource = DataSource1
      TabOrder = 9
    end
    object Edit6: TEdit
      Left = 58
      Top = 48
      Width = 303
      Height = 21
      TabOrder = 1
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 504
      Top = 8
      Width = 81
      Height = 21
      KeyField = 'Classe'
      ListSource = DataModule2.DataSource11
      TabOrder = 15
      OnClick = DBLookupComboBox2Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 110
      Top = 88
      Width = 94
      Height = 21
      Date = 44143.000000000000000000
      Time = 44143.000000000000000000
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 184
      Width = 345
      Height = 129
      Caption = 'Filliation'
      TabOrder = 4
      object Label4: TLabel
        Left = 18
        Top = 28
        Width = 22
        Height = 13
        Caption = 'P'#233're'
      end
      object Label6: TLabel
        Left = 18
        Top = 84
        Width = 24
        Height = 13
        Caption = 'M'#233're'
      end
      object Edit3: TEdit
        Left = 79
        Top = 28
        Width = 263
        Height = 21
        TabOrder = 0
      end
      object Edit4: TEdit
        Left = 79
        Top = 84
        Width = 263
        Height = 21
        TabOrder = 1
      end
    end
    object Edit7: TEdit
      Left = 672
      Top = 8
      Width = 273
      Height = 21
      TabOrder = 16
      OnChange = Edit7Change
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
    Left = 304
    Top = 600
    object FDMemTable1date: TStringField
      FieldName = 'date'
      EditMask = '!00/00/9999;1;_'
      Size = 50
    end
    object FDMemTable1tel: TStringField
      FieldName = 'tel'
      EditMask = '!000\ 00\ 000\ 00\ -\ 000\ 00\ 000\ 00;1'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 528
    Top = 352
  end
end
