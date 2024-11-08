USE ParalympicGames;
delimiter $$
	CREATE PROCEDURE getCountry()
	BEGIN
 		SELECT COUNTRY_NAME FROM COUNTRY;
	END $$
delimiter ;






