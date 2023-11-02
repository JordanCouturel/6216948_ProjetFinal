go
use TP1_BD_6216948
go



CREATE NONCLUSTERED INDEX IX_Joueur_DateDeNaissance ON JoueurSchema.Joueur(DateDeNaissance) 

CREATE NONCLUSTERED INDEX IX_Statistique_JoueurID ON JoueurSchema.Statistique(JoueurID)