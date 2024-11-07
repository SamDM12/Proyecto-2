USE ParalympicGames;
-- DROP PROCEDURE getCountries;
--  /*
DELIMITER $$
CREATE PROCEDURE getCountries(
    IN countryName VARCHAR(50),
    IN paralympicID INT
)
BEGIN
    IF countryName IS NULL AND paralympicID IS NULL THEN
        -- Si ambos parámetros son NULL, devolver solo países únicos sin ID_Picture
        SELECT DISTINCT co.ID_Country, co.Country_Name
        FROM Country co;
    ELSE
        -- Si al menos uno de los parámetros no es NULL, aplicar los filtros y excluir ID_Picture
        SELECT DISTINCT co.ID_Country, co.Country_Name
        FROM Country co
        LEFT JOIN CountryXParalympic cxp ON co.ID_Country = cxp.ID_COUNTRY
        LEFT JOIN Paralympic par ON cxp.ID_PARALYMPIC = par.ID_PARALYMPIC
        WHERE (countryName IS NULL OR co.Country_Name = countryName)
          AND (paralympicID IS NULL OR par.ID_PARALYMPIC = paralympicID);
    END IF;
END $$
DELIMITER ;
