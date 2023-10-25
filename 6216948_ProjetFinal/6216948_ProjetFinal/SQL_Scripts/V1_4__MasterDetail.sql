GO
USE TP1_BD_6216948
GO

create PROCEDURE USP_GetTeamDetails
    @EquipeID INT
AS
BEGIN
    SELECT
       E.*,
        J.*
    FROM SpecialisteSchema.Equipe AS E
    LEFT JOIN JoueurSchema.Joueur AS J ON E.EquipeID = J.EquipeID
    WHERE E.EquipeID = @EquipeID;
END