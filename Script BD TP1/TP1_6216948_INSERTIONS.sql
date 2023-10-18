
use [TP1_BD_6216948]
go
INSERT INTO SpecialisteSchema.Equipe (EquipeID,Nom, Ville)
VALUES
    (1,'Penguins', 'Pittsburgh'),
    (2,'Capitals', 'Washington'),
    (3,'Canadiens', 'Montréal');
INSERT INTO SpecialisteSchema.Equipe (EquipeID,Nom, Ville)
VALUES


    (4,'Red Wings', 'Détroit'),
    (5,'Stars', 'Dallas'),
    (6,'Sharks', 'San José');



-- Insertion de 20 enregistrements de joueurs répartis dans les équipes avec ID auto-incrémenté
INSERT INTO JoueurSchema.Joueur (JoueurID, NomComplet, Age, Position, DateDeNaissance, EquipeID)
VALUES
    (1, 'John Doe', 25, 'Attaquant', '1998-03-12', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (2, 'Jane Smith', 27, 'Défenseur', '1996-05-20', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (3, 'Mike Johnson', 22, 'Attaquant',  '2001-01-08', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (4, 'Sara Lee', 24, 'Gardien de but',  '1999-09-15', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (5, 'Robert Brown', 28, 'Défenseur', '1995-07-03', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (6, 'Emily White', 23, 'Attaquant',  '2000-11-21', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (7, 'Daniel Martin', 25, 'Attaquant',  '1998-04-30', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (8, 'Lisa Anderson', 26, 'Défenseur',  '1997-08-10', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (9, 'Michael Brown', 23, 'Attaquant', '2000-12-05', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (10, 'Sophia Taylor', 29, 'Gardien de but',  '1994-02-18', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (11, 'William Johnson', 27, 'Défenseur',  '1996-06-25', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (12, 'Olivia Lee', 24, 'Attaquant', '1999-10-11', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (13, 'James Smith', 30, 'Attaquant',  '1993-01-28', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (14, 'Emma Brown', 26, 'Défenseur', '1997-07-15', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (15, 'Liam White', 23, 'Attaquant', '2000-09-02', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (16, 'Mia Martin', 28, 'Gardien de but', '1995-03-17', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (17, 'Benjamin Johnson', 25, 'Défenseur', '1998-05-30', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (18, 'Ava Lee', 22, 'Attaquant',  '2001-03-12', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (19, 'Ethan Smith', 29, 'Attaquant',  '1994-08-22', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (20, 'Oliver Taylor', 24, 'Défenseur', '1999-11-15', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins'));
	-- Insertion de 20 enregistrements de joueurs répartis dans les équipes avec ID auto-incrémenté
INSERT INTO JoueurSchema.Joueur (JoueurID,NomComplet, Age, Position,  DateDeNaissance, EquipeID)
VALUES
    (21, 'Sophie Turner', 24, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (22, 'Noah Wilson', 28, 'Défenseur',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (23, 'Isabella Brown', 25, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (24, 'Liam Smith', 26, 'Gardien de but',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (25, 'Olivia Martinez', 23, 'Défenseur', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (26, 'Lucas Martin', 30, 'Attaquant', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (27, 'Ava Davis', 22, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (28, 'Ethan Wilson', 25, 'Défenseur',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (29, 'Emma Thomas', 27, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (30, 'Mia Garcia', 23, 'Gardien de but', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (31, 'Benjamin Davis', 28, 'Défenseur', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (32, 'Luna Rodriguez', 24, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (33, 'Daniel Wilson', 26, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (34, 'Avery Brown', 29, 'Défenseur',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (35, 'Mason Martin', 23, 'Attaquant', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (36, 'Charlotte Lee', 25, 'Gardien de but',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Capitals')),
    (37, 'Henry Garcia', 27, 'Défenseur',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (38, 'Sophia Anderson', 24, 'Attaquant', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Canadiens')),
    (39, 'William Smith', 28, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins')),
    (40, 'Emily Thomas', 26, 'Défenseur', null, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Penguins'));

	-- Insertion de 20 enregistrements de joueurs avec ID auto-incrémenté à partir de 41 et des dates de naissance NULL pour certains d'entre eux
INSERT INTO JoueurSchema.Joueur (JoueurID, NomComplet, Age, Position, DateDeNaissance, EquipeID)
VALUES
    (41, 'Liam Turner', 25, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Stars')),
    (42, 'Olivia Wilson', 26, 'Défenseur',  '1997-04-15', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Stars')),
    (43, 'Ella Davis', 23, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Red Wings')),
    (44, 'Noah Smith', 28, 'Gardien de but',  '1994-08-30', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Red Wings')),
    (45, 'Ava Martin', 22, 'Défenseur',  '1999-01-22', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Red Wings')),
    (46, 'Lucas Brown', 24, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Sharks')),
    (47, 'Sophia Garcia', 27, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Sharks')),
    (48, 'Mia Davis', 26, 'Gardien de but',  '1997-06-10', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Sharks')),
    (49, 'Ethan Wilson', 28, 'Défenseur',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Stars')),
    (50, 'Isabella Smith', 25, 'Attaquant',  '1996-03-18', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Stars')),
    (51, 'Benjamin Martinez', 24, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Red Wings')),
    (52, 'Luna Turner', 30, 'Défenseur',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Red Wings')),
    (53, 'Jackson Garcia', 29, 'Attaquant',  '1994-12-28', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Sharks')),
    (54, 'Emma Davis', 22, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Sharks')),
    (55, 'Mason Martin', 23, 'Gardien de but', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Red Wings')),
    (56, 'Sophia Smith', 28, 'Défenseur',  '1995-07-05', (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Stars')),
    (57, 'Lucas Davis', 26, 'Attaquant', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Stars')),
    (58, 'Chloe Martin', 27, 'Défenseur', NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Red Wings')),
    (59, 'Lily Turner', 23, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Red Wings')),
    (60, 'Ella Smith', 24, 'Attaquant',  NULL, (SELECT EquipeID FROM SpecialisteSchema.Equipe WHERE Nom = 'Sharks'));

	-- Insertion de 20 enregistrements de spécialistes avec ID auto-incrémenté à partir de 1
INSERT INTO SpecialisteSchema.Specialiste (SpecialisteID, Nom, Prenom, AdresseNumeroPorte, AdresseRue, AdresseVille, AdresseCodePostal, AdressePays, Specialite)
VALUES
    (1, 'Smith', 'John', '123', 'Main Street', 'New York', '10001', 'États-Unis', 'Cardiologue'),
    (2, 'Johnson', 'Emily', '456', 'Oak Avenue', 'Los Angeles', '90001', 'États-Unis', 'Dermatologue'),
    (3, 'Williams', 'Sophia', '789', 'Elm Road', 'Chicago', '60601', 'États-Unis', 'Gynécologue'),
    (4, 'Brown', 'Michael', '101', 'Cedar Lane', 'Houston', '77001', 'États-Unis', 'Pédiatre'),
    (5, 'Davis', 'Olivia', '222', 'Maple Street', 'Miami', '33101', 'États-Unis', 'Chirurgien orthopédiste'),
    (6, 'Martinez', 'Ethan', '333', 'Pine Road', 'San Francisco', '94101', 'États-Unis', 'Neurologue'),
    (7, 'Garcia', 'Ava', '444', 'Birch Avenue', 'Dallas', '75201', 'États-Unis', 'Ophtalmologue'),
    (8, 'Jones', 'Noah', '555', 'Cypress Lane', 'Seattle', '98101', 'États-Unis', 'Psychiatre'),
    (9, 'Taylor', 'Sophie', '666', 'Sycamore Street', 'Boston', '02201', 'États-Unis', 'Chirurgien plasticien'),
    (10, 'Lee', 'Jackson', '777', 'Chestnut Road', 'Atlanta', '30301', 'États-Unis', 'Radiologue'),
    (11, 'Turner', 'Ella', '888', 'Walnut Avenue', 'Phoenix', '85001', 'États-Unis', 'Chirurgien cardiothoracique'),
    (12, 'Harris', 'Liam', '999', 'Cherry Lane', 'Denver', '80201', 'États-Unis', 'Urologue'),
    (13, 'Clark', 'Chloe', '111', 'Palm Street', 'San Diego', '92101', 'États-Unis', 'Dentiste'),
    (14, 'Lewis', 'Lucas', '222', 'Beech Road', 'Las Vegas', '89101', 'États-Unis', 'Chirurgien général'),
    (15, 'Hall', 'Avery', '333', 'Willow Lane', 'Orlando', '32801', 'États-Unis', 'Gastro-entérologue'),
    (16, 'Moore', 'Ella', '444', 'Pine Lane', 'Nashville', '37201', 'États-Unis', 'Oncologue'),
    (17, 'Scott', 'Liam', '555', 'Cedar Road', 'New Orleans', '70101', 'États-Unis', 'Pneumologue'),
    (18, 'Young', 'Mia', '666', 'Maple Avenue', 'Minneapolis', '55401', 'États-Unis', 'Rhumatologue'),
    (19, 'Walker', 'Oliver', '777', 'Elm Lane', 'San Antonio', '78201', 'États-Unis', 'Néphrologue'),
    (20, 'King', 'Emma', '888', 'Oak Road', 'Philadelphia', '19101', 'États-Unis', 'Endocrinologue');


	-- Insertion de 14 numéros de téléphone avec des ID manuels
INSERT INTO SpecialisteSchema.NumeroTelephone (NumeroID, Numero, SpecialisteID)
VALUES
    (1, '123-456-7890', 1),
    (2, '987-654-3210', 2),
    (3, '555-123-4567', 3),
    (4, '777-888-9999', 4),
    (5, '555-555-5555', 5),
    (6, '123-789-4560', 6),
    (7, '444-777-1111', 7),
    (8, '999-888-7777', 8),
    (9, '123-456-7890', 9),
    (10, '555-555-5555', 10),
    (11, '123-789-4560', 11),
    (12, '777-888-9999', 12),
    (13, '987-654-3210', 13),
    (14, '444-777-1111', 14);
	INSERT INTO SpecialisteSchema.NumeroTelephone (NumeroID, Numero, SpecialisteID)
VALUES
    (15, '111-222-3333', 1),
    (16, '222-333-4444', 2),
    (17, '333-444-5555', 3),
    (18, '444-555-6666', 4),
    (19, '555-666-7777', 5),
    (20, '666-777-8888', 6),
    (21, '777-888-9999', 7),
    (22, '888-999-0000', 8),
    (23, '999-000-1111', 9),
    (24, '123-234-3456', 10),
    (25, '234-345-4567', 11),
    (26, '345-456-5678', 12),
    (27, '456-567-6789', 13),
    (28, '567-678-7890', 14),
    (29, '678-789-8901', 15),
    (30, '789-890-9012', 16),
    (31, '890-901-0123', 17),
    (32, '901-012-1234', 18),
    (33, '012-123-2345', 19),
    (34, '123-234-3456', 20);

	-- Création de 40 enregistrements dans la table EquipeSpecialiste en associant aléatoirement des spécialistes et des équipes
INSERT INTO SpecialisteSchema.EquipeSpecialiste (EquipeSpecialisteID, DateDebutEmploi, DateFinEmploi, EquipeID, SpecialisteID)
VALUES
    (1, '2022-01-15', '2022-12-31', 1, 1),
    (2, '2022-02-10', '2022-12-31', 1, 2),
    (3, '2022-03-20', '2022-12-31', 1, 3),
    (4, '2022-04-05', '2022-12-31', 1, 4),
    (5, '2022-05-15', '2022-12-31', 1, 5),
    (6, '2022-06-01', '2022-12-31', 1, 6),
    (7, '2022-07-25', '2022-12-31', 1, 7),
    (8, '2022-08-10', '2022-12-31', 1, 8),
    (9, '2022-09-02', '2022-12-31', 1, 9),
    (10, '2022-10-18', '2022-12-31', 1, 10),
    (11, '2022-11-30', '2022-12-31', 1, 11),
    (12, '2022-12-10', '2022-12-31', 1, 12),
    (13, '2022-01-15', '2022-12-31', 2, 13),
    (14, '2022-02-10', '2022-12-31', 2, 14),
    (15, '2022-03-20', '2022-12-31', 2, 15),
    (16, '2022-04-05', '2022-12-31', 2, 16),
    (17, '2022-05-15', '2022-12-31', 2, 17),
    (18, '2022-06-01', '2022-12-31', 2, 18),
    (19, '2022-07-25', '2022-12-31', 2, 19),
    (20, '2022-08-10', '2022-12-31', 2, 20),
    (21, '2022-09-02', '2022-12-31', 3, 1),
    (22, '2022-10-18', '2022-12-31', 3, 2),
    (23, '2022-11-30', '2022-12-31', 3, 3),
    (24, '2022-12-10', '2022-12-31', 3, 4),
    (25, '2022-01-15', '2022-12-31', 4, 5),
    (26, '2022-02-10', '2022-12-31', 4, 6),
    (27, '2022-03-20', '2022-12-31', 4, 7),
    (28, '2022-04-05', '2022-12-31', 4, 8),
    (29, '2022-05-15', '2022-12-31', 5, 9),
    (30, '2022-06-01', '2022-12-31', 5, 10),
    (31, '2022-07-25', '2022-12-31', 5, 11),
    (32, '2022-08-10', '2022-12-31', 5, 12),
    (33, '2022-09-02', '2022-12-31', 6, 13),
    (34, '2022-10-18', '2022-12-31', 6, 14),
    (35, '2022-11-30', '2022-12-31', 6, 15),
    (36, '2022-12-10', '2022-12-31', 6, 16),
    (37, '2022-01-15', '2022-12-31', 6, 17),
    (38, '2022-02-10', '2022-12-31', 6, 18),
    (39, '2022-03-20', '2022-12-31', 6, 19),
    (40, '2022-04-05', '2022-12-31', 6, 20);

	INSERT INTO JoueurSchema.TypeStat (TypeStatID, NomType)
VALUES
    (1, 'NbButs'),
    (2, 'NbPasses'),
    (3, 'NbPoints'),
	(4,'NbTirsAuBut');


	-- Ajout de statistiques pour chaque joueur avec StatistiqueID commençant à 1
-- Joueur 1
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (1, 'NbButs', 20, 1, 1),
    (2, 'NbPasses', 15, 1, 2),
    (3, 'NbPoints', 35, 1, 3),
    (4, 'NbTirsAuBut', 80, 1, 4);

-- Joueur 2
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (5, 'NbButs', 15, 2, 1),
    (6, 'NbPasses', 25, 2, 2),
    (7, 'NbPoints', 40, 2, 3),
    (8, 'NbTirsAuBut', 70, 2, 4);

-- Joueur 3
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (9, 'NbButs', 10, 3, 1),
    (10, 'NbPasses', 20, 3, 2),
    (11, 'NbPoints', 30, 3, 3),
    (12, 'NbTirsAuBut', 60, 3, 4);

-- Joueur 4
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (13, 'NbButs', 5, 4, 1),
    (14, 'NbPasses', 10, 4, 2),
    (15, 'NbPoints', 15, 4, 3),
    (16, 'NbTirsAuBut', 40, 4, 4);

-- Joueur 5
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (17, 'NbButs', 18, 5, 1),
    (18, 'NbPasses', 30, 5, 2),
    (19, 'NbPoints', 48, 5, 3),
    (20, 'NbTirsAuBut', 75, 5, 4);

-- Joueur 6
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (21, 'NbButs', 12, 6, 1),
    (22, 'NbPasses', 22, 6, 2),
    (23, 'NbPoints', 34, 6, 3),
    (24, 'NbTirsAuBut', 55, 6, 4);

-- Joueur 7
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (25, 'NbButs', 22, 7, 1),
    (26, 'NbPasses', 12, 7, 2),
    (27, 'NbPoints', 34, 7, 3),
    (28, 'NbTirsAuBut', 60, 7, 4);

-- Joueur 8
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (29, 'NbButs', 8, 8, 1),
    (30, 'NbPasses', 15, 8, 2),
    (31, 'NbPoints', 23, 8, 3),
    (32, 'NbTirsAuBut', 50, 8, 4);

-- Joueur 9
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (33, 'NbButs', 14, 9, 1),
    (34, 'NbPasses', 18, 9, 2),
    (35, 'NbPoints', 32, 9, 3),
    (36, 'NbTirsAuBut', 65, 9, 4);

-- Joueur 10
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (37, 'NbButs', 5, 10, 1),
    (38, 'NbPasses', 8, 10, 2),
    (39, 'NbPoints', 13, 10, 3),
    (40, 'NbTirsAuBut', 45, 10, 4);


	-- Ajout de statistiques pour les joueurs supplémentaires avec StatistiqueID commençant à 41
-- Joueur 11
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (41, 'NbButs', 12, 11, 1),
    (42, 'NbPasses', 18, 11, 2),
    (43, 'NbPoints', 30, 11, 3),
    (44, 'NbTirsAuBut', 65, 11, 4);

-- Joueur 12
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (45, 'NbButs', 5, 12, 1),
    (46, 'NbPasses', 8, 12, 2),
    (47, 'NbPoints', 13, 12, 3),
    (48, 'NbTirsAuBut', 45, 12, 4);

-- Joueur 13
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (49, 'NbButs', 22, 13, 1),
    (50, 'NbPasses', 12, 13, 2),
    (51, 'NbPoints', 34, 13, 3),
    (52, 'NbTirsAuBut', 60, 13, 4);

-- Joueur 14
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (53, 'NbButs', 8, 14, 1),
    (54, 'NbPasses', 15, 14, 2),
    (55, 'NbPoints', 23, 14, 3),
    (56, 'NbTirsAuBut', 50, 14, 4);

-- Joueur 15
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (57, 'NbButs', 14, 15, 1),
    (58, 'NbPasses', 18, 15, 2),
    (59, 'NbPoints', 32, 15, 3),
    (60, 'NbTirsAuBut', 65, 15, 4);

-- Joueur 16
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (61, 'NbButs', 5, 16, 1),
    (62, 'NbPasses', 8, 16, 2),
    (63, 'NbPoints', 13, 16, 3),
    (64, 'NbTirsAuBut', 45, 16, 4);

-- Joueur 17
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (65, 'NbButs', 12, 17, 1),
    (66, 'NbPasses', 18, 17, 2),
    (67, 'NbPoints', 30, 17, 3),
    (68, 'NbTirsAuBut', 65, 17, 4);

-- Joueur 18
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (69, 'NbButs', 5, 18, 1),
    (70, 'NbPasses', 8, 18, 2),
    (71, 'NbPoints', 13, 18, 3),
    (72, 'NbTirsAuBut', 45, 18, 4);

-- Joueur 19
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (73, 'NbButs', 22, 19, 1),
    (74, 'NbPasses', 12, 19, 2),
    (75, 'NbPoints', 34, 19, 3),
    (76, 'NbTirsAuBut', 60, 19, 4);

-- Joueur 20
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (77, 'NbButs', 8, 20, 1),
    (78, 'NbPasses', 15, 20, 2),
    (79, 'NbPoints', 23, 20, 3),
    (80, 'NbTirsAuBut', 50, 20, 4);


	-- Ajout de statistiques pour les joueurs supplémentaires avec StatistiqueID commençant à 81
-- Joueur 21
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (81, 'NbButs', 15, 21, 1),
    (82, 'NbPasses', 20, 21, 2),
    (83, 'NbPoints', 35, 21, 3),
    (84, 'NbTirsAuBut', 70, 21, 4);

-- Joueur 22
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (85, 'NbButs', 10, 22, 1),
    (86, 'NbPasses', 15, 22, 2),
    (87, 'NbPoints', 25, 22, 3),
    (88, 'NbTirsAuBut', 60, 22, 4);

-- Joueur 23
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (89, 'NbButs', 20, 23, 1),
    (90, 'NbPasses', 10, 23, 2),
    (91, 'NbPoints', 30, 23, 3),
    (92, 'NbTirsAuBut', 65, 23, 4);

-- Joueur 24
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (93, 'NbButs', 8, 24, 1),
    (94, 'NbPasses', 12, 24, 2),
    (95, 'NbPoints', 20, 24, 3),
    (96, 'NbTirsAuBut', 50, 24, 4);

-- Joueur 25
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (97, 'NbButs', 12, 25, 1),
    (98, 'NbPasses', 18, 25, 2),
    (99, 'NbPoints', 30, 25, 3),
    (100, 'NbTirsAuBut', 65, 25, 4);

-- Joueur 26
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (101, 'NbButs', 5, 26, 1),
    (102, 'NbPasses', 8, 26, 2),
    (103, 'NbPoints', 13, 26, 3),
    (104, 'NbTirsAuBut', 45, 26, 4);

-- Joueur 27
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (105, 'NbButs', 15, 27, 1),
    (106, 'NbPasses', 20, 27, 2),
    (107, 'NbPoints', 35, 27, 3),
    (108, 'NbTirsAuBut', 70, 27, 4);

-- Joueur 28
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (109, 'NbButs', 10, 28, 1),
    (110, 'NbPasses', 15, 28, 2),
    (111, 'NbPoints', 25, 28, 3),
    (112, 'NbTirsAuBut', 60, 28, 4);

-- Joueur 29
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (113, 'NbButs', 20, 29, 1),
    (114, 'NbPasses', 10, 29, 2),
    (115, 'NbPoints', 30, 29, 3),
    (116, 'NbTirsAuBut', 65, 29, 4);

-- Joueur 30
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (117, 'NbButs', 8, 30, 1),
    (118, 'NbPasses', 12, 30, 2),
    (119, 'NbPoints', 20, 30, 3),
    (120, 'NbTirsAuBut', 50, 30, 4);


	-- Joueur 31
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (121, 'NbButs', 12, 31, 1),
    (122, 'NbPasses', 18, 31, 2),
    (123, 'NbPoints', 30, 31, 3),
    (124, 'NbTirsAuBut', 40, 31, 4);

-- Joueur 32
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (125, 'NbButs', 8, 32, 1),
    (126, 'NbPasses', 10, 32, 2),
    (127, 'NbPoints', 18, 32, 3),
    (128, 'NbTirsAuBut', 28, 32, 4);

-- Joueur 33
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (129, 'NbButs', 15, 33, 1),
    (130, 'NbPasses', 20, 33, 2),
    (131, 'NbPoints', 35, 33, 3),
    (132, 'NbTirsAuBut', 45, 33, 4);

-- Joueur 34
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (133, 'NbButs', 10, 34, 1),
    (134, 'NbPasses', 12, 34, 2),
    (135, 'NbPoints', 22, 34, 3),
    (136, 'NbTirsAuBut', 32, 34, 4);

-- Joueur 35
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (137, 'NbButs', 6, 35, 1),
    (138, 'NbPasses', 8, 35, 2),
    (139, 'NbPoints', 14, 35, 3),
    (140, 'NbTirsAuBut', 24, 35, 4);

-- Joueur 36
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (141, 'NbButs', 2, 36, 1),
    (142, 'NbPasses', 4, 36, 2),
    (143, 'NbPoints', 6, 36, 3),
    (144, 'NbTirsAuBut', 8, 36, 4);

-- Joueur 37
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (145, 'NbButs', 9, 37, 1),
    (146, 'NbPasses', 14, 37, 2),
    (147, 'NbPoints', 23, 37, 3),
    (148, 'NbTirsAuBut', 33, 37, 4);

-- Joueur 38
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (149, 'NbButs', 4, 38, 1),
    (150, 'NbPasses', 6, 38, 2),
    (151, 'NbPoints', 10, 38, 3),
    (152, 'NbTirsAuBut', 16, 38, 4);

-- Joueur 39
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (153, 'NbButs', 14, 39, 1),
    (154, 'NbPasses', 20, 39, 2),
    (155, 'NbPoints', 34, 39, 3),
    (156, 'NbTirsAuBut', 44, 39, 4);

-- Joueur 40
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (157, 'NbButs', 5, 40, 1),
    (158, 'NbPasses', 8, 40, 2),
    (159, 'NbPoints', 13, 40, 3),
    (160, 'NbTirsAuBut', 23, 40, 4);

	-- Joueur 41
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (161, 'NbButs', 10, 41, 1),
    (162, 'NbPasses', 15, 41, 2),
    (163, 'NbPoints', 25, 41, 3),
    (164, 'NbTirsAuBut', 35, 41, 4);

-- Joueur 42
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (165, 'NbButs', 3, 42, 1),
    (166, 'NbPasses', 8, 42, 2),
    (167, 'NbPoints', 11, 42, 3),
    (168, 'NbTirsAuBut', 20, 42, 4);

-- Joueur 43
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (169, 'NbButs', 7, 43, 1),
    (170, 'NbPasses', 12, 43, 2),
    (171, 'NbPoints', 19, 43, 3),
    (172, 'NbTirsAuBut', 27, 43, 4);

-- Joueur 44
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (173, 'NbButs', 0, 44, 1),
    (174, 'NbPasses', 2, 44, 2),
    (175, 'NbPoints', 2, 44, 3),
    (176, 'NbTirsAuBut', 5, 44, 4);

-- Joueur 45
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (177, 'NbButs', 2, 45, 1),
    (178, 'NbPasses', 4, 45, 2),
    (179, 'NbPoints', 6, 45, 3),
    (180, 'NbTirsAuBut', 10, 45, 4);

-- Joueur 46
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (181, 'NbButs', 9, 46, 1),
    (182, 'NbPasses', 15, 46, 2),
    (183, 'NbPoints', 24, 46, 3),
    (184, 'NbTirsAuBut', 32, 46, 4);

-- Joueur 47
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (185, 'NbButs', 6, 47, 1),
    (186, 'NbPasses', 12, 47, 2),
    (187, 'NbPoints', 18, 47, 3),
    (188, 'NbTirsAuBut', 26, 47, 4);

-- Joueur 48
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (189, 'NbButs', 0, 48, 1),
    (190, 'NbPasses', 1, 48, 2),
    (191, 'NbPoints', 1, 48, 3),
    (192, 'NbTirsAuBut', 2, 48, 4);

-- Joueur 49
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (193, 'NbButs', 4, 49, 1),
    (194, 'NbPasses', 6, 49, 2),
    (195, 'NbPoints', 10, 49, 3),
    (196, 'NbTirsAuBut', 16, 49, 4);

-- Joueur 50
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (197, 'NbButs', 7, 50, 1),
    (198, 'NbPasses', 10, 50, 2),
    (199, 'NbPoints', 17, 50, 3),
    (200, 'NbTirsAuBut',42,50,4); 


	-- Joueur 51
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (201, 'NbButs', 6, 51, 1),
    (202, 'NbPasses', 9, 51, 2),
    (203, 'NbPoints', 15, 51, 3),
    (204, 'NbTirsAuBut', 20, 51, 4);

-- Joueur 52
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (205, 'NbButs', 2, 52, 1),
    (206, 'NbPasses', 5, 52, 2),
    (207, 'NbPoints', 7, 52, 3),
    (208, 'NbTirsAuBut', 10, 52, 4);

-- Joueur 53
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (209, 'NbButs', 11, 53, 1),
    (210, 'NbPasses', 16, 53, 2),
    (211, 'NbPoints', 27, 53, 3),
    (212, 'NbTirsAuBut', 35, 53, 4);

-- Joueur 54
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (213, 'NbButs', 0, 54, 1),
    (214, 'NbPasses', 1, 54, 2),
    (215, 'NbPoints', 1, 54, 3),
    (216, 'NbTirsAuBut', 2, 54, 4);

-- Joueur 55
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (217, 'NbButs', 0, 55, 1),
    (218, 'NbPasses', 0, 55, 2),
    (219, 'NbPoints', 0, 55, 3),
    (220, 'NbTirsAuBut', 0, 55, 4);

-- Joueur 56
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (221, 'NbButs', 5, 56, 1),
    (222, 'NbPasses', 10, 56, 2),
    (223, 'NbPoints', 15, 56, 3),
    (224, 'NbTirsAuBut', 25, 56, 4);

-- Joueur 57
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (225, 'NbButs', 8, 57, 1),
    (226, 'NbPasses', 13, 57, 2),
    (227, 'NbPoints', 21, 57, 3),
    (228, 'NbTirsAuBut', 30, 57, 4);

-- Joueur 58
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (229, 'NbButs', 0, 58, 1),
    (230, 'NbPasses', 2, 58, 2),
    (231, 'NbPoints', 2, 58, 3),
    (232, 'NbTirsAuBut', 5, 58, 4);

-- Joueur 59
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (233, 'NbButs', 2, 59, 1),
    (234, 'NbPasses', 4, 59, 2),
    (235, 'NbPoints', 6, 59, 3),
    (236, 'NbTirsAuBut', 10, 59, 4);

-- Joueur 60
INSERT INTO JoueurSchema.Statistique (StatistiqueID, Nom, Valeur, JoueurID, TypeStatID)
VALUES
    (237, 'NbButs', 0, 60, 1),
    (238, 'NbPasses', 1, 60, 2),
    (239, 'NbPoints', 6, 60, 3),
    (240, 'NbTirsAuBut', 10, 60, 4);

