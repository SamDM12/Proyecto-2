USE PARALYMPICGAMES;
delimiter $$
CREATE PROCEDURE getIdentificationNumber()
BEGIN
	SELECT identificationNumber, firstName, firstLastName
    FROM PERSON
    ORDER BY firstName ASC;
END $$
delimiter ;