object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'CREER ETABLISSEMENT'
  ClientHeight = 634
  ClientWidth = 1160
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
    Left = -2
    Top = -4
    Width = 1163
    Height = 630
    Color = clBtnShadow
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 58
      Width = 23
      Height = 13
      Caption = 'NOM'
    end
    object Label2: TLabel
      Left = 8
      Top = 104
      Width = 25
      Height = 13
      Caption = 'STAT'
    end
    object Label3: TLabel
      Left = 8
      Top = 144
      Width = 17
      Height = 13
      Caption = 'NIF'
    end
    object Label4: TLabel
      Left = 8
      Top = 184
      Width = 39
      Height = 13
      Caption = 'ADRESS'
    end
    object Label5: TLabel
      Left = 8
      Top = 224
      Width = 30
      Height = 13
      Caption = 'EMAIL'
    end
    object Label6: TLabel
      Left = 8
      Top = 270
      Width = 48
      Height = 13
      Caption = 'CONTACT'
    end
    object Label7: TLabel
      Left = 8
      Top = 10
      Width = 28
      Height = 13
      Caption = 'CODE'
    end
    object BitBtn1: TBitBtn
      Left = 6
      Top = 448
      Width = 83
      Height = 25
      Caption = '&ENREGISTRER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 278
      Top = 448
      Width = 89
      Height = 25
      Caption = '&MODIFIER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 222
      Top = 560
      Width = 75
      Height = 25
      Caption = 'S&UPPRIMER'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 72
      Top = 560
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
    object Edit2: TEdit
      Left = 6
      Top = 77
      Width = 361
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 6
      Top = 197
      Width = 361
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 6
      Top = 243
      Width = 361
      Height = 21
      TabOrder = 5
    end
    object DBGrid1: TDBGrid
      Left = 373
      Top = 2
      Width = 792
      Height = 628
      DataSource = DataModule2.DataSource1
      ReadOnly = True
      TabOrder = 11
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
          Title.Caption = 'CODE'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nom'
          Title.Alignment = taCenter
          Title.Caption = 'ECOLE'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STAT'
          Title.Alignment = taCenter
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NIF'
          Title.Alignment = taCenter
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Adress'
          Title.Alignment = taCenter
          Title.Caption = 'ADRESS'
          Width = 130
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Title.Alignment = taCenter
          Title.Caption = 'EMAIL'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Contact'
          Title.Alignment = taCenter
          Title.Caption = 'CONTACT'
          Width = 100
          Visible = True
        end>
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 117
      Width = 177
      Height = 21
      DataField = 'stat'
      DataSource = DataSource1
      MaxLength = 21
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 6
      Top = 163
      Width = 179
      Height = 21
      DataField = 'nif'
      DataSource = DataSource1
      MaxLength = 13
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 8
      Top = 289
      Width = 177
      Height = 21
      DataField = 'tel'
      DataSource = DataSource1
      MaxLength = 13
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 6
      Top = 29
      Width = 107
      Height = 21
      TabOrder = 0
    end
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'stat'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'nif'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'tel'
        DataType = ftString
        Size = 50
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
    Left = 182
    Top = 488
    object FDMemTable1stat: TStringField
      FieldName = 'stat'
      EditMask = '!00000\ 00\ 0000\ 0\ 00000;1;_'
      Size = 50
    end
    object FDMemTable1nif: TStringField
      FieldName = 'nif'
      EditMask = '!000\ 000\ 000\ 0;1;_'
      Size = 50
    end
    object FDMemTable1tel: TStringField
      FieldName = 'tel'
      EditMask = '!000\ 00\ 000\ 00;1;_'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 278
    Top = 492
  end
end
