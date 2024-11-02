USE ParalympicGames;
delimiter $$
	CREATE PROCEDURE getIdentificationType()
    BEGIN
		SELECT IdentificationType FROM IdentificationType;
    END$$
delimiter ;






