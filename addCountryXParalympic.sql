USE ParalympicGames;

-- DROP PROCEDURE addParalympicXCompetition;


delimiter $$
CREATE PROCEDURE addCountryXParalympic(IN newID_Paralympic INT, IN newID_Country INT)
BEGIN
	DECLARE IDParalympic, IDCountry, ExistingParalympic, ExistingCountry INT;
	
    SELECT ID_Paralympic INTO IDParalympic
    FROM Paralympic
    WHERE ID_Paralympic = newID_Paralympic;
    
    SELECT ID_Country INTO IDCountry
    FROM Country
    WHERE ID_Country = newID_Country;
    
    IF IDParalympic IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ningún paraolímpico con el ID especificado.';
    END IF;
    
    IF IDCountry IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: No se encontró ninguna país con el ID especificado.';
    END IF;
    
    
    SELECT ID_Paralympic, ID_Country INTO ExistingParalympic, ExistingCountry
    FROM countryxparalympic
    WHERE ID_Paralympic = newID_Paralympic AND ID_Country = newID_Country;
    
    IF ExistingParalympic AND ExistingCountry IS NOT NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Ya existe el país en el paraolímpico.';
    END IF;
    
	
	INSERT INTO countryxparalympic (ID_Paralympic, ID_Country)
	VALUES (IDParalympic, IDCountry);
    

END $$
delimiter ;