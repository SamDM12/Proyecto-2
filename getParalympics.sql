USE ParalympicGames;
DELIMITER $$
CREATE PROCEDURE getParalympics(
    IN paralympicYear INT,
    IN countryID INT
)
BEGIN
    SELECT *
    FROM Paralympic
    WHERE (paralympicYear IS NULL OR PARALYMPICS_YEAR = paralympicYear)
      AND (countryID IS NULL OR ID_COUNTRY = countryID);
END $$
DELIMITER ;
