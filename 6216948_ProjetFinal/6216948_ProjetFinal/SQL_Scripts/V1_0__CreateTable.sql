
-- Cr�ation du sch�ma pour les sp�cialistes
CREATE SCHEMA [SpecialisteSchema]
GO
-- Cr�ation du sch�ma pour les joueurs
CREATE schema [JoueurSchema];
GO


-- Cr�ation de la table Sp�cialiste
CREATE TABLE SpecialisteSchema.Specialiste (
	SpecialisteID INT PRIMARY KEY,
	Nom VARCHAR(50) NOT NULL,
	Prenom VARCHAR(50) NOT NULL,
	AdresseNumeroPorte INT,
	AdresseRue VARCHAR(100),
	AdresseVille VARCHAR(100),
	AdresseCodePostal VARCHAR(10),
	AdressePays VARCHAR(50),
	Specialite VARCHAR(100),
	CONSTRAINT UQ_Specialiste_NomPrenom UNIQUE (Nom, Prenom)
	
);

GO

-- Cr�ation de la table NumeroTelephone
CREATE TABLE SpecialisteSchema.NumeroTelephone (
	NumeroID INT PRIMARY KEY,
	SpecialisteID INT,
	Numero VARCHAR(15) NOT NULL,
	FOREIGN KEY (SpecialisteID) REFERENCES SpecialisteSchema.Specialiste(SpecialisteID)
);

GO
-- Cr�ation de la table Equipe
CREATE TABLE SpecialisteSchema.Equipe (
	EquipeID INT PRIMARY KEY,
	Nom VARCHAR(50) NOT NULL,
	Ville VARCHAR(50),
	CONSTRAINT UQ_Equipe_Nom UNIQUE (Nom)
);
GO

-- Cr�ation de la table EquipeSpecialiste
CREATE TABLE SpecialisteSchema.EquipeSpecialiste (
	EquipeSpecialisteID INT PRIMARY KEY,
	DateDebutEmploi DATE,
	DateFinEmploi DATE,
	EquipeID INT,
	SpecialisteID INT,
	FOREIGN KEY (EquipeID) REFERENCES SpecialisteSchema.Equipe(EquipeID),
	FOREIGN KEY (SpecialisteID) REFERENCES SpecialisteSchema.Specialiste(SpecialisteID)
);
GO
ALTER TABLE SpecialisteSchema.EquipeSpecialiste
ADD CONSTRAINT DF_DateDebutEmploi DEFAULT GETDATE() FOR DateDebutEmploi;

GO
-- Cr�ation de la table Joueur
CREATE TABLE JoueurSchema.Joueur (
	JoueurID INT PRIMARY KEY,
	NomComplet VARCHAR(100) NOT NULL,
	Age INT,
	Position VARCHAR(50),
	DateDeNaissance DATE,
	EquipeID INT,
	FOREIGN KEY (EquipeID) REFERENCES SpecialisteSchema.Equipe(EquipeID)
);
GO
-- Cr�ation de la table TypeStat
CREATE TABLE JoueurSchema.TypeStat (
	TypeStatID INT PRIMARY KEY,
	NomType VARCHAR(50) NOT NULL,
	CONSTRAINT UQ_TypeStat_NomType UNIQUE (NomType)
);

GO
-- Cr�ation de la table Statistique
CREATE TABLE JoueurSchema.Statistique (
	StatistiqueID INT PRIMARY KEY,
	Nom VARCHAR(50),
	Valeur INT,
	JoueurID INT,
	TypeStatID INT,
	FOREIGN KEY (JoueurID) REFERENCES JoueurSchema.Joueur(JoueurID),
	FOREIGN KEY (TypeStatID) REFERENCES JoueurSchema.TypeStat(TypeStatID)
);
GO
-- Ajout de l'agr�gation entre Statistique et TypeStat
CREATE TABLE JoueurSchema.StatistiqueTypeStat (
	StatistiqueID INT,
	TypeStatID INT,
	PRIMARY KEY (StatistiqueID, TypeStatID),
	FOREIGN KEY (StatistiqueID) REFERENCES JoueurSchema.Statistique(StatistiqueID),
	FOREIGN KEY (TypeStatID) REFERENCES JoueurSchema.TypeStat(TypeStatID)
);

-- Ajout de la relation plusieurs-�-plusieurs entre Sp�cialiste et Equipe
CREATE TABLE SpecialisteSchema.SpecialisteEquipe (
	SpecialisteID INT,
	EquipeID INT,
	PRIMARY KEY (SpecialisteID, EquipeID),
	FOREIGN KEY (SpecialisteID) REFERENCES SpecialisteSchema.Specialiste(SpecialisteID),
	FOREIGN KEY (EquipeID) REFERENCES SpecialisteSchema.Equipe(EquipeID)
);

-- Ajout de la relation 1-�-plusieurs entre Equipe et Joueur
-- La cl� �trang�re EquipeID de la table Joueur r�f�rence maintenant SpecialisteSchema.Equipe
ALTER TABLE JoueurSchema.Joueur
ADD FOREIGN KEY (EquipeID) REFERENCES SpecialisteSchema.Equipe(EquipeID);


