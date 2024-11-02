USE ParalympicGames;
delimiter $$
CREATE PROCEDURE addPerson(IN newIdentificationNumber INT, IN newFirstName VARCHAR(15), IN newSecondName VARCHAR(15), IN newFirstLastName VARCHAR(15), IN newSecondLastName VARCHAR(15), IN newBirthDate DATE, IN countryName VARCHAR(15), IN genderName VARCHAR(15), IN identificationName VARCHAR (15))
	BEGIN 
		DECLARE countryID, genderTypeID, identificationTypeID INT;
        SELECT ID_COUNTRY INTO countryID
        FROM COUNTRY
        WHERE COUNTRY_NAME = countryName;
        
        SELECT ID_GENDERTYPE INTO genderTypeID
        FROM GENDERTYPE
        WHERE GENDERTYPE = genderName;
        
        SELECT ID_IDENTIFICATIONTYPE INTO identificationTypeID
        FROM IDENTIFICATIONTYPE
        WHERE IDENTIFICATIONTYPE = identificationName;
                
        INSERT INTO PERSON (IDENTIFICATIONNUMBER, FIRSTNAME, SECONDNAME, FIRSTLASTNAME, SECONDLASTNAME, BIRTHDATE, ID_COUNTRY, ID_GENDERTYPE, ID_IDENTIFICATIONTYPE)
        VALUES (newIdentificationNumber, newFirstName, newSecondName, newFirstLastName, newSecondLastName, newBirthDate, countryID, genderTypeID, identificationTypeID);
    END $$ 
delimiter ;
