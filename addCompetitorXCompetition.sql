USE ParalympicGames;

delimiter $$
CREATE PROCEDURE addCompetitorXCompetition(IN newID_Competitor INT, IN newID_Competition INT, IN newTimeRecorded INT, IN newScore INT, IN newPositionRecorded INT)
BEGIN
	DECLARE IDCompetitor, IDCompetition INT;
	
    SELECT ID_Competitor INTO IDCompetitor
    FROM Competitor
    WHERE ID_Competitor = newID_Competitor;
    
    SELECT ID_Competition INTO IDCompetition
    FROM Competition
    WHERE ID_Competition = newID_Competition;
    
    IF IDCompetitor IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningún competidor con el ID especificado.';
    END IF;
    
    IF IDCompetition IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ninguna competición con el ID especificado.';
    END IF;
	
	INSERT INTO CompetitorXCompetition (ID_Competitor, ID_Competition, TimeRecorded, Score, PositionRecorded)
	VALUES (IDCompetitor, IDCompetition, newTimeRecorded, newScore, newPositionRecorded);
    

END $$
delimiter ;