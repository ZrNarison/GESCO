object Form12: TForm12
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  ClientHeight = 562
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 562
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label8: TLabel
      Left = 8
      Top = 24
      Width = 55
      Height = 13
      Caption = 'N'#176'Matricule'
    end
    object Label9: TLabel
      Left = 8
      Top = 120
      Width = 65
      Height = 13
      Caption = 'Date de paye'
    end
    object Label15: TLabel
      Left = 231
      Top = 544
      Width = 43
      Height = 14
      Caption = '<< Detail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      OnClick = Label15Click
    end
    object Label3: TLabel
      Left = 8
      Top = 72
      Width = 61
      Height = 13
      Caption = 'Ecolage mois'
    end
    object DBGrid2: TDBGrid
      Left = 280
      Top = 56
      Width = 609
      Height = 617
      DataSource = DataModule2.ecolage
      ReadOnly = True
      TabOrder = 8
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
          FieldName = 'Ecolage_mois'
          Title.Alignment = taCenter
          Title.Caption = 'Ecolage mois'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Montant'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Responsable'
          Title.Alignment = taCenter
          Width = 140
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mode_payement'
          Title.Alignment = taCenter
          Title.Caption = 'Mode payement'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Date_payer'
          Title.Alignment = taCenter
          Title.Caption = 'Date payement'
          Width = 90
          Visible = True
        end>
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 168
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
      object Label12: TLabel
        Left = 70
        Top = 147
        Width = 48
        Height = 16
        Caption = 'Montant'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 69
        Top = 81
        Width = 74
        Height = 16
        Caption = 'N'#176' Telephone'
        FocusControl = DBEdit5
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label14: TLabel
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
      object Label1: TLabel
        Left = 175
        Top = 80
        Width = 48
        Height = 16
        Caption = 'Montant'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 175
        Top = 12
        Width = 48
        Height = 16
        Caption = 'Montant'
        FocusControl = DBEdit6
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object DBEdit4: TDBEdit
        Left = 71
        Top = 28
        Width = 103
        Height = 21
        DataField = 'chq'
        DataSource = datasourceecolage1
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 69
        Top = 94
        Width = 105
        Height = 21
        DataField = 'crd'
        DataSource = datasourceecolage1
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 70
        Top = 163
        Width = 67
        Height = 21
        DataField = 'esp'
        DataSource = datasourceecolage1
        TabOrder = 4
      end
      object RadioButton4: TRadioButton
        Left = 3
        Top = 31
        Width = 62
        Height = 17
        Caption = 'Ch'#233'que'
        TabOrder = 5
        OnClick = RadioButton4Click
      end
      object RadioButton5: TRadioButton
        Left = 1
        Top = 94
        Width = 62
        Height = 17
        Caption = 'Cr'#233'dit'
        TabOrder = 6
        OnClick = RadioButton5Click
      end
      object RadioButton6: TRadioButton
        Left = 1
        Top = 165
        Width = 62
        Height = 17
        Caption = 'Esp'#233'ce'
        Checked = True
        TabOrder = 7
        TabStop = True
        OnClick = RadioButton6Click
      end
      object DBEdit1: TDBEdit
        Left = 175
        Top = 94
        Width = 89
        Height = 21
        DataField = 'tmotn'
        DataSource = datasourceecolage1
        TabOrder = 3
      end
      object DBEdit2: TDBEdit
        Left = 175
        Top = 28
        Width = 89
        Height = 21
        DataField = 'cmtn'
        DataSource = datasourceecolage1
        TabOrder = 1
      end
    end
    object BitBtn5: TBitBtn
      Left = 13
      Top = 448
      Width = 88
      Height = 25
      Caption = '&ENREGISTRER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
    object BitBtn6: TBitBtn
      Left = 162
      Top = 448
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
      OnClick = BitBtn6Click
    end
    object BitBtn7: TBitBtn
      Left = 162
      Top = 513
      Width = 71
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 32
      Top = 513
      Width = 69
      Height = 25
      Caption = '&ANNULER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn8Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 79
      Top = 112
      Width = 82
      Height = 21
      Date = 44143.000000000000000000
      Time = 44143.000000000000000000
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 79
      Top = 16
      Width = 62
      Height = 21
      KeyField = 'N'#176'Matricule'
      ListSource = DataModule2.DataSource8
      TabOrder = 0
    end
    object CheckBox1: TCheckBox
      Left = 781
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Non regl'#233
      TabOrder = 9
      OnClick = CheckBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 608
      Top = 16
      Width = 145
      Height = 21
      KeyField = 'Ecolage_mois'
      ListSource = DataModule2.DataSource35
      TabOrder = 10
    end
    object DateTimePicker2: TDateTimePicker
      Left = 79
      Top = 64
      Width = 82
      Height = 21
      Date = 44136.000000000000000000
      Time = 44136.000000000000000000
      TabOrder = 1
    end
  end
  object datasourceecolage1: TDataSource
    DataSet = ecolage1
    Left = 344
    Top = 256
  end
  object ecolage1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    AutoCommitUpdates = False
    Left = 396
    Top = 136
    object ecolage1crd: TStringField
      FieldName = 'crd'
      EditMask = '!000\ 00\ 000\ 00;1;_'
      Size = 50
    end
    object ecolage1esp: TStringField
      FieldName = 'esp'
      EditMask = '000\ 000;1;_'
      Size = 50
    end
    object ecolage1chq: TStringField
      FieldName = 'chq'
      EditMask = '00\ 000\ 000\ 000;1;_'
      Size = 50
    end
    object ecolage1mois: TStringField
      FieldName = 'mois'
      Size = 100
    end
    object ecolage1datepay: TStringField
      FieldName = 'datepay'
      Size = 50
    end
    object ecolage1tmotn: TStringField
      FieldName = 'tmotn'
      EditMask = '000\ 000;1;_'
      Size = 50
    end
    object ecolage1cmtn: TStringField
      FieldName = 'cmtn'
      EditMask = '000\ 000;1;_'
    end
  end
end
