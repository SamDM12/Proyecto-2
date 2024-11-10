USE ParalympicGames;

-- DROP PROCEDURE getCompetitors;
-- /*
DELIMITER $$
CREATE PROCEDURE getCompetitors(
    IN countryID INT,
    IN paralympicID INT,
    IN firstname VARCHAR(15),
    IN secondname VARCHAR(15),
    IN firstlastname VARCHAR(15),
    IN secondlastname VARCHAR(15)
)
BEGIN
    IF countryID IS NULL AND paralympicID IS NULL AND firstname IS NULL AND secondname IS NULL AND firstlastname IS NULL AND secondlastname IS NULL THEN
        -- Si todos los parámetros son NULL, devolver solo países únicos sin ID_Picture
        SELECT DISTINCT *
        FROM Competitor c;
    ELSE   
        SELECT DISTINCT 
            c.ID_COMPETITOR, 
            c.CLASIFICATIONSCORE, 
            p.FIRSTNAME, 
            p.SECONDNAME, 
            p.FIRSTLASTNAME, 
            p.SECONDLASTNAME, 
            co.COUNTRY_NAME, 
            par.PARALYMPICS_YEAR
        FROM 
            Competitor c
        LEFT JOIN 
            Person p ON c.ID_Person = p.ID_Person
        LEFT JOIN 
            Country co ON p.ID_Country = co.ID_Country
        LEFT JOIN 
            CountryXParalympic cxp ON co.ID_Country = cxp.ID_COUNTRY
        LEFT JOIN 
            Paralympic par ON cxp.ID_PARALYMPIC = par.ID_PARALYMPIC
        WHERE 
            (countryID IS NULL OR co.ID_Country = countryID)
            AND (paralympicID IS NULL OR par.ID_PARALYMPIC = paralympicID)
            AND (firstname IS NULL OR p.FIRSTNAME = firstname)
            AND (secondname IS NULL OR p.SECONDNAME = secondname)
            AND (firstlastname IS NULL OR p.FIRSTLASTNAME = firstlastname)
            AND (secondlastname IS NULL OR p.SECONDLASTNAME = secondlastname)
        ORDER BY 
            p.FIRSTNAME, p.FIRSTLASTNAME;
    END IF;
END