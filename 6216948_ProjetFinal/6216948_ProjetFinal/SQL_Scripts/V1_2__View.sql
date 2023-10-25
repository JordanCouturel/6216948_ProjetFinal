go
use TP1_BD_6216948;
go

CREATE VIEW JoueurSchema.VwStatistiquesEquipe AS
SELECT
    J.JoueurID,
    J.NomComplet AS NomDuJoueur,
    J.EquipeID,
    S.Nom AS NomStatistique,
    S.Valeur AS ValeurStatistique
FROM
    JoueurSchema.Joueur AS J
INNER JOIN
    JoueurSchema.Statistique AS S ON J.JoueurID = S.JoueurID

