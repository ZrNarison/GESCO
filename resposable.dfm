object Form15: TForm15
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Cr'#233'er Compte'
  ClientHeight = 581
  ClientWidth = 538
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
    Left = 16
    Top = 374
    Width = 58
    Height = 13
    Caption = 'Mot de pass'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 581
    Align = alClient
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 35
      Height = 13
      Caption = 'Groupe'
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
    object Label12: TLabel
      Left = 16
      Top = 266
      Width = 33
      Height = 13
      Caption = 'Adress'
    end
    object Label4: TLabel
      Left = 16
      Top = 309
      Width = 38
      Height = 13
      Caption = 'Contact'
      FocusControl = DBEdit3
    end
    object Label2: TLabel
      Left = 16
      Top = 392
      Width = 58
      Height = 13
      Caption = 'Mot de pass'
    end
    object Image1: TImage
      AlignWithMargins = True
      Left = 391
      Top = 16
      Width = 113
      Height = 117
      Center = True
      IncrementalDisplay = True
      ParentShowHint = False
      ShowHint = True
      Stretch = True
    end
    object Label5: TLabel
      Left = 16
      Top = 438
      Width = 61
      Height = 13
      Caption = 'Confirmation'
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
    object Edit5: TEdit
      Left = 128
      Top = 258
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object BitBtn1: TBitBtn
      Left = 68
      Top = 481
      Width = 83
      Height = 25
      Caption = '&ENREGISTRER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 226
      Top = 481
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
    end
    object BitBtn3: TBitBtn
      Left = 226
      Top = 530
      Width = 75
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object BitBtn4: TBitBtn
      Left = 76
      Top = 530
      Width = 75
      Height = 25
      Caption = 'A&NNULER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn4Click
    end
    object DBEdit3: TDBEdit
      Left = 128
      Top = 305
      Width = 89
      Height = 21
      DataField = 'tel'
      DataSource = DataSource1
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 128
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 0
      Items.Strings = (
        'Administrateur'
        'Directeur'
        'S'#233'cretaire')
    end
    object Edit1: TEdit
      Left = 128
      Top = 384
      Width = 145
      Height = 21
      PasswordChar = '*'
      TabOrder = 7
    end
    object Edit4: TEdit
      Left = 128
      Top = 430
      Width = 145
      Height = 21
      PasswordChar = '*'
      TabOrder = 8
    end
    object Button1: TButton
      Left = 128
      Top = 344
      Width = 89
      Height = 25
      Caption = 'Import'#233' p&hoto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      TabOrder = 6
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 139
      Width = 385
      Height = 113
      Caption = 'CIN'
      TabOrder = 3
      object Label11: TLabel
        Left = 21
        Top = 20
        Width = 33
        Height = 13
        Caption = 'N'#176' CIN'
      end
      object Label8: TLabel
        Left = 245
        Top = 20
        Width = 12
        Height = 13
        Caption = 'du'
      end
      object Label9: TLabel
        Left = 21
        Top = 68
        Width = 6
        Height = 13
        Caption = #224
      end
      object DBEdit2: TDBEdit
        Left = 128
        Top = 12
        Width = 89
        Height = 21
        DataField = 'cin'
        DataSource = DataSource1
        TabOrder = 0
      end
      object Edit6: TEdit
        Left = 128
        Top = 65
        Width = 254
        Height = 21
        TabOrder = 2
      end
      object DateTimePicker1: TDateTimePicker
        Left = 293
        Top = 12
        Width = 89
        Height = 21
        Date = 44165.000000000000000000
        Time = 44165.000000000000000000
        TabOrder = 1
      end
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
    Left = 400
    Top = 320
    object FDMemTable1cin: TStringField
      FieldName = 'cin'
      EditMask = '!000\ 000\ 000\ 000;1;_'
      Size = 50
    end
    object FDMemTable1tel: TStringField
      FieldName = 'tel'
      EditMask = '!000\ 00\ 000\ 00;1;_'
      Size = 50
    end
    object FDMemTable1code: TStringField
      FieldName = 'code'
      Size = 60
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 296
    Top = 288
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 440
    Top = 152
  end
end
