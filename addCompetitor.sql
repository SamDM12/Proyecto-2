USE ParalympicGames;
-- DROP PROCEDURE addCompetitor;


delimiter $$
CREATE PROCEDURE addCompetitor(IN newIdentificationNumber INT, IN newClasificationScore INT, IN newTeamName VARCHAR(15))
	BEGIN 
		DECLARE personID, teamID INT;
        SELECT ID_Person INTO personID
        FROM PERSON
        WHERE IDENTIFICATIONNUMBER = newIdentificationNumber;
        
        SELECT ID_Team INTO teamID
        FROM TEAM
        WHERE TEAMNAME = newTeamName;
                
        INSERT INTO COMPETITOR (CLASIFICATIONSCORE, ID_PERSON, ID_TEAM)
        VALUES (newClasificationScore, personID, teamID);
    END $$ 
delimiter ;