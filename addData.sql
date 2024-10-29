USE ParalympicGames;
/*
delimiter $$
	CREATE PROCEDURE getGener()
    BEGIN
		SELECT GENDERTYPE FROM GENDERTYPE;
    END$$
delimiter ;

delimiter $$
	CREATE PROCEDURE AddDisability(IN newDisability VARCHAR(50))
    BEGIN
		INSERT INTO DISABILITY (DISABILITY) values (newDisability);
    END $$
delimiter ;

*/