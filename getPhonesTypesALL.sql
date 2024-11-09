USE ParalympicGames;
-- DROP PROCEDURE getCoaches;
DELIMITER //

CREATE PROCEDURE getPhoneTypes()
BEGIN
    SELECT * FROM PhoneType;
END //

DELIMITER ;