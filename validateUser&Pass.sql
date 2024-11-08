USE ParalympicGames; 

ALTER TABLE ADMINISTRATOR MODIFY COLUMN PASSWORD_ADMIN VARCHAR(200);

delimiter $$
CREATE PROCEDURE getUserPass(IN userN VARCHAR(20))
BEGIN
	SELECT USERNAME, PASSWORD_ADMIN
    FROM ADMINISTRATOR
    WHERE USERNAME = userN;
END $$
delimiter $$
