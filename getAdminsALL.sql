USE ParalympicGames;
-- DROP PROCEDURE getAdmins;
DELIMITER //

CREATE PROCEDURE getAdmins(IN admin_first_name VARCHAR(15))
BEGIN
    SELECT 
        Administrator.ID_ADMIN,
        Administrator.ID_PERSON,
        Administrator.USERNAME,
        Person.FirstName,
        Person.SecondName,
        Person.FirstLastName,
        Person.SecondLastName
    FROM 
        Administrator
    LEFT JOIN 
        Person ON Administrator.ID_PERSON = Person.ID_PERSON
    WHERE 
        (admin_first_name IS NULL OR Person.FirstName = admin_first_name);
END //

DELIMITER ;
;