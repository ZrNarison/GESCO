object Form10: TForm10
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 559
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 779
    Height = 559
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 55
      Height = 13
      Caption = 'N'#176'Matricule'
    end
    object Label2: TLabel
      Left = 4
      Top = 117
      Width = 65
      Height = 13
      Caption = 'Date de paye'
    end
    object Label8: TLabel
      Left = 231
      Top = 541
      Width = 43
      Height = 14
      Caption = 'Detail >>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      OnClick = Label8Click
    end
    object Label3: TLabel
      Left = 8
      Top = 66
      Width = 61
      Height = 13
      Caption = 'Ecolage mois'
    end
    object DBGrid1: TDBGrid
      Left = 286
      Top = 40
      Width = 475
      Height = 633
      DataSource = DataModule2.reqecolage1
      ReadOnly = True
      TabOrder = 4
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Ecolage_mois'
          Title.Caption = 'Ecolage mois'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Date_payer'
          Title.Caption = 'Date payement'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Responsable'
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Montant'
          Title.Caption = 'Somme de'
          Width = 60
          Visible = True
        end>
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 80
      Top = 16
      Width = 65
      Height = 21
      KeyField = 'N'#176'Matricule'
      ListSource = DataModule2.DataSource8
      TabOrder = 0
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 152
      Width = 274
      Height = 201
      Caption = 'Type de r'#233'glement'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label5: TLabel
        Left = 72
        Top = 143
        Width = 48
        Height = 16
        Caption = 'Montant'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 71
        Top = 77
        Width = 74
        Height = 16
        Caption = 'N'#176' Telephone'
        FocusControl = DBEdit2
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 71
        Top = 12
        Width = 14
        Height = 16
        Caption = 'N'#176
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 191
        Top = 77
        Width = 48
        Height = 16
        Caption = 'Montant'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 191
        Top = 12
        Width = 48
        Height = 16
        Caption = 'Montant'
        FocusControl = DBEdit3
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 71
        Top = 29
        Width = 114
        Height = 21
        DataField = 'chq'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 71
        Top = 91
        Width = 114
        Height = 21
        DataField = 'crd'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 72
        Top = 159
        Width = 73
        Height = 21
        DataField = 'esp'
        DataSource = DataSource1
        TabOrder = 2
      end
      object RadioButton1: TRadioButton
        Left = 3
        Top = 31
        Width = 62
        Height = 17
        Caption = 'Ch'#233'que'
        TabOrder = 5
        OnClick = RadioButton1Click
      end
      object RadioButton2: TRadioButton
        Left = 3
        Top = 95
        Width = 62
        Height = 17
        Caption = 'Cr'#233'dit'
        TabOrder = 6
        OnClick = RadioButton2Click
      end
      object RadioButton3: TRadioButton
        Left = 3
        Top = 161
        Width = 62
        Height = 17
        Caption = 'Esp'#233'ce'
        Checked = True
        TabOrder = 7
        TabStop = True
        OnClick = RadioButton3Click
      end
      object DBEdit4: TDBEdit
        Left = 186
        Top = 91
        Width = 80
        Height = 21
        DataField = 'tmnt'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 191
        Top = 29
        Width = 80
        Height = 21
        DataField = 'cmtn'
        DataSource = DataSource1
        TabOrder = 4
      end
    end
    object BitBtn1: TBitBtn
      Left = 13
      Top = 456
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
      Left = 171
      Top = 456
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
      Left = 171
      Top = 510
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
      Left = 21
      Top = 510
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
    object DateTimePicker1: TDateTimePicker
      Left = 80
      Top = 109
      Width = 81
      Height = 21
      Date = 44143.000000000000000000
      Time = 44143.000000000000000000
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 624
      Top = 13
      Width = 97
      Height = 17
      Caption = 'Non regl'#233
      TabOrder = 9
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 496
      Top = 10
      Width = 105
      Height = 21
      KeyField = 'Ecolage_mois'
      ListSource = DataModule2.DataSource34
      TabOrder = 10
      OnClick = DBLookupComboBox2Click
    end
    object DateTimePicker2: TDateTimePicker
      Left = 80
      Top = 58
      Width = 81
      Height = 21
      Date = 44136.000000000000000000
      Time = 44136.000000000000000000
      TabOrder = 1
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
    Left = 332
    Top = 104
    object FDMemTable1crd: TStringField
      FieldName = 'crd'
      EditMask = '!000\ 00\ 000\ 00;1;_'
      Size = 50
    end
    object FDMemTable1esp: TStringField
      FieldName = 'esp'
      EditMask = '000\ 000;1;_'
      Size = 50
    end
    object FDMemTable1chq: TStringField
      FieldName = 'chq'
      EditMask = '!00\ 000\ 000\ 000;1;_'
      Size = 50
    end
    object FDMemTable1mois: TStringField
      FieldName = 'mois'
      Size = 100
    end
    object FDMemTable1datepay: TStringField
      FieldName = 'datepay'
      Size = 50
    end
    object FDMemTable1tmnt: TStringField
      FieldName = 'tmnt'
      EditMask = '000\ 000;1;_'
      Size = 50
    end
    object FDMemTable1cmtn: TStringField
      FieldName = 'cmtn'
      EditMask = '000\ 000;1;_'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 376
    Top = 352
  end
end
