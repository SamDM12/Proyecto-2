USE ParalympicGames;
DROP PROCEDURE addPhonexPerson;
DROP PROCEDURE addPhone;

delimiter $$
CREATE PROCEDURE addPhonexPerson(IN identification INT, IN phoneType VARCHAR(50), IN phoneN INT)
BEGIN
	declare idPhone, idPerson INT;
	call addPhone(phoneType, phoneN);
    SELECT ID_PHONE INTO idPhone
    FROM PHONE 
    WHERE PHONENUMBER = phoneN;
    
    SELECT ID_PERSON INTO idPerson
    FROM person
    WHERE IDENTIFICATIONNUMBER = identification;
    
    INSERT INTO PERSONXPHONE(ID_PERSON, ID_PHONE) VALUES(idPerson, idPhone);
END $$
delimiter ;

delimiter $$
CREATE PROCEDURE addPhone(IN phoneT VARCHAR(50), IN phoneNumber INT)

BEGIN
	declare idPhoneType INT;
    SELECT ID_PHONETYPE INTO idPhoneType
    FROM PHONETYPE
    WHERE PHONETYPE = phoneT
    LIMIT 1;
    INSERT INTO PHONE(PHONENUMBER, ID_PHONETYPE) VALUES (phoneNumber, idPhoneType);
END $$

delimiter ;