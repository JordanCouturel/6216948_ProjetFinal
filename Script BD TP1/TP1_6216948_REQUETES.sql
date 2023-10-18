USE TP1_BD_6216948;
GO

	
	------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------
	------------------------------------------------------------------------------------------------------------------------
	-------------REQUETES---------------------------------------------------------------------------------------------------


-- S�lectionnez les joueurs ayant un �ge sup�rieur � 25 ans, ordonn�s par �ge d�croissant.
SELECT JoueurID, NomComplet, Age, Position
FROM JoueurSchema.Joueur
WHERE Age > 25
ORDER BY Age DESC;



-- Calculez le nombre moyen de buts par �quipe en utilisant INNER JOIN, GROUP BY et AVG.
SELECT E.Nom AS NomEquipe, AVG(ST.NbButs) AS MoyenneButs
FROM SpecialisteSchema.Equipe AS E
INNER JOIN JoueurSchema.Joueur AS J ON E.EquipeID = J.EquipeID
INNER JOIN (
    SELECT JoueurID, SUM(valeur) AS NbButs
    FROM JoueurSchema.Statistique
    WHERE Nom = 'NbButs' 
    GROUP BY JoueurID
) AS ST ON J.JoueurID = ST.JoueurID
GROUP BY E.Nom;



-- Calculez le nombre moyen de buts par �quipe en utilisant INNER JOIN, GROUP BY, AVG et HAVING.
SELECT E.Nom AS NomEquipe, AVG(ST.NbButs) AS MoyenneButs
FROM SpecialisteSchema.Equipe AS E
INNER JOIN JoueurSchema.Joueur AS J ON E.EquipeID = J.EquipeID
INNER JOIN (
    SELECT JoueurID, SUM(valeur) AS NbButs
    FROM JoueurSchema.Statistique
    WHERE Nom = 'NbButs' 
    GROUP BY JoueurID
) AS ST ON J.JoueurID = ST.JoueurID
GROUP BY E.Nom
HAVING AVG(ST.NbButs) > 10;



-- Calculez le nombre de joueurs, de sp�cialistes et le nombre total de buts par �quipe.
SELECT E.Nom AS NomEquipe, 
       COUNT(DISTINCT J.JoueurID) AS NombreDeJoueurs, 
       COUNT(DISTINCT S.SpecialisteID) AS NombreDeSpecialistes,
       SUM(ST.Valeur) AS TotalButs
FROM SpecialisteSchema.Equipe AS E
LEFT JOIN JoueurSchema.Joueur AS J ON E.EquipeID = J.EquipeID
LEFT JOIN SpecialisteSchema.EquipeSpecialiste AS ES ON E.EquipeID = ES.EquipeID
LEFT JOIN SpecialisteSchema.Specialiste AS S ON ES.SpecialisteID = S.SpecialisteID
LEFT JOIN JoueurSchema.Statistique AS ST ON J.JoueurID = ST.JoueurID
WHERE ST.Nom = 'NbButs'
GROUP BY E.Nom;



-- S�lectionnez les joueurs ayant marqu� plus de buts que la moyenne de leur �quipe
SELECT J.NomComplet, J.EquipeID
FROM JoueurSchema.Joueur AS J
INNER JOIN (
    -- Sous-requ�te pour calculer la moyenne des buts par �quipe
    SELECT E.EquipeID, AVG(ST.Valeur) AS MoyenneButsEquipe
    FROM SpecialisteSchema.Equipe AS E
    INNER JOIN JoueurSchema.Joueur AS J2 ON E.EquipeID = J2.EquipeID
    INNER JOIN JoueurSchema.Statistique AS ST ON J2.JoueurID = ST.JoueurID
    WHERE ST.Nom = 'NbButs'
    GROUP BY E.EquipeID
) AS MoyenneButsParEquipe ON J.EquipeID = MoyenneButsParEquipe.EquipeID
INNER JOIN JoueurSchema.Statistique AS ST ON J.JoueurID = ST.JoueurID
WHERE ST.Nom = 'NbButs' AND ST.Valeur > MoyenneButsParEquipe.MoyenneButsEquipe;



--Vue----
-- Cr�ation de la vue StatistiquesEquipe
CREATE VIEW JoueurSchema.StatistiquesEquipe AS
SELECT
    J.JoueurID,
    J.NomComplet AS NomDuJoueur,
    J.EquipeID,
    S.Nom AS NomStatistique,
    S.Valeur AS ValeurStatistique
FROM
    JoueurSchema.Joueur AS J
INNER JOIN
    JoueurSchema.Statistique AS S ON J.JoueurID = S.JoueurID;


--fonction--	
-- Cr�ation de la fonction pour obtenir les trois meilleurs buteurs d'une �quipe
CREATE FUNCTION JoueurSchema.ObtenirTop3Joueurs(@NomEquipe VARCHAR(50))
RETURNS TABLE
AS
RETURN
(
    SELECT TOP 3
        NomDuJoueur,
        NomStatistique,
        ValeurStatistique AS Valeur
    FROM
        JoueurSchema.StatistiquesEquipe
    WHERE
        EquipeID = (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = @NomEquipe)
          AND NomStatistique = 'NbButs'
    ORDER BY
        ValeurStatistique DESC
);

--TEST-------------



--AVANT--
--appel de la fonction
SELECT * FROM JoueurSchema.ObtenirTop3Joueurs('Penguins')

--On modifie le nombre buts d'un joueur des penguins afin qu'il figure dans la liste des 3 meilleures buteurs et de d�montrer que la fonction fonctionne comme il se doit
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (260,'NbButs',25 , 8, 1);

--APRES--
--on appelle la fonction a nouveau
SELECT * FROM JoueurSchema.ObtenirTop3Joueurs('Penguins')







--procedure stock�e 1--
-- Cr�ation de la proc�dure stock�e--
CREATE PROCEDURE JoueurSchema.ObtenirTop3JoueursProc
    @NomEquipe VARCHAR(50)
AS
BEGIN
    -- Appel de la fonction pour obtenir les trois meilleurs joueurs d'une �quipe en fonction de leurs buts
    SELECT * FROM JoueurSchema.ObtenirTop3Joueurs(@NomEquipe);
END;

--TEST--

SELECT * FROM JoueurSchema.ObtenirTop3Joueurs('Penguins');
--appel de la procedure
EXEC JoueurSchema.ObtenirTop3JoueursProc 'Penguins';






--procedure stock�e 2--
-- Cr�ation de la proc�dure stock�e--
--Cette proc�dure stock�e qui retourne les joueurs qui ont plus de 15 buts marqu�s--

CREATE PROCEDURE GetJoueursAvecPlusDe20Buts
    @EquipeID INT
AS
BEGIN
    -- S�lection des joueurs avec plus de 15 buts pour l'�quipe sp�cifi�e
    SELECT JS.NomComplet, JS.Age, JS.Position, JS.DateDeNaissance, S.Valeur AS ButsMarques
    FROM JoueurSchema.Joueur JS
    INNER JOIN JoueurSchema.Statistique S ON JS.JoueurID = S.JoueurID
    INNER JOIN JoueurSchema.TypeStat TS ON S.TypeStatID = TS.TypeStatID
    WHERE JS.EquipeID = @EquipeID
        AND TS.NomType = 'NbButs'
        AND S.Valeur >= 15;
END;



--TEST--
--on ajoute une statistique a un joueur de cette meme equipe qui n'a pas 15 buts ou plus afin qu'il ait plus de 15 buts et figure dans la liste lors de l'appel de la procedure,
--et demontrer que la procedure fonctionne adequatement--

--avant
EXEC GetJoueursAvecPlusDe20Buts @EquipeID = 1;


INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (264, 'NbButs', 20, 14, 1);

--apres--
EXEC GetJoueursAvecPlusDe20Buts @EquipeID = 1;





--d�clencheur--
--on cr�er un trigger qui verifie si , apres un insert ou un update sur la table EquipeSpecialiste, la date de d�but est post�rieure � la date de fin
CREATE TRIGGER CheckDateEmploi
ON SpecialisteSchema.EquipeSpecialiste
AFTER INSERT, UPDATE
AS
BEGIN
    -- V�rifier si la date de d�but est ant�rieure � la date de fin 
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE DateDebutEmploi IS NOT NULL AND DateFinEmploi IS NOT NULL AND DateDebutEmploi > DateFinEmploi
    )
    BEGIN
        -- Annuler l'insertion ou la mise � jour si la date de d�but est post�rieure � la date de fin
        THROW 51000, 'La date de d�but de l''emploi doit �tre ant�rieure � la date de fin.', 1;
    END;
END;
--test--
--on essaie d'inserer un specialiste qui a une date de fin d'emploi ant�rieure a la date de debut d'emploi, et on recoit le message d'erreur
INSERT INTO SpecialisteSchema.EquipeSpecialiste (EquipeSpecialisteID, DateDebutEmploi, DateFinEmploi, EquipeID, SpecialisteID)
VALUES (43, '2023-01-01', '2022-12-31', 1, 1);
