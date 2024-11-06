USE ParalympicGames;


 -- DROP PROCEDURE getPeople;
 
DELIMITER $$
CREATE PROCEDURE getPeople(
    IN personFirstName VARCHAR(15),
    IN personSecondName VARCHAR(15),
    IN personFirstLastName VARCHAR(15),
    IN personSecondLastName VARCHAR(15),
    IN teamID INT
)
BEGIN
    SELECT p.* 
	FROM Person p
	LEFT JOIN Competitor c ON p.ID_PERSON = c.ID_PERSON
	LEFT JOIN Team t ON c.ID_TEAM = t.ID_Team
	WHERE (personFirstName IS NULL OR p.FIRSTNAME = personFirstName)
	  AND (personSecondName IS NULL OR p.SECONDNAME = personSecondName)
	  AND (personFirstLastName IS NULL OR p.FIRSTLASTNAME = personFirstLastName)
	  AND (personSecondLastName IS NULL OR p.SECONDLASTNAME = personSecondLastName)
	  AND (teamID IS NULL OR c.ID_TEAM = teamID);

END $$
DELIMITER ;
