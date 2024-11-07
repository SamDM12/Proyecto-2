USE ParalympicGames;

-- DROP PROCEDURE getCompetitors;
-- /*
DELIMITER $$
CREATE PROCEDURE getCompetitors(
    IN countryID INT,
    IN paralympicID INT
)
BEGIN
		IF countryID IS NULL AND paralympicID IS NULL THEN
        -- Si ambos parámetros son NULL, devolver solo países únicos sin ID_Picture
        SELECT DISTINCT *
        FROM Competitor c;
     ELSE   
        SELECT DISTINCT c.ID_COMPETITOR, c.CLASIFICATIONSCORE, p.FIRSTNAME, p.FIRSTLASTNAME, co.COUNTRY_NAME, par.PARALYMPICS_YEAR
        FROM Competitor c
        LEFT JOIN Person p ON c.ID_Person = p.ID_Person
        LEFT JOIN Country co ON p.ID_Country = co.ID_Country
        LEFT JOIN CountryXParalympic cxp ON co.ID_Country = cxp.ID_COUNTRY
        LEFT JOIN Paralympic par ON cxp.ID_PARALYMPIC = par.ID_PARALYMPIC
        WHERE (countryID IS NULL OR co.ID_Country = countryID)
          AND (paralympicID IS NULL OR par.ID_PARALYMPIC = paralympicID);
	END IF;
END $$
DELIMITER ;
