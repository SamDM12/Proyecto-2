USE ParalympicGames;

delimiter //
	CREATE PROCEDURE getTeams()
	BEGIN
 		SELECT TeamName, QuantityMembers FROM TEAM;
	END //
delimiter //