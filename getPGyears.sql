USE ParalympicGames;
delimiter $$
CREATE PROCEDURE getYears()
BEGIN

SELECT PARALYMPICS_YEAR
FROM PARALYMPIC;

END $$
delimiter ;