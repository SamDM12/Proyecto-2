USE ParalympicGames;
-- DROP PROCEDURE getCoaches;
DELIMITER //

CREATE PROCEDURE getMedals()
BEGIN
    SELECT * FROM Medaltype;
END //

DELIMITER ;