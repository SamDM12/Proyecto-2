USE ParalympicGames;
DROP PROCEDURE IF EXISTS addAdmin ;
delimiter $$
CREATE PROCEDURE addAdmin(IN identification INT, IN userN VARCHAR(20), IN pass varchar(200))
BEGIN
	DECLARE id INT;
	SELECT ID_PERSON INTO id
    FROM person
    WHERE IDENTIFICATIONNUMBER = IDENTIFICATION;
	INSERT INTO ADMINISTRATOR (ID_PERSON, USERNAME, PASSWORD_ADMIN) values (id, userN, pass);
END $$
delimiter ;