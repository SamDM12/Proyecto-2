USE ParalympicGames;
-- DROP PROCEDURE getCoaches;
DELIMITER //

CREATE PROCEDURE getIdentificationTypes()
BEGIN
    SELECT * FROM IdentificationType;
END //

DELIMITER ;