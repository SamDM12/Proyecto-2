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
		INSERT INTO DISABILITY (DISABILITYNAME) values (newDisability);
    END $$
delimiter ;


delimiter $$
	CREATE PROCEDURE addCountry (IN newCountry varchar(50))
	BEGIN
		INSERT INTO COUNTRY (COUNTRY_NAME) values (newCountry);
	END $$
delimiter ;


delimiter $$
CREATE PROCEDURE addIdentificationType (IN newIdentificationType VARCHAR(11))
	BEGIN
		INSERT INTO IDENTIFICATIONTYPE (IDENTIFICATIONTYPE) VALUES (newIdentificationType);
	END $$
delimiter ;


delimiter $$
CREATE PROCEDURE addMedalType(IN newMedalType VARCHAR(20))
	BEGIN
		INSERT INTO MEDALTYPE (TYPENAME) values (newMedalType);
    END $$
delimiter ;


delimiter $$
CREATE PROCEDURE addNationality (IN newNationality VARCHAR(20))
	BEGIN
		INSERT INTO NATIONALITY (NATIONALITYNAME) values (newNationality);
	END $$
delimiter ;


delimiter $$
CREATE PROCEDURE addPhoneType (IN newPhoneType VARCHAR(50))
	BEGIN
		INSERT INTO PHONETYPE(PHONETYPE) VALUES (newPhoneType);
	END $$
delimiter ;


delimiter $$
CREATE PROCEDURE addPicture(IN newImage BLOB)
	BEGIN
		INSERT INTO PICTURE (IMAGE) VALUES (newImage);
	END $$
delimiter ;


ALTER TABLE TEAM DROP COLUMN QUANTITYMEMBERS


delimiter $$
CREATE PROCEDURE addTeam (IN newTeam VARCHAR(15))
	BEGIN
		INSERT INTO TEAM (TEAMNAME) VALUES (newTeam);
	END$$
delimiter ;


ALTER TABLE COMPETITION
DROP FOREIGN KEY competition_ibfk_1;
ALTER TABLE COMPETITION DROP COLUMN ID_COMPETITIONTYPE;
DROP TABLE COMPETITIONTYPE;



delimiter $$
CREATE PROCEDURE addCompetition (IN newCompetitionName VARCHAR(15), IN newCompetitionDate DATE, IN newCompetitionDescription VARCHAR(30))
	BEGIN
		INSERT INTO COMPETITION (COMPETITIONNAME, COMPETITIONDATE, COMPETITIONDESCRIPTION) VALUES (newCompetitionName, newCompetitionDate, newCompetitionDescription);
	END $$
delimiter ;



ALTER TABLE PERSON MODIFY COLUMN IDENTIFICATIONNUMBER INT;
ALTER TABLE GENDERTYPE MODIFY COLUMN GENDERTYPE VARCHAR(15);

delimiter $$
	CREATE PROCEDURE AddGender(IN newGender VARCHAR(15))
    BEGIN
		INSERT INTO GENDERTYPE (GENDERTYPE) values (newGender);
    END $$
delimiter ;

*/
delimiter $$
	CREATE PROCEDURE getPersonByIdentification(IN identification INT, OUT FIRSTNAMEOUT VARCHAR(25), OUT FIRSTLASTNAMEOUT VARCHAR(25))
	BEGIN
		SELECT FIRSTNAME, FIRSTLASTNAME INTO FIRSTNAME, FIRSTLASTNAME
        FROM PERSON
        WHERE IDENTIFICATIONNUMBER = identification;
    END$$
delimiter ;


