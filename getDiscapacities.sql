USE ParalympicGames;
-- DROP PROCEDURE getDiscapacities;

delimiter $$
CREATE PROCEDURE getDiscapacities()
BEGIN
    
    SELECT *
    FROM Disability;

END $$
delimiter ;
