USE ParalympicGames;
 -- DROP PROCEDURE addParalympic;


delimiter $$
CREATE PROCEDURE addParalympic(IN newParalympicsYear INT, IN newHostCountry VARCHAR(25))
BEGIN
    DECLARE existingCountry, existingYear INT;

    SELECT ID_Country INTO existingCountry
    FROM Country
    WHERE Country_name = newHostCountry;

    -- Validar si se encontró el país
    IF existingCountry IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningún país con ese nombre.';
    END IF;
    
    SELECT id_paralympic INTO existingYear
    FROM paralympic
    WHERE PARALYMPICS_YEAR = newParalympicsYear;
    
    IF existingYear IS NOT NULL THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Los paraolímpicos ya existen.';
    END IF;
    
    
	INSERT INTO paralympic (paralympics_year, id_country)
	VALUES (newParalympicsYear, existingCountry);
    

END $$
delimiter ;