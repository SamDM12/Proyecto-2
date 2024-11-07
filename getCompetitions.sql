USE ParalympicGames;

 -- DROP PROCEDURE getCompetitions;

DELIMITER $$
CREATE PROCEDURE getCompetitions(
    IN competitionName VARCHAR(15),
    IN paralympicID INT
)
BEGIN
		IF competitionName IS NULL AND paralympicID IS NULL THEN
        -- Si ambos parámetros son NULL, devolver solo países únicos sin ID_Picture
        SELECT DISTINCT *
        FROM Competition c;
     ELSE   
        SELECT DISTINCT c.ID_COMPETITION, c.COMPETITIONNAME, c.COMPETITIONDATE, par.PARALYMPICS_YEAR
        FROM Competition c
        LEFT JOIN paralympicxcompetition pxc ON c.ID_COMPETITION = pxc.ID_COMPETITION
        LEFT JOIN Paralympic par ON pxc.ID_PARALYMPIC = par.ID_PARALYMPIC
        WHERE (competitionName IS NULL OR c.competitionname = competitionName)
          AND (paralympicID IS NULL OR par.ID_PARALYMPIC = paralympicID);
	END IF;
END $$
DELIMITER ;
