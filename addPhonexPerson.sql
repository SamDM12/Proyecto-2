USE ParalympicGames;
delimiter $$
CREATE PROCEDURE addPhonexPerson(IN identificationNumber INT, IN phoneType VARCHAR(50), IN phoneNumber INT)
BEGIN
	declare idPhone, idPerson INT;
	call addPhone(phoneType, phoneNumber);
    SELECT ID_PHONE INTO idPhone
    FROM PHONE 
    WHERE PHONENUMBER = phoneNumber;
    SELECT ID_PERSON INTO idPerson
    FROM person
    WHERE IDENTIFICATIONNUMBER = identificationNumber;
    
    INSERT INTO PERSONXPHONE(ID_PERSON, ID_PHONE) VALUES(idPhone, idPerson);
END $$
delimiter ;

delimiter $$
CREATE PROCEDURE addPhone(IN phoneType VARCHAR(50), IN phoneNumber INT)

BEGIN
	declare idPhoneType INT;
    SELECT ID_PHONETYPE INTO idPhoneType
    FROM PHONETYPE
    WHERE PHONETYPE = phoneType;
    INSERT INTO PHONE(PHONENUMBER, ID_PHONETYPE) VALUES (phoneNumber, idPhoneType);
END $$

delimiter ;