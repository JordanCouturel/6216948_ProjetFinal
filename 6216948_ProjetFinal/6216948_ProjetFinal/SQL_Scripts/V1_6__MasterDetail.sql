GO
USE TP1_BD_6216948
GO

create PROCEDURE USP_GetTeamDetails
    @EquipeID INT
AS
BEGIN
    SELECT
       E.*,
        J.JoueurID,J.NomComplet,J.Age,J.Position,J.DateDeNaissance

    FROM SpecialisteSchema.Equipe AS E
    INNER JOIN JoueurSchema.Joueur AS J ON E.EquipeID = J.EquipeID
    WHERE E.EquipeID = @EquipeID
END