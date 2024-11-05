USE ParalympicGames;
-- DROP PROCEDURE addCompetition;


delimiter $$
CREATE PROCEDURE addCompetition(IN newCompetitionName VARCHAR(15), IN newCompetitionDate DATE, IN newDescription VARCHAR(100))
BEGIN
	DECLARE v_Existente INT;
    
    -- Verificar si ya existe una competicion con el mismo nombre de competicion y fecha
    
	INSERT INTO competition (CompetitionName, CompetitionDate, competitionDescription)
	VALUES (newCompetitionName, newCompetitionDate, newDescription);
    

END $$
delimiter ;
