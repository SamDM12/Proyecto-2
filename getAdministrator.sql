USE ParalympicGames;
DROP PROCEDURE getAdministrators;
delimiter $$

CREATE PROCEDURE getAdministrators(
    IN identification INT,
    IN name1 VARCHAR(50),
    IN lastname VARCHAR(50)
)
BEGIN
    SELECT p.ID_PERSON, p.IDENTIFICATIONNUMBER, p.FIRSTNAME, p.FIRSTLASTNAME
    FROM PERSON p
    JOIN ADMINISTRATOR a ON p.ID_PERSON = a.ID_PERSON
    WHERE
        (identification IS NULL OR p.IDENTIFICATIONNUMBER = identification)
        AND (name1 IS NULL OR p.FIRSTNAME = name1)
        AND (lastname IS NULL OR p.FIRSTLASTNAME = lastname);
END $$

delimiter ;