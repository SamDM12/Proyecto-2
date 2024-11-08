delimiter $$
CREATE PROCEDURE findUser(IN userN VARCHAR(20))
BEGIN
	SELECT USERNAME
    FROM administrator
    WHERE USERNAME = userN;
END $$
delimiter ; 