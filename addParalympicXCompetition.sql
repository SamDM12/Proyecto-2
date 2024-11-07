USE ParalympicGames;

-- DROP PROCEDURE addParalympicXCompetition;


delimiter $$
CREATE PROCEDURE addParalympicXCompetition(IN newID_Paralympic INT, IN newID_Competition INT)
BEGIN
	DECLARE IDParalympic, IDCompetition, ExistingParalympic, ExistingCompetition INT;
	
    SELECT ID_Paralympic INTO IDParalympic
    FROM Paralympic
    WHERE ID_Paralympic = newID_Paralympic;
    
    SELECT ID_Competition INTO IDCompetition
    FROM Competition
    WHERE ID_Competition = newID_Competition;
    
    IF IDParalympic IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningún paraolímpico con el ID especificado.';
    END IF;
    
    IF IDCompetition IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ninguna competición con el ID especificado.';
    END IF;
    
    
    SELECT ID_Paralympic, ID_Competition INTO ExistingParalympic, ExistingCompetition
    FROM paralympicxcompetition
    WHERE ID_Paralympic = newID_Paralympic AND ID_Competition = newID_Competition;
    
    IF ExistingParalympic AND ExistingCompetition IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Ya existe la competición en el paraolímpico.';
    END IF;
    
	
	INSERT INTO paralympicxcompetition (ID_Paralympic, ID_Competition)
	VALUES (IDParalympic, IDCompetition);
    

END $$
delimiter ;