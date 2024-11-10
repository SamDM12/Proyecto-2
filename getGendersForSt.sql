DELIMITER $$

CREATE PROCEDURE GetPersonGenders()
BEGIN
    SELECT 
        g.gender_name
    FROM 
        person p
    JOIN 
        genderType g ON p.ID_GENDERTYPE = g.ID_GENDERTYPE;
END $$

DELIMITER ;