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
CREATE PROCEDURE addPerson(IN newIdentificationNumber INT, IN newFirstName VARCHAR(15), IN newSecondName VARCHAR(15), IN newFirstLastName VARCHAR(15), IN newSecondLastName VARCHAR(15), IN newBirthDate DATE, IN pic BLOB, IN conutryName VARCHAR(15), IN genderName VARCHAR(15), IN identificationName VARCHAR (15))
	BEGIN 
		DECLARE countryID, genderTypeID, identificationTypeID, pictureID INT;
        SELECT ID_COUNTRY INTO countryID
        FROM COUNTRY
        WHERE COUNTRY_NAME = countryName;
        
        SELECT ID_GENDERTYPE INTO genderTypeID
        FROM GENDERTYPE
        WHERE GENDERTYPE = genderName;
        
        SELECT ID_IDENTIFICATIONTYPE INTO identificationTypeID
        FROM IDENTIFICATIONTYPE
        WHERE IDENTIFICATIONTYPE = identificationName;
        
        SELECT ID_PICTURE INTO pictureID
        FROM PICTURE
        WHERE IMAGE = pic;
        
        INSERT INTO PERSON (IDENTIFICATIONNUMBER, FIRSTNAME, SECONDNAME, FISTLASTNAME, SECONDLASTNAME, BIRTHDATE, ID_PICTURE, ID_COUNTRY, ID_GENDERTYPE, ID_IDENTIFICATIONTYPE)
        VALUES (newIdentificationNumber, newFirstName, newSecondName, newFirstLastName, newSecondLastName, newBirthDate, pictureID, countryID, genderTypeID, identificationTypeID);
    END $$ 
delimiter ;
*/




