USE ParalympicGames;

delimiter $$
CREATE PROCEDURE getAdministrators()
BEGIN
	SELECT p.ID_PERSON, p.IDENTIFICATIONNUMBER, p.FIRSTNAME, p.FIRSTLASTNAME
    FROM PERSON p
    JOIN ADMINISTRATOR a ON p.ID_PERSON = a.ID_PERSON;
END $$
delimiter ;