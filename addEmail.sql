USE ParalympicGames;
DROP PROCEDURE addEmailxPerson;
delimiter $$
CREATE PROCEDURE addEmailxPerson(IN identification INT, IN email VARCHAR(50))
BEGIN
	declare idPerson INT;
    
    SELECT ID_PERSON INTO idPerson
    FROM person
    WHERE IDENTIFICATIONNUMBER = identification;
    
    INSERT INTO EMAIL(EMAILADRESS, ID_PERSON) VALUES(email, idPerson);
END $$
delimiter ;
