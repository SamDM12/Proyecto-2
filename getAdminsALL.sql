USE ParalympicGames;
-- DROP PROCEDURE getAdmins;
DELIMITER //

CREATE PROCEDURE getAdmins()
BEGIN
    SELECT * FROM administrator;
END //

DELIMITER ;