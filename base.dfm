object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 577
  Width = 765
  object ADOCommand1: TADOCommand
    Parameters = <>
    Left = 120
    Top = 8
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Etablissement'
    Left = 40
    Top = 80
    object ADOTable1Code: TWideStringField
      FieldName = 'Code'
      Size = 255
    end
    object ADOTable1Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable1STAT: TWideStringField
      FieldName = 'STAT'
      Size = 50
    end
    object ADOTable1NIF: TWideStringField
      FieldName = 'NIF'
      Size = 50
    end
    object ADOTable1Adress: TWideStringField
      FieldName = 'Adress'
      Size = 50
    end
    object ADOTable1email: TWideMemoField
      FieldName = 'email'
      BlobType = ftWideMemo
    end
    object ADOTable1Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
  end
  object ADOTable2: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Classee'
    Left = 104
    Top = 80
    object ADOTable2Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable2Tutilaire: TWideStringField
      FieldName = 'Tutilaire'
      Size = 50
    end
    object ADOTable2Ecolage: TIntegerField
      FieldName = 'Ecolage'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 40
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 104
    Top = 144
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Classee.Classe, Classee.Tutilaire, Ecolage.Montant AS Eco' +
        'lage'
      'FROM Classee, Ecolage'
      'GROUP BY Classee.Classe, Classee.Tutilaire, Ecolage.Montant;')
    Left = 400
    Top = 72
    object ADOQuery1Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOQuery1Tutilaire: TWideStringField
      FieldName = 'Tutilaire'
      Size = 50
    end
    object ADOQuery1Ecolage: TIntegerField
      FieldName = 'Ecolage'
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery1
    Left = 400
    Top = 128
  end
  object ADOTable3: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Matiere'
    Left = 168
    Top = 79
    object ADOTable3Code: TWideStringField
      FieldName = 'Code'
      Size = 50
    end
    object ADOTable3Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 100
    end
    object ADOTable3Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable3Serie: TWideStringField
      FieldName = 'Serie'
      Size = 50
    end
    object ADOTable3Coefficient: TIntegerField
      FieldName = 'Coefficient'
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOTable3
    Left = 168
    Top = 143
  end
  object ADOTable4: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Professeur'
    Left = 229
    Top = 79
    object ADOTable4Appellation: TWideStringField
      FieldName = 'Appellation'
      Size = 50
    end
    object ADOTable4Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable4Prenom: TWideStringField
      FieldName = 'Prenom'
      Size = 25
    end
    object ADOTable4Date_naissance: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object ADOTable4Lieu_naissance: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 50
    end
    object ADOTable4Adress: TWideStringField
      FieldName = 'Adress'
      Size = 50
    end
    object ADOTable4NCIN: TWideStringField
      FieldName = 'N'#176'CIN'
      Size = 50
    end
    object ADOTable4Diplome: TWideStringField
      FieldName = 'Diplome'
    end
    object ADOTable4Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 50
    end
    object ADOTable4Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object ADOTable4D_Classe: TWideStringField
      FieldName = 'D_Classe'
      Size = 50
    end
    object ADOTable4F_Classe: TWideStringField
      FieldName = 'F_Classe'
      Size = 50
    end
    object ADOTable4Salaire: TFloatField
      FieldName = 'Salaire'
    end
  end
  object DataSource5: TDataSource
    DataSet = ADOTable4
    Left = 229
    Top = 143
  end
  object DataSource6: TDataSource
    DataSet = ADOTable5
    Left = 294
    Top = 142
  end
  object ADOTable5: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Classee'
    Left = 294
    Top = 78
    object ADOTable5Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable5Tutilaire: TWideStringField
      FieldName = 'Tutilaire'
      Size = 50
    end
    object ADOTable5Ecolage: TIntegerField
      FieldName = 'Ecolage'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Count(Professeur.D_Classe) AS nb , Diplome'
      'FROM Professeur'
      'GROUP BY Professeur.D_Classe,Professeur.Diplome;')
    Left = 464
    Top = 72
    object ADOQuery2nb: TIntegerField
      FieldName = 'nb'
    end
    object ADOQuery2Diplome: TWideStringField
      FieldName = 'Diplome'
    end
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery2
    Left = 464
    Top = 128
  end
  object ADOTable6: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Classe'
    MasterFields = 'Classe'
    MasterSource = DataSource20
    TableName = 'Etudiant'
    Left = 32
    Top = 208
    object ADOTable6NMatricule: TAutoIncField
      FieldName = 'N'#176'Matricule'
      ReadOnly = True
    end
    object ADOTable6Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable6Date_naissance: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object ADOTable6Lieu_naissance: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 255
    end
    object ADOTable6Fille_Fils: TWideStringField
      FieldName = 'Fille_Fils'
      Size = 255
    end
    object ADOTable6Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable6Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable6Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object ADOTable6Sexe: TWideStringField
      FieldName = 'Sexe'
      Size = 50
    end
  end
  object DataSource8: TDataSource
    DataSet = ADOTable6
    Left = 32
    Top = 272
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\LOGICIEL\DOCUMEN' +
      'TS\DELPHI\GESCO\Win32\Debug\Gesco.mdb;Persist Security Info=Fals' +
      'e'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object DataSource9: TDataSource
    DataSet = ADOQuery3
    Left = 536
    Top = 128
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Count(Etablissement.N'#176') AS ecole'
      'FROM Etablissement;')
    Left = 600
    Top = 72
    object ADOQuery4ecole: TIntegerField
      FieldName = 'ecole'
    end
  end
  object DataSource10: TDataSource
    DataSet = ADOQuery4
    Left = 600
    Top = 126
  end
  object DataSource11: TDataSource
    DataSet = ADOQuery5
    Left = 672
    Top = 128
  end
  object ADOTable7: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Ecolage_mois'
    MasterFields = 'Ecolage_mois'
    MasterSource = DataSource35
    TableName = 'Ecolage'
    Left = 88
    Top = 208
    object ADOTable7NMatricule: TIntegerField
      FieldName = 'N'#176'Matricule'
    end
    object ADOTable7Ecolage_mois: TDateTimeField
      FieldName = 'Ecolage_mois'
      DisplayFormat = 'mmmm yyyy'
    end
    object ADOTable7Montant: TIntegerField
      FieldName = 'Montant'
    end
    object ADOTable7Date_payer: TDateTimeField
      FieldName = 'Date_payer'
    end
    object ADOTable7Responsable: TWideStringField
      FieldName = 'Responsable'
      Size = 50
    end
    object ADOTable7Mode_payement: TWideStringField
      FieldName = 'Mode_payement'
      Size = 50
    end
    object ADOTable7reglement: TBooleanField
      FieldName = 'reglement'
    end
  end
  object ecolage: TDataSource
    DataSet = ADOTable7
    Left = 88
    Top = 272
  end
  object ADOQuery6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Etudiant.Classe'
      'FROM Etudiant'
      'GROUP BY Etudiant.Classe;')
    Left = 400
    Top = 208
    object ADOQuery6Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
  end
  object reqecolage: TDataSource
    DataSet = ADOQuery6
    Left = 400
    Top = 264
  end
  object DataSource12: TDataSource
    DataSet = ADOTable8
    Left = 152
    Top = 272
  end
  object ADOTable8: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Responsable'
    Left = 152
    Top = 208
    object ADOTable8id_ResF: TWideStringField
      FieldName = 'id_ResF'
      Size = 50
    end
    object ADOTable8CIN: TWideStringField
      FieldName = 'CIN'
      Size = 255
    end
    object ADOTable8Nom: TWideStringField
      FieldName = 'Nom'
      Size = 60
    end
    object ADOTable8Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable8Telephone: TWideStringField
      FieldName = 'Telephone'
      Size = 255
    end
    object ADOTable8Mot_de_passe: TWideStringField
      FieldName = 'Mot_de_passe'
      Size = 255
    end
    object ADOTable8photo: TBlobField
      FieldName = 'photo'
    end
  end
  object DataSource13: TDataSource
    DataSet = ADOTable9
    Left = 224
    Top = 272
  end
  object ADOTable9: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Trimestre'
    Left = 224
    Top = 208
    object ADOTable9Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOTable9Debut: TDateTimeField
      FieldName = 'Debut'
    end
    object ADOTable9Fin: TDateTimeField
      FieldName = 'Fin'
    end
  end
  object DataSource14: TDataSource
    DataSet = ADOTable10
    Left = 296
    Top = 272
  end
  object ADOTable10: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Resultat'
    Left = 296
    Top = 208
    object ADOTable10Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 50
    end
    object ADOTable10Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOTable10Devoir: TIntegerField
      FieldName = 'Devoir'
    end
    object ADOTable10Examen: TIntegerField
      FieldName = 'Examen'
    end
    object ADOTable10Observation: TWideStringField
      FieldName = 'Observation'
      Size = 15
    end
    object ADOTable10NMatricule: TIntegerField
      FieldName = 'N'#176'Matricule'
    end
  end
  object ADOQuery7: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin]))&" m' +
        'ois" AS [Dur'#233'e ]'
      'FROM Trimestre'
      'GROUP BY Trimestre.Trimestre;')
    Left = 464
    Top = 208
    object ADOQuery7Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOQuery7Durée: TWideStringField
      FieldName = 'Dur'#233'e '
      ReadOnly = True
      Size = 255
    end
  end
  object DataSource15: TDataSource
    DataSet = ADOQuery7
    Left = 464
    Top = 264
  end
  object ADOQuery8: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Trimestre.Trimestre, Sum(DateDiff("m",[Debut],[Fin])) AS ' +
        'ATO'
      'FROM Trimestre'
      'GROUP BY Trimestre.Trimestre;')
    Left = 536
    Top = 208
    object ADOQuery8Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOQuery8ATO: TFloatField
      FieldName = 'ATO'
    end
  end
  object ReqTrim: TDataSource
    DataSet = ADOQuery8
    Left = 536
    Top = 264
  end
  object ADOQuery9: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT N'#176'Matricule,Ecolage_mois, Date_payer, Montant,Responsable' +
        ' FROM Ecolage GROUP BY N'#176'Matricule,Ecolage_mois,Date_payer,Monta' +
        'nt,Responsable')
    Left = 600
    Top = 208
    object ADOQuery9NMatricule: TIntegerField
      FieldName = 'N'#176'Matricule'
    end
    object ADOQuery9Ecolage_mois: TDateTimeField
      FieldName = 'Ecolage_mois'
      DisplayFormat = 'mmmm yyyy'
    end
    object ADOQuery9Date_payer: TDateTimeField
      FieldName = 'Date_payer'
    end
    object ADOQuery9Montant: TIntegerField
      FieldName = 'Montant'
    end
    object ADOQuery9Responsable: TWideStringField
      FieldName = 'Responsable'
      Size = 50
    end
  end
  object reqecolage1: TDataSource
    DataSet = ADOQuery9
    Left = 600
    Top = 264
  end
  object ADOTable11: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Temps'
    Left = 24
    Top = 328
    object ADOTable11Classe: TWideStringField
      FieldName = 'Classe'
      Size = 255
    end
    object ADOTable11Prof: TWideStringField
      FieldName = 'Prof'
      Size = 255
    end
    object ADOTable11Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 255
    end
    object ADOTable11Jours: TWideStringField
      FieldName = 'Jours'
      Size = 255
    end
    object ADOTable11Duree: TIntegerField
      FieldName = 'Duree'
    end
    object ADOTable11Date: TDateTimeField
      FieldName = 'Date'
    end
  end
  object DataSource16: TDataSource
    DataSet = ADOTable11
    Left = 24
    Top = 392
  end
  object ADOTable12: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Classe'
    TableName = 'Matiere'
    Left = 88
    Top = 328
    object ADOTable12Code: TWideStringField
      FieldName = 'Code'
      Size = 50
    end
    object ADOTable12Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 100
    end
    object ADOTable12Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable12Serie: TWideStringField
      FieldName = 'Serie'
      Size = 50
    end
    object ADOTable12Coefficient: TIntegerField
      FieldName = 'Coefficient'
    end
  end
  object DataSource17: TDataSource
    DataSet = ADOTable12
    Left = 88
    Top = 392
  end
  object ADOTable13: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Etudiant'
    Left = 160
    Top = 328
    object ADOTable13NMatricule: TAutoIncField
      FieldName = 'N'#176'Matricule'
      ReadOnly = True
    end
    object ADOTable13Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable13Date_naissance: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object ADOTable13Lieu_naissance: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 255
    end
    object ADOTable13Fille_Fils: TWideStringField
      FieldName = 'Fille_Fils'
      Size = 255
    end
    object ADOTable13Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable13Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable13Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object ADOTable13Sexe: TWideStringField
      FieldName = 'Sexe'
      Size = 50
    end
  end
  object DataSource18: TDataSource
    DataSet = ADOTable13
    Left = 160
    Top = 392
  end
  object ADOQuery10: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Classee.Classe'
      'FROM Classee;')
    Left = 680
    Top = 208
    object ADOQuery10Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
  end
  object DataSource19: TDataSource
    DataSet = ADOQuery10
    Left = 680
    Top = 264
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Classee.Classe'
      
        'FROM Classee INNER JOIN Etudiant ON Classee.Classe = Etudiant.Cl' +
        'asse'
      'GROUP BY Classee.Classe;')
    Left = 672
    Top = 72
    object ADOQuery5Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
  end
  object DataSource20: TDataSource
    DataSet = ADOTable14
    Left = 224
    Top = 392
  end
  object ADOTable14: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Classe'
    MasterFields = 'Classe'
    MasterSource = DataSource11
    TableName = 'Etudiant'
    Left = 224
    Top = 328
    object ADOTable14NMatricule: TAutoIncField
      FieldName = 'N'#176'Matricule'
      ReadOnly = True
    end
    object ADOTable14Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable14Date_naissance: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object ADOTable14Lieu_naissance: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 255
    end
    object ADOTable14Fille_Fils: TWideStringField
      FieldName = 'Fille_Fils'
      Size = 255
    end
    object ADOTable14Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable14Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable14Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object ADOTable14Sexe: TWideStringField
      FieldName = 'Sexe'
      Size = 50
    end
  end
  object ADOQuery11: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Ecolage.Ecolage_mois'
      'FROM Ecolage'
      'GROUP BY Ecolage.Ecolage_mois;')
    Left = 392
    Top = 320
  end
  object DataSource21: TDataSource
    DataSet = ADOQuery11
    Left = 384
    Top = 384
  end
  object ADOTable15: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Responsable'
    Left = 296
    Top = 327
    object ADOTable15id_ResF: TWideStringField
      FieldName = 'id_ResF'
      Size = 50
    end
    object ADOTable15CIN: TWideStringField
      FieldName = 'CIN'
      Size = 255
    end
    object ADOTable15Nom: TWideStringField
      FieldName = 'Nom'
      Size = 60
    end
    object ADOTable15Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable15Telephone: TWideStringField
      FieldName = 'Telephone'
      Size = 255
    end
    object ADOTable15code: TWideStringField
      FieldName = 'code'
      Size = 255
    end
    object ADOTable15photo: TBlobField
      FieldName = 'photo'
    end
  end
  object DataSource22: TDataSource
    DataSet = ADOTable15
    Left = 294
    Top = 392
  end
  object ADOQuery12: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT Count([Nom]) AS Nb_etu'
      'FROM Etudiant;')
    Left = 465
    Top = 320
  end
  object DataSource23: TDataSource
    DataSet = ADOQuery12
    Left = 462
    Top = 384
  end
  object ADOQuery14: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Ecolage.N'#176'Matricule, Ecolage.Responsable, Ecolage.Date_pa' +
        'yer AS [Du], Month([Ecolage]![Ecolage_mois]) AS [Ecolage mois], ' +
        'Ecolage.Montant AS SOMME'
      'FROM Ecolage'
      
        'GROUP BY Ecolage.N'#176'Matricule, Ecolage.Responsable, Ecolage.Date_' +
        'payer, Month([Ecolage]![Ecolage_mois]), Ecolage.Montant;')
    Left = 528
    Top = 328
    object ADOQuery14NMatricule: TIntegerField
      FieldName = 'N'#176'Matricule'
    end
    object ADOQuery14Responsable: TWideStringField
      FieldName = 'Responsable'
      Size = 50
    end
    object ADOQuery14Du: TDateTimeField
      FieldName = 'Du'
    end
    object ADOQuery14Ecolagemois: TSmallintField
      FieldName = 'Ecolage mois'
    end
    object ADOQuery14SOMME: TIntegerField
      FieldName = 'SOMME'
    end
  end
  object DataSource25: TDataSource
    DataSet = ADOQuery14
    Left = 534
    Top = 384
  end
  object DataSource26: TDataSource
    DataSet = ADOQuery15
    Left = 608
    Top = 384
  end
  object ADOQuery16: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Responsable.id_ResF AS [USER]'
      'FROM Responsable'
      'GROUP BY Responsable.id_ResF;')
    Left = 680
    Top = 325
    object ADOQuery16USER: TWideStringField
      FieldName = 'USER'
      Size = 50
    end
  end
  object DataSource28: TDataSource
    DataSet = ADOQuery16
    Left = 680
    Top = 381
  end
  object DataSource30: TDataSource
    DataSet = ADOTable20
    Left = 377
    Top = 501
  end
  object ADOTable17: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Classe'
    MasterFields = 'Classe'
    MasterSource = DataSource30
    TableName = 'Etudiant'
    Left = 16
    Top = 456
    object ADOTable17NMatricule: TAutoIncField
      FieldName = 'N'#176'Matricule'
      ReadOnly = True
    end
    object ADOTable17Nom: TWideStringField
      FieldName = 'Nom'
      Size = 50
    end
    object ADOTable17Date_naissance: TDateTimeField
      FieldName = 'Date_naissance'
    end
    object ADOTable17Lieu_naissance: TWideStringField
      FieldName = 'Lieu_naissance'
      Size = 255
    end
    object ADOTable17Fille_Fils: TWideStringField
      FieldName = 'Fille_Fils'
      Size = 255
    end
    object ADOTable17Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable17Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable17Contact: TWideStringField
      FieldName = 'Contact'
      Size = 50
    end
    object ADOTable17Sexe: TWideStringField
      FieldName = 'Sexe'
      Size = 50
    end
  end
  object DataSource31: TDataSource
    DataSet = ADOTable17
    Left = 22
    Top = 512
  end
  object ADOTable18: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'N'#176'Matricule'
    MasterFields = 'N'#176'Matricule'
    MasterSource = DataSource31
    TableName = 'Resultat'
    Left = 87
    Top = 456
    object ADOTable18Matiere: TWideStringField
      FieldName = 'Matiere'
      Size = 50
    end
    object ADOTable18Trimestre: TWideStringField
      FieldName = 'Trimestre'
      Size = 50
    end
    object ADOTable18Devoir: TIntegerField
      FieldName = 'Devoir'
    end
    object ADOTable18Examen: TIntegerField
      FieldName = 'Examen'
    end
    object ADOTable18Observation: TWideStringField
      FieldName = 'Observation'
      Size = 15
    end
    object ADOTable18NMatricule: TIntegerField
      FieldName = 'N'#176'Matricule'
    end
  end
  object DataSource32: TDataSource
    DataSet = ADOTable18
    Left = 93
    Top = 512
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Classe, Count(Etudiant.Sexe) AS nombre FROM Etudiant GROU' +
        'P BY Classe')
    Left = 536
    Top = 72
    object ADOQuery3Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOQuery3nombre: TIntegerField
      FieldName = 'nombre'
    end
  end
  object ADOQuery15: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Ecolage_mois FROM Ecolage Group By Ecolage_mois')
    Left = 600
    Top = 328
  end
  object ADOTable16: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'N'#176'Matricule'
    MasterFields = 'N'#176'Matricule'
    MasterSource = DataSource31
    TableName = 'Responsable'
    Left = 175
    Top = 456
  end
  object DataSource27: TDataSource
    DataSet = ADOTable16
    Left = 181
    Top = 512
  end
  object DataSource29: TDataSource
    DataSet = ADOTable19
    Left = 253
    Top = 512
  end
  object ADOTable19: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Responsable'
    Left = 256
    Top = 456
    object ADOTable19id_ResF: TWideStringField
      FieldName = 'id_ResF'
      Size = 50
    end
    object ADOTable19CIN: TWideStringField
      FieldName = 'CIN'
      Size = 255
    end
    object ADOTable19Nom: TWideStringField
      FieldName = 'Nom'
      Size = 60
    end
    object ADOTable19Adresse: TWideStringField
      FieldName = 'Adresse'
      Size = 25
    end
    object ADOTable19Telephone: TWideStringField
      FieldName = 'Telephone'
      Size = 255
    end
    object ADOTable19Mot_de_passe: TWideStringField
      FieldName = 'Mot_de_passe'
      Size = 255
    end
    object ADOTable19photo: TBlobField
      FieldName = 'photo'
    end
  end
  object SourceDataSet: TDataSource
    DataSet = ADODataSet1
    Left = 280
    Top = 16
  end
  object ADODataSet2: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT Ecolage_mois FROM Ecolage, Classee GROUP BY Ecolage.Ecola' +
      'ge_mois;'#13#10
    Parameters = <>
    Left = 392
    Top = 16
    object ADODataSet2Ecolage_mois: TDateTimeField
      FieldName = 'Ecolage_mois'
    end
  end
  object DataSource34: TDataSource
    DataSet = ADODataSet2
    Left = 464
    Top = 16
  end
  object ADODataSet3: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT Ecolage_mois FROM Ecolage, Classee GROUP BY Ecolage.Ecola' +
      'ge_mois;'#13#10
    Parameters = <>
    Left = 544
    Top = 16
    object ADODataSet3Ecolage_mois: TDateTimeField
      FieldName = 'Ecolage_mois'
      DisplayFormat = 'mmmm yyyy'
    end
  end
  object DataSource35: TDataSource
    DataSet = ADODataSet3
    Left = 624
    Top = 16
  end
  object ADOTable20: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Classee'
    Left = 376
    Top = 448
    object ADOTable20Classe: TWideStringField
      FieldName = 'Classe'
      Size = 50
    end
    object ADOTable20Tutilaire: TWideStringField
      FieldName = 'Tutilaire'
      Size = 50
    end
    object ADOTable20Ecolage: TWideStringField
      FieldName = 'Ecolage'
      Size = 50
    end
  end
  object ADODataSet1: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'SELECT id_ResF, code FROM Responsable ORDER BY id_ResF'
    Parameters = <>
    Left = 208
    Top = 16
    object ADODataSet1id_ResF: TWideStringField
      FieldName = 'id_ResF'
      Size = 50
    end
    object ADODataSet1code: TWideStringField
      FieldName = 'code'
      Size = 255
    end
  end
  object ADODataSet4: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 696
    Top = 16
  end
end
