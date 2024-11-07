USE ParalympicGames;
 -- DROP PROCEDURE getPeople;

DELIMITER $$
CREATE PROCEDURE getPeople(
    IN personFirstName VARCHAR(15),
    IN personSecondName VARCHAR(15),
    IN personFirstLastName VARCHAR(15),
    IN personSecondLastName VARCHAR(15),
    IN countryID INT,            -- Nuevo parámetro para el ID de país
    IN paralympicID INT           -- Parámetro para el ID de olimpiada
)
BEGIN
    SELECT p.*, co.country_name  -- Seleccionamos el país de la persona en lugar del equipo
    FROM Person p
    LEFT JOIN Country co ON p.ID_COUNTRY = co.ID_Country
    LEFT JOIN CountryXParalympic cxp ON co.ID_Country = cxp.ID_COUNTRY
    LEFT JOIN Paralympic par ON cxp.ID_PARALYMPIC = par.ID_PARALYMPIC
    WHERE (personFirstName IS NULL OR p.FIRSTNAME = personFirstName)
      AND (personSecondName IS NULL OR p.SECONDNAME = personSecondName)
      AND (personFirstLastName IS NULL OR p.FIRSTLASTNAME = personFirstLastName)
      AND (personSecondLastName IS NULL OR p.SECONDLASTNAME = personSecondLastName)
      AND (countryID IS NULL OR co.ID_Country = countryID)           -- Filtro para país
      AND (paralympicID IS NULL OR par.ID_PARALYMPIC = paralympicID); -- Filtro para olimpiada
END $$
DELIMITER ;
