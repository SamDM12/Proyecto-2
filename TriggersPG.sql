DELIMITER //

-- DROPS

-- Administrator
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_administrator;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_administrator;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_administrator;

-- Canton
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_canton;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_canton;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_canton;

-- Coach
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_coach;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_coach;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_coach;

-- CoachXCompetitor
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_coachXcompetitor;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_coachXcompetitor;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_coachXcompetitor;

-- Competition
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_competition;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_competition;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_competition;

-- Competitor
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_competitor;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_competitor;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_competitor;

-- CompetitorXCompetition
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_competitorXcompetition;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_competitorXcompetition;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_competitorXcompetition;

-- CompetitorXDisability
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_competitorXdisability;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_competitorXdisability;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_competitorXdisability;

-- Country
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_country;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_country;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_country;

-- CountryXParalympic
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_countryXparalympic;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_countryXparalympic;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_countryXparalympic;

-- Disability
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_disability;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_disability;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_disability;

-- District
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_district;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_district;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_district;

-- Email
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_email;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_email;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_email;

-- GenderType
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_gendertype;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_gendertype;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_gendertype;

-- IdentificationType
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_identificationtype;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_identificationtype;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_identificationtype;

-- Medal
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_medal;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_medal;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_medal;

-- MedalType
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_medaltype;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_medaltype;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_medaltype;

-- MedalTypeXCompetitorXCompetitionXParalympic
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_medaltypeXcompetitorXcompetitionXparalympic;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_medaltypeXcompetitorXcompetitionXparalympic;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_medaltypeXcompetitorXcompetitionXparalympic;

-- MedalXCompetitionXCompetitor
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_medalXcompetitionXcompetitor;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_medalXcompetitionXcompetitor;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_medalXcompetitionXcompetitor;

-- Nationality
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_nationality;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_nationality;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_nationality;

-- NationalityXPerson
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_nationalityXperson;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_nationalityXperson;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_nationalityXperson;

-- Paralympic
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_paralympic;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_paralympic;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_paralympic;

-- ParalympicXCompetition
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_paralympicXcompetition;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_paralympicXcompetition;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_paralympicXcompetition;

-- Person
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_person;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_person;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_person;

-- PersonXPhone
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_personXphone;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_personXphone;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_personXphone;

-- Phone
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_phone;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_phone;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_phone;

-- PhoneType
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_phonetype;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_phonetype;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_phonetype;

-- Picture
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_picture;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_picture;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_picture;

-- Province
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_province;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_province;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_province;

-- Score
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_score;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_score;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_score;

-- Team
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_team;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_team;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_team;

-- EventTable
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_eventtable;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_eventtable;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_eventtable;

-- WorldRecord
DROP TRIGGER IF EXISTS ParalympicGames.before_insert_worldrecord;
DROP TRIGGER IF EXISTS ParalympicGames.before_update_worldrecord;
DROP TRIGGER IF EXISTS ParalympicGames.before_delete_worldrecord;

-- ----------------------------------------------------------------------------------------------------

-- TRIGGER ADMINISTRATOR

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_administrator
BEFORE INSERT ON administrator
FOR EACH ROW
BEGIN

    IF NEW.ID_ADMIN IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'administrator',
            'ID_ADMIN',
            'NULL',
            NEW.ID_ADMIN,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'administrator',
            'ID_PERSON',
            'NULL',
            NEW.ID_ADMIN,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PASSWORD_ADMIN IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'administrator',
            'PASSWORD_ADMIN',
            'NULL',
            NEW.PASSWORD_ADMIN,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.USERNAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'administrator',
            'USERNAME',
            'NULL',
            NEW.USERNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_administrator
BEFORE UPDATE ON administrator
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_ADMIN != OLD.ID_ADMIN THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'administrator',
            'ID_ADMIN',
            OLD.ID_ADMIN,
            NEW.ID_ADMIN,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON != OLD.ID_PERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'administrator',
            'ID_PERSON',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.PASSWORD_ADMIN != OLD.PASSWORD_ADMIN THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'administrator',
            'PASSWORD_ADMIN',
            OLD.PASSWORD_ADMIN,
            NEW.PASSWORD_ADMIN,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.USERNAME != OLD.USERNAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'administrator',
            'USERNAME',
            OLD.USERNAME,
            NEW.USERNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_administrator
BEFORE DELETE ON administrator
FOR EACH ROW
BEGIN
    IF OLD.ID_ADMIN IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'administrator',
			'ID_ADMIN',
			OLD.ID_ADMIN,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'administrator',
			'ID_PERSON',
			OLD.ID_PERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.PASSWORD_ADMIN IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'administrator',
			'PASSWORD_ADMIN',
			OLD.PASSWORD_ADMIN,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;

	IF OLD.USERNAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'admnistrator',
			'USERNAME',
			OLD.USERNAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
			);
	END IF;
END;
//

-- TRIGGER CANTON

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_canton
BEFORE INSERT ON canton
FOR EACH ROW
BEGIN
    IF NEW.ID_CANTON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'canton',
            'ID_CANTON',
            'NULL',
            NEW.ID_CANTON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.CANTON_NAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'canton',
            'CANTON_NAME',
            'NULL',
            NEW.CANTON_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PROVINCE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'canton',
            'ID_PROVINCE',
            'NULL',
            NEW.ID_PROVINCE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_canton
BEFORE UPDATE ON canton
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_CANTON != OLD.ID_CANTON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'canton',
            'ID_CANTON',
            OLD.ID_CANTON,
            NEW.ID_CANTON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.CANTON_NAME != OLD.CANTON_NAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'canton',
            'CANTON_NAME',
            OLD.CANTON_NAME,
            NEW.CANTON_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_PROVINCE != OLD.ID_PROVINCE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'canton',
            'ID_PROVINCE',
            OLD.ID_PROVINCE,
            NEW.ID_PROVINCE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_canton
BEFORE DELETE ON canton
FOR EACH ROW
BEGIN
    IF OLD.ID_CANTON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'canton',
			'ID_CANTON',
			OLD.ID_CANTON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.CANTON_NAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'canton',
			'CANTON_NAME',
			OLD.CANTON_NAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PROVINCE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'canton',
			'ID_PROVINCE',
			OLD.ID_PROVINCE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//


-- TRIGGER COACH

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_coach
BEFORE INSERT ON coach
FOR EACH ROW
BEGIN

    IF NEW.ID_COACH IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coach',
            'ID_COACH',
            'NULL',
            NEW.ID_COACH,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coach',
            'ID_PERSON',
            'NULL',
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_TEAM IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coach',
            'ID_TEAM',
            'NULL',
            NEW.ID_TEAM,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_coach
BEFORE UPDATE ON coach
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COACH != OLD.ID_COACH THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coach',
            'ID_COACH',
            OLD.ID_COACH,
            NEW.ID_COACH,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON != OLD.ID_PERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coach',
            'CANTON_NAME',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_TEAM != OLD.ID_TEAM THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coach',
            'ID_TEAM',
            OLD.ID_TEAM,
            NEW.ID_TEAM,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_coach
BEFORE DELETE ON coach
FOR EACH ROW
BEGIN
    IF OLD.ID_COACH IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'coach',
			'ID_COACH',
			OLD.ID_COACH,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'coach',
			'ID_PERSON',
			OLD.ID_PERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_TEAM IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'coach',
			'ID_TEAM',
			OLD.ID_TEAM,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER COACHXCOMPETITOR

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_coachXcompetitor
BEFORE INSERT ON coachXcompetitor
FOR EACH ROW
BEGIN

    IF NEW.ID_COACHXCOMPETITOR IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coachXcompetitor',
            'ID_COACHXCOMPETITOR',
            'NULL',
            NEW.ID_COACHXCOMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COACH IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coachXcompetitor',
            'ID_COACH',
            'NULL',
            NEW.ID_COACH,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITOR IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coachXcompetitor',
            'ID_COMPETITOR',
            'NULL',
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_coachXcompetitor
BEFORE UPDATE ON coachXcompetitor
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COACHXCOMPETITOR != OLD.ID_COACHXCOMPETITOR THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coachXcompetitor',
            'ID_COACHXCOMPETITOR',
            OLD.ID_COACHXCOMPETITOR,
            NEW.ID_COACHXCOMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COACH != OLD.ID_COACH THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coachXcompetitor',
            'ID_COACH',
            OLD.ID_COACH,
            NEW.ID_COACH,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_COMPETITOR != OLD.ID_COMPETITOR THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'coachXcompetitor',
            'ID_COMPETITOR',
            OLD.ID_COMPETITOR,
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_coachXcompetitor
BEFORE DELETE ON coachXcompetitor
FOR EACH ROW
BEGIN
    IF OLD.ID_COACHXCOMPETITOR IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'coachXcompetitor',
			'ID_COACHXCOMPETITOR',
			OLD.ID_COACHXCOMPETITOR,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_COACH IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'coachXcompetitor',
			'ID_COACH',
			OLD.ID_COACH,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_COMPETITOR IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'coachXcompetitor',
			'ID_COMPETITOR',
			OLD.ID_COMPETITOR,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TIGGER COMPETITION

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_competition
BEFORE INSERT ON competition
FOR EACH ROW
BEGIN

    IF NEW.ID_COMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competition',
            'ID_COMPETITION',
            'NULL',
            NEW.ID_COMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.COMPETITIONNAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competition',
            'COMPETITIONNAME',
            'NULL',
            NEW.COMPETITIONNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.COMPETITIONDATE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competition',
            'COMPETITIONDATE',
            'NULL',
            NEW.COMPETITIONDATE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.competitiondescription IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competition',
            'competitiondescription',
            'NULL',
            NEW.competitiondescription,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_competition
BEFORE UPDATE ON competition
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COMPETITION != OLD.ID_COMPETITION THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competition',
            'ID_COMPETITION',
            OLD.ID_COMPETITION,
            NEW.ID_COMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.COMPETITIONNAME != OLD.COMPETITIONNAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competition',
            'COMPETITIONNAME',
            OLD.COMPETITIONNAME,
            NEW.COMPETITIONNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.COMPETITIONDATE != OLD.COMPETITIONDATE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competition',
            'COMPETITIONDATE',
            OLD.COMPETITIONDATE,
            NEW.COMPETITIONDATE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        
	IF NEW.competitiondescription != OLD.competitiondescription THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competition',
            'competitiondescription',
            OLD.competitiondescription,
            NEW.competitiondescription,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_competition
BEFORE DELETE ON competition
FOR EACH ROW
BEGIN
    IF OLD.ID_COMPETITION IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competition',
			'ID_COMPETITION',
			OLD.ID_COMPETITION,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.COMPETITIONNAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competition',
			'COMPETITIONNAME',
			OLD.COMPETITIONNAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.COMPETITIONDATE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competition',
			'COMPETITIONDATE',
			OLD.COMPETITIONDATE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.competitiondescription IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competition',
			'competitiondescription',
			OLD.competitiondescription,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;    
END;
//


-- TRIGGER COMPETITOR 

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_competitor
BEFORE INSERT ON competitor
FOR EACH ROW
BEGIN

    IF NEW.ID_COMPETITOR IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitor',
            'ID_COMPETITOR',
            'NULL',
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.CLASIFICATIONSCORE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitor',
            'CLASIFICATIONSCORE',
            'NULL',
            NEW.CLASIFICATIONSCORE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitor',
            'ID_PERSON',
            'NULL',
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_TEAM IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitor',
            'ID_TEAM',
            'NULL',
            NEW.ID_TEAM,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_competitor
BEFORE UPDATE ON competitor
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COMPETITOR != OLD.ID_COMPETITOR THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitor',
            'ID_COMPETITOR',
            OLD.ID_COMPETITOR,
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.CLASIFICATIONSCORE != OLD.CLASIFICATIONSCORE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitor',
            'CLASIFICATIONSCORE',
            OLD.CLASIFICATIONSCORE,
            NEW.CLASIFICATIONSCORE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_PERSON != OLD.ID_PERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitor',
            'ID_PERSON',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        
	IF NEW.ID_TEAM != OLD.ID_TEAM THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitor',
            'ID_TEAM',
            OLD.ID_TEAM,
            NEW.ID_TEAM,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_competitor
BEFORE DELETE ON competitor
FOR EACH ROW
BEGIN
    IF OLD.ID_COMPETITOR IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitor',
			'ID_COMPETITOR',
			OLD.ID_COMPETITOR,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.CLASIFICATIONSCORE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitor',
			'CLASIFICATIONSCORE',
			OLD.CLASIFICATIONSCORE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitor',
			'ID_PERSON',
			OLD.ID_PERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_TEAM IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitor',
			'ID_TEAM',
			OLD.ID_TEAM,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;    
END;
//

-- TRIGGER COMPETITORXCOMPETITION

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_competitorXcompetition
BEFORE INSERT ON competitorXcompetition
FOR EACH ROW
BEGIN

    IF NEW.ID_COMPETITORXCOMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'ID_COMPETITORXCOMPETITION',
            'NULL',
            NEW.ID_COMPETITORXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITOR IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'ID_COMPETITOR',
            'NULL',
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'ID_COMPETITION',
            'NULL',
            NEW.ID_COMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.TIMERECORDED IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'TIMERECORDED',
            'NULL',
            NEW.TIMERECORDED,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.SCORE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'SCORE',
            'NULL',
            NEW.SCORE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.POSITIONRECORDED IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'POSITIONRECORDED',
            'NULL',
            NEW.POSITIONRECORDED,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_competitorXcompetition
BEFORE UPDATE ON competitorXcompetition
FOR EACH ROW
BEGIN
    IF NEW.ID_COMPETITORXCOMPETITION != OLD.ID_COMPETITORXCOMPETITION THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'ID_COMPETITORXCOMPETITION',
            OLD.ID_COMPETITORXCOMPETITION,
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITOR != OLD.ID_COMPETITOR THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'ID_COMPETITOR',
            OLD.ID_COMPETITOR,
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITION != OLD.ID_COMPETITION THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'ID_COMPETITION',
            OLD.ID_COMPETITION,
            NEW.ID_COMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TIMERECORDED != OLD.TIMERECORDED THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'TIMERECORDED',
            OLD.TIMERECORDED,
            NEW.TIMERECORDED,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.SCORE != OLD.SCORE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'SCORE',
            OLD.SCORE,
            NEW.SCORE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        
	IF NEW.POSITIONRECORDED != OLD.POSITIONRECORDED THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXcompetition',
            'POSITIONRECORDED',
            OLD.POSITIONRECORDED,
            NEW.POSITIONRECORDED,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_competitorXcompetition
BEFORE DELETE ON competitorXcompetition
FOR EACH ROW
BEGIN
    IF OLD.ID_COMPETITORXCOMPETITION IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXcompetition',
			'ID_COMPETITORXCOMPETITION',
			OLD.ID_COMPETITORXCOMPETITION,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_COMPETITOR IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXcompetition',
			'ID_COMPETITOR',
			OLD.ID_COMPETITOR,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_COMPETITION IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXcompetition',
			'ID_COMPETITION',
			OLD.ID_COMPETITION,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.TIMERECORDED IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXcompetition',
			'TIMERECORDED',
			OLD.TIMERECORDED,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.SCORE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXcompetition',
			'SCORE',
			OLD.SCORE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.POSITIONRECORDED IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXcompetition',
			'POSITIONRECORDED',
			OLD.POSITIONRECORDED,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;    
END;
//

-- TRIGGER COMPETITORXDISABILITY

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_competitorXdisability
BEFORE INSERT ON competitorXdisability
FOR EACH ROW
BEGIN

    IF NEW.ID_COMPETITORXDISABILITY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXdisability',
            'ID_COMPETITORXDISABILITY',
            'NULL',
            NEW.ID_COMPETITORXDISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITOR IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXdisability',
            'ID_COMPETITOR',
            'NULL',
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_DISABILITY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXdisability',
            'ID_DISABILITY',
            'NULL',
            NEW.ID_DISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_competitorXdisability
BEFORE UPDATE ON competitorXdisability
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COMPETITORXDISABILITY != OLD.ID_COMPETITORXDISABILITY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXdisability',
            'ID_COMPETITORXDISABILITY',
            OLD.ID_COMPETITORXDISABILITY,
            NEW.ID_COMPETITORXDISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITOR != OLD.ID_COMPETITOR THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXdisability',
            'ID_COMPETITOR',
            OLD.ID_COMPETITOR,
            NEW.ID_COMPETITOR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_DISABILITY != OLD.ID_DISABILITY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'competitorXdisability',
            'ID_DISABILITY',
            OLD.ID_DISABILITY,
            NEW.ID_DISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_competitorXdisability
BEFORE DELETE ON competitorXdisability
FOR EACH ROW
BEGIN
    IF OLD.ID_COMPETITORXDISABILITY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXdisability',
			'ID_COMPETITORXDISABILITY',
			OLD.ID_COMPETITORXDISABILITY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_COMPETITOR IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXdisability',
			'ID_COMPETITOR',
			OLD.ID_COMPETITOR,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_DISABILITY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'competitorXdisability',
			'ID_DISABILITY',
			OLD.ID_DISABILITY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER COUNTRY

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_country
BEFORE INSERT ON country
FOR EACH ROW
BEGIN

    IF NEW.ID_COUNTRY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'country',
            'ID_COUNTRY',
            'NULL',
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.COUNTRY_NAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'country',
            'COUNTRY_NAME',
            'NULL',
            NEW.COUNTRY_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PICTURE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'country',
            'ID_PICTURE',
            'NULL',
            NEW.ID_PICTURE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_country
BEFORE UPDATE ON country
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COUNTRY != OLD.ID_COUNTRY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'country',
            'ID_COUNTRY',
            OLD.ID_COUNTRY,
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.COUNTRY_NAME != OLD.COUNTRY_NAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'country',
            'COUNTRY_NAME',
            OLD.COUNTRY_NAME,
            NEW.COUNTRY_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_PICTURE != OLD.ID_PICTURE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'country',
            'ID_PICTURE',
            OLD.ID_PICTURE,
            NEW.ID_PICTURE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_country
BEFORE DELETE ON country
FOR EACH ROW
BEGIN
    IF OLD.ID_COUNTRY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'country',
			'ID_COUNTRY',
			OLD.ID_COUNTRY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.COUNTRY_NAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'country',
			'COUNTRY_NAME',
			OLD.COUNTRY_NAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PICTURE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'country',
			'ID_PICTURE',
			OLD.ID_PICTURE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER COUNTRYXPARALYMPIC

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_countryXparalympic
BEFORE INSERT ON countryXparalympic
FOR EACH ROW
BEGIN

    IF NEW.ID_COUNTRYXPARALYMPIC IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'countryXparalympic',
            'ID_COUNTRYXPARALYMPIC',
            'NULL',
            NEW.ID_COUNTRYXPARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PARALYMPIC IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'countryXparalympic',
            'ID_PARALYMPIC',
            'NULL',
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COUNTRY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'countryXparalympic',
            'ID_COUNTRY',
            'NULL',
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_countryXparalympic
BEFORE UPDATE ON countryXparalympic
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_COUNTRYXPARALYMPIC != OLD.ID_COUNTRYXPARALYMPIC THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'countryXparalympic',
            'ID_COUNTRYXPARALYMPIC',
            OLD.ID_COUNTRYXPARALYMPIC,
            NEW.ID_COUNTRYXPARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PARALYMPIC != OLD.ID_PARALYMPIC THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'countryXparalympic',
            'ID_PARALYMPIC',
            OLD.ID_PARALYMPIC,
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_COUNTRY != OLD.ID_COUNTRY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'countryXparalympic',
            'ID_COUNTRY',
            OLD.ID_COUNTRY,
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_countryXparalympic
BEFORE DELETE ON countryXparalympic
FOR EACH ROW
BEGIN
    IF OLD.ID_COUNTRYXPARALYMPIC IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'countryXparalympic',
			'ID_COUNTRYXPARALYMPIC',
			OLD.ID_COUNTRYXPARALYMPIC,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PARALYMPIC IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'countryXparalympic',
			'ID_PARALYMPIC',
			OLD.ID_PARALYMPIC,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_COUNTRY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'countryXparalympic',
			'ID_COUNTRY',
			OLD.ID_COUNTRY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER DISABILITY

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_disability
BEFORE INSERT ON disability
FOR EACH ROW
BEGIN

    IF NEW.ID_DISABILITY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'disability',
            'ID_DISABILITY',
            'NULL',
            NEW.ID_DISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.DISABILITYNAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'disability',
            'DISABILITYNAME',
            'NULL',
            NEW.DISABILITYNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_disability
BEFORE UPDATE ON disability
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_DISABILITY != OLD.ID_DISABILITY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'disability',
            'ID_DISABILITY',
            OLD.ID_DISABILITY,
            NEW.ID_DISABILITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.DISABILITYNAME != OLD.DISABILITYNAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'disability',
            'DISABILITYNAME',
            OLD.DISABILITYNAME,
            NEW.DISABILITYNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_disability
BEFORE DELETE ON disability
FOR EACH ROW
BEGIN
    IF OLD.ID_DISABILITY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'disability',
			'ID_DISABILITY',
			OLD.ID_DISABILITY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.DISABILITYNAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'disability',
			'DISABILITYNAME',
			OLD.DISABILITYNAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER DISTRICT

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_district
BEFORE INSERT ON district
FOR EACH ROW
BEGIN

    IF NEW.ID_DISTRICT IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'district',
            'ID_DISTRICT',
            'NULL',
            NEW.ID_DISTRICT,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.DISTRICT_NAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'district',
            'DISTRICT_NAME',
            'NULL',
            NEW.DISTRICT_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_CANTON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'district',
            'ID_CANTON',
            'NULL',
            NEW.ID_CANTON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_district
BEFORE UPDATE ON district
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_DISTRICT != OLD.ID_DISTRICT THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'district',
            'ID_DISTRICT',
            OLD.ID_DISTRICT,
            NEW.ID_DISTRICT,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.DISTRICT_NAME != OLD.DISTRICT_NAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'district',
            'DISTRICT_NAME',
            OLD.DISTRICT_NAME,
            NEW.DISTRICT_NAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_CANTON != OLD.ID_CANTON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'district',
            'ID_CANTON',
            OLD.ID_CANTON,
            NEW.ID_CANTON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_district
BEFORE DELETE ON district
FOR EACH ROW
BEGIN
    IF OLD.ID_DISTRICT IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'district',
			'ID_DISTRICT',
			OLD.ID_DISTRICT,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.DISTRICT_NAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'district',
			'DISTRICT_NAME',
			OLD.DISTRICT_NAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_CANTON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'district',
			'ID_CANTON',
			OLD.ID_CANTON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER EMAIL

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_email
BEFORE INSERT ON email
FOR EACH ROW
BEGIN
    IF NEW.ID_EMAIL IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'email',
            'ID_EMAIL',
            'NULL',
            NEW.ID_EMAIL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.EMAILADRESS IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'email',
            'EMAILADRESS',
            'NULL',
            NEW.EMAILADRESS,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'email',
            'ID_PERSON',
            'NULL',
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_email
BEFORE UPDATE ON email
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_EMAIL != OLD.ID_EMAIL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'email',
            'ID_EMAIL',
            OLD.ID_EMAIL,
            NEW.ID_EMAIL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.EMAILADRESS != OLD.EMAILADRESS THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'email',
            'EMAILADRESS',
            OLD.EMAILADRESS,
            NEW.EMAILADRESS,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_PERSON != OLD.ID_PERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'email',
            'ID_PERSON',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_email
BEFORE DELETE ON email
FOR EACH ROW
BEGIN
    IF OLD.ID_EMAIL IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'email',
			'ID_EMAIL',
			OLD.ID_EMAIL,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.EMAILADRESS IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'email',
			'EMAILADRESS',
			OLD.EMAILADRESS,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'email',
			'ID_PERSON',
			OLD.ID_PERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER GENDERTYPE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_gendertype
BEFORE INSERT ON gendertype
FOR EACH ROW
BEGIN

    IF NEW.ID_GENDERTYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'gendertype',
            'ID_GENDERTYPE',
            'NULL',
            NEW.ID_GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.GENDERTYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'gendertype',
            'GENDERTYPE',
            'NULL',
            NEW.GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_gendertype
BEFORE UPDATE ON gendertype
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_GENDERTYPE != OLD.ID_GENDERTYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'gendertype',
            'ID_GENDERTYPE',
            OLD.ID_GENDERTYPE,
            NEW.ID_GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.GENDERTYPE != OLD.GENDERTYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'gendertype',
            'GENDERTYPE',
            OLD.GENDERTYPE,
            NEW.GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_gendertype
BEFORE DELETE ON gendertype
FOR EACH ROW
BEGIN
    IF OLD.ID_GENDERTYPE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'gendertype',
			'ID_GENDERTYPE',
			OLD.ID_GENDERTYPE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.GENDERTYPE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'gendertype',
			'GENDERTYPE',
			OLD.GENDERTYPE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER IDENTIFICATIONTYPE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_identificationtype
BEFORE INSERT ON identificationtype
FOR EACH ROW
BEGIN

    IF NEW.ID_IDENTIFICATIONTYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'identificationtype',
            'ID_IDENTIFICATIONTYPE',
            'NULL',
            NEW.ID_IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IDENTIFICATIONTYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'identificationtype',
            'IDENTIFICATIONTYPE',
            'NULL',
            NEW.IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_identificationtype
BEFORE UPDATE ON identificationtype
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_IDENTIFICATIONTYPE != OLD.ID_IDENTIFICATIONTYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'identificationtype',
            'ID_IDENTIFICATIONTYPE',
            OLD.ID_IDENTIFICATIONTYPE,
            NEW.ID_IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IDENTIFICATIONTYPE != OLD.IDENTIFICATIONTYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'identificationtype',
            'IDENTIFICATIONTYPE',
            OLD.IDENTIFICATIONTYPE,
            NEW.IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_identificationtype
BEFORE DELETE ON identificationtype
FOR EACH ROW
BEGIN
    IF OLD.ID_IDENTIFICATIONTYPE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'identificationtype',
			'ID_IDENTIFICATIONTYPE',
			OLD.ID_IDENTIFICATIONTYPE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.IDENTIFICATIONTYPE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'identificationtype',
			'IDENTIFICATIONTYPE',
			OLD.IDENTIFICATIONTYPE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER MEDAL

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_medal
BEFORE INSERT ON medal
FOR EACH ROW
BEGIN

    IF NEW.ID_MEDAL IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medal',
            'ID_MEDAL',
            'NULL',
            NEW.ID_MEDAL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MEDALTYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medal',
            'ID_MEDALTYPE',
            'NULL',
            NEW.ID_MEDALTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_medal
BEFORE UPDATE ON medal
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_MEDAL != OLD.ID_MEDAL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medal',
            'ID_IDENTIFICATIONTYPE',
            OLD.ID_MEDAL,
            NEW.ID_MEDAL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MEDALTYPE != OLD.ID_MEDALTYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medal',
            'ID_MEDALTYPE',
            OLD.ID_MEDALTYPE,
            NEW.ID_MEDALTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_medal
BEFORE DELETE ON medal
FOR EACH ROW
BEGIN
    IF OLD.ID_MEDAL IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medal',
			'ID_MEDAL',
			OLD.ID_MEDAL,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_MEDALTYPE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medal',
			'ID_MEDALTYPE',
			OLD.ID_MEDALTYPE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER MEDALTYPE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_medaltype
BEFORE INSERT ON medaltype
FOR EACH ROW
BEGIN

    IF NEW.ID_MEDALTYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltype',
            'ID_MEDALTYPE',
            'NULL',
            NEW.ID_MEDALTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TYPENAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltype',
            'TYPENAME',
            'NULL',
            NEW.TYPENAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_medaltype
BEFORE UPDATE ON medaltype
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_MEDALTYPE != OLD.ID_MEDALTYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltype',
            'ID_MEDALTYPE',
            OLD.ID_MEDALTYPE,
            NEW.ID_MEDALTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TYPENAME != OLD.TYPENAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltype',
            'TYPENAME',
            OLD.TYPENAME,
            NEW.TYPENAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- TRIGGER medaltypeXcompetitorXcompetitionXparalympic

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_medaltypeXcompetitorXcompetitionXparalympic
BEFORE INSERT ON medaltypeXcompetitorXcompetitionXparalympic
FOR EACH ROW
BEGIN
    IF NEW.ID_MedalTypeXcompetitorXCompetitionXParalympic IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_MedalTypeXcompetitorXCompetitionXParalympic',
            'NULL',
            NEW.ID_MedalTypeXcompetitorXCompetitionXParalympic,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MedalType IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_MedalType',
            'NULL',
            NEW.ID_MedalType,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Competitor IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_Competitor',
            'NULL',
            NEW.ID_Competitor,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Competition IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_Competition',
            'NULL',
            NEW.ID_Competition,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Paralympic IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_Paralympic',
            'NULL',
            NEW.ID_Paralympic,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_medaltypeXcompetitorXcompetitionXparalympic
BEFORE UPDATE ON medaltypeXcompetitorXcompetitionXparalympic
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_MedalTypeXcompetitorXCompetitionXParalympic != OLD.ID_MedalTypeXcompetitorXCompetitionXParalympic THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_MedalTypeXcompetitorXCompetitionXParalympic',
            OLD.ID_MedalTypeXcompetitorXCompetitionXParalympic,
            NEW.ID_MedalTypeXcompetitorXCompetitionXParalympic,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MedalType != OLD.ID_MedalType THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_MedalType',
            OLD.ID_MedalType,
            NEW.ID_MedalType,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Competitor != OLD.ID_Competitor THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_Competitor',
            OLD.ID_Competitor,
            NEW.ID_Competitor,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Competition != OLD.ID_Competition THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_Competition',
            OLD.ID_Competition,
            NEW.ID_Competition,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_Paralympic != OLD.ID_Paralympic THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medaltypeXcompetitorXcompetitionXparalympic',
            'ID_Paralympic',
            OLD.ID_Paralympic,
            NEW.ID_Paralympic,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_medaltypeXcompetitorXcompetitionXparalympic
BEFORE DELETE ON medaltypeXcompetitorXcompetitionXparalympic
FOR EACH ROW
BEGIN
    IF OLD.ID_MedalTypeXcompetitorXCompetitionXParalympic IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medaltypeXcompetitorXcompetitionXparalympic',
			'ID_MedalTypeXcompetitorXCompetitionXParalympic',
			OLD.ID_MedalTypeXcompetitorXCompetitionXParalympic,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_MedalType IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medaltypeXcompetitorXcompetitionXparalympic',
			'ID_MedalType',
			OLD.ID_MedalType,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
         IF OLD.ID_Competitor IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medaltypeXcompetitorXcompetitionXparalympic',
			'ID_Competitor',
			OLD.ID_Competitor,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_Competition IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medaltypeXcompetitorXcompetitionXparalympic',
			'ID_Competition',
			OLD.ID_Competition,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_Paralympic IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medaltypeXcompetitorXcompetitionXparalympic',
			'ID_Paralympic',
			OLD.ID_Paralympic,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER MEDALXCOMPETITIONXCOMPETITOR

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_medalXcompetitionXcompetitor
BEFORE INSERT ON medalXcompetitionXcompetitor
FOR EACH ROW
BEGIN

    IF NEW.ID_MEDALXCOMPXCOMP IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medalXcompetitionXcompetitor',
            'ID_MEDALXCOMPXCOMP',
            'NULL',
            NEW.ID_MEDALXCOMPXCOMP,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MEDAL IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medalXcompetitionXcompetitor',
            'ID_MEDAL',
            'NULL',
            NEW.ID_MEDAL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITORXCOMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medalXcompetitionXcompetitor',
            'ID_COMPETITORXCOMPETITION',
            'NULL',
            NEW.ID_COMPETITORXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_medalXcompetitionXcompetitor
BEFORE UPDATE ON medalXcompetitionXcompetitor
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_MEDALXCOMPXCOMP != OLD.ID_MEDALXCOMPXCOMP THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medalXcompetitionXcompetitor',
            'ID_MEDALXCOMPXCOMP',
            OLD.ID_MEDALXCOMPXCOMP,
            NEW.ID_MEDALXCOMPXCOMP,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_MEDAL != OLD.ID_MEDAL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medalXcompetitionXcompetitor',
            'ID_MEDAL',
            OLD.ID_MEDAL,
            NEW.ID_MEDAL,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_COMPETITORXCOMPETITION != OLD.ID_COMPETITORXCOMPETITION THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'medalXcompetitionXcompetitor',
            'ID_COMPETITORXCOMPETITION',
            OLD.ID_COMPETITORXCOMPETITION,
            NEW.ID_COMPETITORXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_medalXcompetitionXcompetitor
BEFORE DELETE ON medalXcompetitionXcompetitor
FOR EACH ROW
BEGIN
    IF OLD.ID_MEDALXCOMPXCOMP IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medalXcompetitionXcompetitor',
			'ID_MEDALXCOMPXCOMP',
			OLD.ID_MEDALXCOMPXCOMP,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_MEDAL IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medalXcompetitionXcompetitor',
			'ID_MEDAL',
			OLD.ID_MEDAL,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_COMPETITORXCOMPETITION IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'medalXcompetitionXcompetitor',
			'ID_COMPETITORXCOMPETITION',
			OLD.ID_COMPETITORXCOMPETITION,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER NATIONALITY

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_nationality
BEFORE INSERT ON nationality
FOR EACH ROW
BEGIN

    IF NEW.ID_NATIONALITY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationality',
            'ID_NATIONALITY',
            'NULL',
            NEW.ID_NATIONALITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.NATIONALITYNAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationality',
            'NATIONALITYNAME',
            'NULL',
            NEW.NATIONALITYNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_nationality
BEFORE UPDATE ON nationality
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_NATIONALITY != OLD.ID_NATIONALITY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationality',
            'ID_NATIONALITY',
            OLD.ID_NATIONALITY,
            NEW.ID_NATIONALITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.NATIONALITYNAME != OLD.NATIONALITYNAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationality',
            'NATIONALITYNAME',
            OLD.NATIONALITYNAME,
            NEW.NATIONALITYNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_nationality
BEFORE DELETE ON nationality
FOR EACH ROW
BEGIN
    IF OLD.ID_NATIONALITY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'nationality',
			'ID_NATIONALITY',
			OLD.ID_NATIONALITY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.NATIONALITYNAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'nationality',
			'NATIONALITYNAME',
			OLD.NATIONALITYNAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER NATIONALITYXPERSON

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_nationalityXperson
BEFORE INSERT ON nationalityXperson
FOR EACH ROW
BEGIN

    IF NEW.ID_NATIONALITYXPERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationalityXperson',
            'ID_NATIONALITYXPERSON',
            'NULL',
            NEW.ID_NATIONALITYXPERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_NATIONALITY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationalityXperson',
            'ID_NATIONALITY',
            'NULL',
            NEW.ID_NATIONALITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationalityXperson',
            'ID_PERSON',
            'NULL',
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_nationalityXperson
BEFORE UPDATE ON nationalityXperson
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_NATIONALITYXPERSON != OLD.ID_NATIONALITYXPERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationalityXperson',
            'ID_NATIONALITYXPERSON',
            OLD.ID_NATIONALITYXPERSON,
            NEW.ID_NATIONALITYXPERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_NATIONALITY != OLD.ID_NATIONALITY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationalityXperson',
            'ID_NATIONALITY',
            OLD.ID_NATIONALITY,
            NEW.ID_NATIONALITY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_PERSON != OLD.ID_PERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'nationalityXperson',
            'ID_PERSON',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_nationalityXperson
BEFORE DELETE ON nationalityXperson
FOR EACH ROW
BEGIN
    IF OLD.ID_NATIONALITYXPERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'nationalityXperson',
			'ID_NATIONALITYXPERSON',
			OLD.ID_NATIONALITYXPERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_NATIONALITY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'nationalityXperson',
			'ID_NATIONALITY',
			OLD.ID_NATIONALITY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_PERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'nationalityXperson',
			'ID_PERSON',
			OLD.ID_PERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER PARALYMPIC

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_paralympic
BEFORE INSERT ON paralympic
FOR EACH ROW
BEGIN

    IF NEW.ID_PARALYMPIC IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympic',
            'ID_PARALYMPIC',
            'NULL',
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PARALYMPICS_YEAR IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympic',
            'PARALYMPICS_YEAR',
            'NULL',
            NEW.PARALYMPICS_YEAR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COUNTRY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympic',
            'ID_COUNTRY',
            'NULL',
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_paralympic
BEFORE UPDATE ON paralympic
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PARALYMPIC != OLD.ID_PARALYMPIC THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympic',
            'ID_PARALYMPIC',
            OLD.ID_PARALYMPIC,
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PARALYMPICS_YEAR != OLD.PARALYMPICS_YEAR THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympic',
            'PARALYMPICS_YEAR',
            OLD.PARALYMPICS_YEAR,
            NEW.PARALYMPICS_YEAR,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_COUNTRY != OLD.ID_COUNTRY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympic',
            'ID_COUNTRY',
            OLD.ID_COUNTRY,
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_paralympic
BEFORE DELETE ON paralympic
FOR EACH ROW
BEGIN
    IF OLD.ID_PARALYMPIC IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'paralympic',
			'ID_PARALYMPIC',
			OLD.ID_PARALYMPIC,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.PARALYMPICS_YEAR IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'paralympic',
			'PARALYMPICS_YEAR',
			OLD.PARALYMPICS_YEAR,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_COUNTRY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'paralympic',
			'ID_COUNTRY',
			OLD.ID_COUNTRY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER PARALYMPICXCOMPETITION

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_paralympicXcompetition
BEFORE INSERT ON paralympicXcompetition
FOR EACH ROW
BEGIN

    IF NEW.ID_PARALYMPICXCOMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympicXcompetition',
            'ID_PARALYMPICXCOMPETITION',
            'NULL',
            NEW.ID_PARALYMPICXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PARALYMPIC IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympicXcompetition',
            'ID_PARALYMPIC',
            'NULL',
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympicXcompetition',
            'ID_COMPETITION',
            'NULL',
            NEW.ID_COMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_paralympicXcompetition
BEFORE UPDATE ON paralympicXcompetition
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PARALYMPICXCOMPETITION != OLD.ID_PARALYMPICXCOMPETITION THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympicXcompetition',
            'ID_PARALYMPICXCOMPETITION',
            OLD.ID_PARALYMPICXCOMPETITION,
            NEW.ID_PARALYMPICXCOMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PARALYMPIC != OLD.ID_PARALYMPIC THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympicXcompetition',
            'ID_PARALYMPIC',
            OLD.ID_PARALYMPIC,
            NEW.ID_PARALYMPIC,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_COMPETITION != OLD.ID_COMPETITION THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'paralympicXcompetition',
            'ID_COMPETITION',
            OLD.ID_COMPETITION,
            NEW.ID_COMPETITION,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_paralympicXcompetition
BEFORE DELETE ON paralympicXcompetition
FOR EACH ROW
BEGIN
    IF OLD.ID_PARALYMPICXCOMPETITION IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'paralympicXcompetition',
			'ID_PARALYMPICXCOMPETITION',
			OLD.ID_PARALYMPICXCOMPETITION,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PARALYMPIC IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'paralympicXcompetition',
			'ID_PARALYMPIC',
			OLD.ID_PARALYMPIC,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_COMPETITION IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'paralympicXcompetition',
			'ID_COMPETITION',
			OLD.ID_COMPETITION,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER PERSON

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_person
BEFORE INSERT ON person
FOR EACH ROW
BEGIN
    -- Insertar registro para nuevo coach
    IF NEW.ID_PERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_PERSON',
            'NULL',
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.IDENTIFICATIONNUMBER IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'IDENTIFICATIONNUMBER',
            'NULL',
            NEW.IDENTIFICATIONNUMBER,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.FIRSTNAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'FIRSTNAME',
            'NULL',
            NEW.FIRSTNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.SECONDNAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'SECONDNAME',
            'NULL',
            NEW.SECONDNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.FIRSTLASTNAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'FIRSTLASTNAME',
            'NULL',
            NEW.FIRSTLASTNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.SECONDLASTNAME IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'SECONDLASTNAME',
            'NULL',
            NEW.SECONDLASTNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.BIRTHDATE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'BIRTHDATE',
            'NULL',
            NEW.BIRTHDATE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_PICTURE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_PICTURE',
            'NULL',
            NEW.ID_PICTURE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
        IF NEW.ID_COUNTRY IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_COUNTRY',
            'NULL',
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_GENDERTYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_GENDERTYPE',
            'NULL',
            NEW.ID_GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_IDENTIFICATIONTYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_IDENTIFICATIONTYPE',
            'NULL',
            NEW.ID_IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_person
BEFORE UPDATE ON person
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PERSON != OLD.ID_PERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_PERSON',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IDENTIFICATIONNUMBER != OLD.IDENTIFICATIONNUMBER THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'IDENTIFICATIONNUMBER',
            OLD.IDENTIFICATIONNUMBER,
            NEW.IDENTIFICATIONNUMBER,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.FIRSTNAME != OLD.FIRSTNAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'FIRSTNAME',
            OLD.FIRSTNAME,
            NEW.FIRSTNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.SECONDNAME != OLD.SECONDNAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'SECONDNAME',
            OLD.SECONDNAME,
            NEW.SECONDNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.FIRSTLASTNAME != OLD.FIRSTLASTNAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'FIRSTLASTNAME',
            OLD.FIRSTLASTNAME,
            NEW.FIRSTLASTNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.SECONDLASTNAME != OLD.SECONDLASTNAME THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'SECONDLASTNAME',
            OLD.SECONDLASTNAME,
            NEW.SECONDLASTNAME,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.BIRTHDATE != OLD.BIRTHDATE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'BIRTHDATE',
            OLD.BIRTHDATE,
            NEW.BIRTHDATE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PICTURE != OLD.ID_PICTURE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_PICTURE',
            OLD.ID_PICTURE,
            NEW.ID_PICTURE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_COUNTRY != OLD.ID_COUNTRY THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_COUNTRY',
            OLD.ID_COUNTRY,
            NEW.ID_COUNTRY,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_GENDERTYPE != OLD.ID_GENDERTYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_GENDERTYPE',
            OLD.ID_GENDERTYPE,
            NEW.ID_GENDERTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_IDENTIFICATIONTYPE != OLD.ID_IDENTIFICATIONTYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'person',
            'ID_IDENTIFICATIONTYPE',
            OLD.ID_IDENTIFICATIONTYPE,
            NEW.ID_IDENTIFICATIONTYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_person
BEFORE DELETE ON person
FOR EACH ROW
BEGIN
    IF OLD.ID_PERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'ID_PERSON',
			OLD.ID_PERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.IDENTIFICATIONNUMBER IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'IDENTIFICATIONNUMBER',
			OLD.IDENTIFICATIONNUMBER,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.FIRSTNAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'FIRSTNAME',
			OLD.FIRSTNAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.SECONDNAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'SECONDNAME',
			OLD.SECONDNAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.FIRSTLASTNAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'FIRSTLASTNAME',
			OLD.FIRSTLASTNAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.SECONDLASTNAME IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'SECONDLASTNAME',
			OLD.SECONDLASTNAME,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.BIRTHDATE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'BIRTHDATE',
			OLD.BIRTHDATE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_PICTURE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'ID_PICTURE',
			OLD.ID_PICTURE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_COUNTRY IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'ID_COUNTRY',
			OLD.ID_COUNTRY,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_GENDERTYPE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'ID_GENDERTYPE',
			OLD.ID_GENDERTYPE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_IDENTIFICATIONTYPE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'person',
			'ID_IDENTIFICATIONTYPE',
			OLD.ID_IDENTIFICATIONTYPE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER PERSONXPHONE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_personXphone
BEFORE INSERT ON personXphone
FOR EACH ROW
BEGIN

    IF NEW.ID_PHONEXPERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'personXphone',
            'ID_PHONEXPERSON',
            'NULL',
            NEW.ID_PHONEXPERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'personXphone',
            'ID_PERSON',
            'NULL',
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PHONE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'personXphone',
            'ID_PHONE',
            'NULL',
            NEW.ID_PHONE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_personXphone
BEFORE UPDATE ON personXphone
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PHONEXPERSON != OLD.ID_PHONEXPERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'personXphone',
            'ID_PHONEXPERSON',
            OLD.ID_PHONEXPERSON,
            NEW.ID_PHONEXPERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PERSON != OLD.ID_PERSON THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'personXphone',
            'ID_PERSON',
            OLD.ID_PERSON,
            NEW.ID_PERSON,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_PHONE != OLD.ID_PHONE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'personXphone',
            'ID_PHONE',
            OLD.ID_PHONE,
            NEW.ID_PHONE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_personXphone
BEFORE DELETE ON personXphone
FOR EACH ROW
BEGIN
    IF OLD.ID_PHONEXPERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'personXphone',
			'ID_PHONEXPERSON',
			OLD.ID_PHONEXPERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_PERSON IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'personXphone',
			'ID_PERSON',
			OLD.ID_PERSON,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_PHONE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'personXphone',
			'ID_PHONE',
			OLD.ID_PHONE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER PHONE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_phone
BEFORE INSERT ON phone
FOR EACH ROW
BEGIN

    IF NEW.ID_PHONE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phone',
            'ID_PHONE',
            'NULL',
            NEW.ID_PHONE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PHONENUMBER IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phone',
            'PHONENUMBER',
            'NULL',
            NEW.PHONENUMBER,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_PHONETYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phone',
            'ID_PHONETYPE',
            'NULL',
            NEW.ID_PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_phone
BEFORE UPDATE ON phone
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PHONE != OLD.ID_PHONE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phone',
            'ID_PHONE',
            OLD.ID_PHONE,
            NEW.ID_PHONE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PHONENUMBER != OLD.PHONENUMBER THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phone',
            'PHONENUMBER',
            OLD.PHONENUMBER,
            NEW.PHONENUMBER,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_PHONETYPE != OLD.ID_PHONETYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phone',
            'ID_PHONETYPE',
            OLD.ID_PHONETYPE,
            NEW.ID_PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_phone
BEFORE DELETE ON phone
FOR EACH ROW
BEGIN
    IF OLD.ID_PHONE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'phone',
			'ID_PHONE',
			OLD.ID_PHONE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.PHONENUMBER IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'phone',
			'PHONENUMBER',
			OLD.PHONENUMBER,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_PHONETYPE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'phone',
			'ID_PHONETYPE',
			OLD.ID_PHONETYPE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER PHONETYPE

-- DROP TRIGGER ParalympicGames.before_insert_phonetype;
-- DROP TRIGGER ParalympicGames.before_update_phonetype;
-- DROP TRIGGER ParalympicGames.before_delete_phonetype;
 
-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_phonetype
BEFORE INSERT ON phonetype
FOR EACH ROW
BEGIN

    IF NEW.ID_PHONETYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phonetype',
            'ID_PHONETYPE',
            'NULL',
            NEW.ID_PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PHONETYPE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phonetype',
            'PHONETYPE',
            'NULL',
            NEW.PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_phonetype
BEFORE UPDATE ON phonetype
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PHONETYPE != OLD.ID_PHONETYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phonetype',
            'ID_PHONETYPE',
            OLD.ID_PHONETYPE,
            NEW.ID_PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.PHONETYPE != OLD.PHONETYPE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'phonetype',
            'PHONETYPE',
            OLD.PHONETYPE,
            NEW.PHONETYPE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_phonetype
BEFORE DELETE ON phonetype
FOR EACH ROW
BEGIN
    INSERT INTO Log (
        schemaName,
        tableName,
        fieldName,
        previousValue,
        currentValue,
        change_date,
        creation_date,
        creation_user
    ) VALUES (
        'paralympicgames',
        'phonetype',
        'ID_PHONETYPE',
        OLD.ID_PHONETYPE,
        'NULL',
        NOW(),
        NOW(),
        CURRENT_USER()
    );
    
    INSERT INTO Log (
        schemaName,
        tableName,
        fieldName,
        previousValue,
        currentValue,
        change_date,
        creation_date,
        creation_user
    ) VALUES (
        'paralympicgames',
        'phonetype',
        'PHONETYPE',
        OLD.PHONETYPE,
        'NULL',
        NOW(),
        NOW(),
        CURRENT_USER()
    );
END;
//

-- TRIGGER PICTURE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_picture
BEFORE INSERT ON picture
FOR EACH ROW
BEGIN

    IF NEW.ID_PICTURE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'picture',
            'ID_PICTURE',
            'NULL',
            NEW.ID_PICTURE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IMAGE IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'picture',
            'IMAGE',
            'NULL',
            NEW.IMAGE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_picture
BEFORE UPDATE ON picture
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_PICTURE != OLD.ID_PICTURE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'picture',
            'ID_PICTURE',
            OLD.ID_PICTURE,
            NEW.ID_PICTURE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.IMAGE != OLD.IMAGE THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'picture',
            'IMAGE',
            OLD.IMAGE,
            NEW.IMAGE,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_picture
BEFORE DELETE ON picture
FOR EACH ROW
BEGIN
    IF OLD.ID_PICTURE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'picture',
			'ID_PICTURE',
			OLD.ID_PICTURE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.IMAGE IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'picture',
			'IMAGE',
			OLD.IMAGE,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER PROVINCE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_province
BEFORE INSERT ON province
FOR EACH ROW
BEGIN

    IF NEW.ID_Province IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'province',
            'ID_Province',
            'NULL',
            NEW.ID_Province,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.Province_Name IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'province',
            'Province_Name',
            'NULL',
            NEW.Province_Name,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Country IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'province',
            'ID_Country',
            'NULL',
            NEW.ID_Country,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_province
BEFORE UPDATE ON province
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_Province != OLD.ID_Province THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'province',
            'ID_Province',
            OLD.ID_Province,
            NEW.ID_Province,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.Province_Name != OLD.Province_Name THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'province',
            'Province_Name',
            OLD.Province_Name,
            NEW.Province_Name,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_Country != OLD.ID_Country THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'province',
            'ID_Country',
            OLD.ID_Country,
            NEW.ID_Country,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_province
BEFORE DELETE ON province
FOR EACH ROW
BEGIN
    IF OLD.ID_Province IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'province',
			'ID_Province',
			OLD.ID_Province,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
         IF OLD.Province_Name IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'province',
			'Province_Name',
			OLD.Province_Name,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_Country IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'province',
			'ID_Country',
			OLD.ID_Country,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER SCORE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_score
BEFORE INSERT ON score
FOR EACH ROW
BEGIN
    -- Insertar registro para nuevo coach
    IF NEW.ID_Score IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'score',
            'ID_Score',
            'NULL',
            NEW.ID_Score,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.Score IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'score',
            'Score',
            'NULL',
            NEW.Score,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Competition IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'score',
            'ID_Competition',
            'NULL',
            NEW.ID_Competition,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_score
BEFORE UPDATE ON score
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_Score != OLD.ID_Score THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'score',
            'ID_Score',
            OLD.ID_Score,
            NEW.ID_Score,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.Score != OLD.Score THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'score',
            'Score',
            OLD.Score,
            NEW.Score,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_Competition != OLD.ID_Competition THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'score',
            'ID_Competition',
            OLD.ID_Competition,
            NEW.ID_Competition,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_score
BEFORE DELETE ON score
FOR EACH ROW
BEGIN
    IF OLD.ID_Score IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'score',
			'ID_Score',
			OLD.ID_Score,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.Score IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'score',
			'Score',
			OLD.Score,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_Competition IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'score',
			'ID_Competition',
			OLD.ID_Competition,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER TEAM

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_team
BEFORE INSERT ON team
FOR EACH ROW
BEGIN

    IF NEW.ID_Team IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'team',
            'ID_Team',
            'NULL',
            NEW.ID_Team,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TeamName IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'team',
            'TeamName',
            'NULL',
            NEW.TeamName,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.QuantityMembers IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'team',
            'QuantityMembers',
            'NULL',
            NEW.QuantityMembers,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_team
BEFORE UPDATE ON team
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_Team != OLD.ID_Team THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'team',
            'ID_Team',
            OLD.ID_Team,
            NEW.ID_Team,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.TeamName != OLD.TeamName THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'team',
            'TeamName',
            OLD.TeamName,
            NEW.TeamName,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.QuantityMembers != OLD.QuantityMembers THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'team',
            'QuantityMembers',
            OLD.QuantityMembers,
            NEW.QuantityMembers,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_team
BEFORE DELETE ON team
FOR EACH ROW
BEGIN
    IF OLD.ID_Team IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'team',
			'ID_Team',
			OLD.ID_Team,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.TeamName IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'team',
			'TeamName',
			OLD.TeamName,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.QuantityMembers IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'team',
			'QuantityMembers',
			OLD.QuantityMembers,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER EVENTTABLE

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_eventtable
BEFORE INSERT ON eventtable
FOR EACH ROW
BEGIN

    IF NEW.ID_Event IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'ID_Event',
            'NULL',
            NEW.ID_Event,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;

    IF NEW.ID_Competition IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'ID_Competition',
            'NULL',
            NEW.ID_Competition,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;

	IF NEW.ID_Paralympic IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'ID_Paralympic',
            'NULL',
            NEW.ID_Paralympic,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;

    IF NEW.ID_Competitor IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'ID_Competitor',
            'NULL',
            NEW.ID_Competitor,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.EventDate IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'EventDate',
            'NULL',
            NEW.EventDate,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_eventtable
BEFORE UPDATE ON eventtable
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_Event != OLD.ID_Event THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'ID_Event',
            OLD.ID_Event,
            NEW.ID_Event,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Competition != OLD.ID_Competition THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'ID_Competition',
            OLD.ID_Competition,
            NEW.ID_Competition,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Paralympic != OLD.ID_Paralympic THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'ID_Paralympic',
            OLD.ID_Paralympic,
            NEW.ID_Paralympic,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Competitor != OLD.ID_Competitor THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'ID_Competitor',
            OLD.ID_Competitor,
            NEW.ID_Competitor,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.EventDate != OLD.EventDate THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'eventtable',
            'EventDate',
            OLD.EventDate,
            NEW.EventDate,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_eventtable
BEFORE DELETE ON eventtable
FOR EACH ROW
BEGIN
    IF OLD.ID_Event IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'eventtable',
			'ID_Event',
			OLD.ID_Event,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_Competition IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'eventtable',
			'ID_Competition',
			OLD.ID_Competition,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_Paralympic IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'eventtable',
			'ID_Paralympic',
			OLD.ID_Paralympic,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_Competitor IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'eventtable',
			'ID_Competitor',
			OLD.ID_Competitor,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.EventDate IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'eventtable',
			'EventDate',
			OLD.EventDate,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

-- TRIGGER WORLDRECORD

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_worldrecord
BEFORE INSERT ON worldrecord
FOR EACH ROW
BEGIN

    IF NEW.ID_WorldRecord IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_WorldRecord',
            'NULL',
            NEW.ID_WorldRecord,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;

    IF NEW.RecordDescription IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'RecordDescription',
            'NULL',
            NEW.RecordDescription,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;

	IF NEW.ID_Competition IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_Competition',
            'NULL',
            NEW.ID_Competition,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;

    IF NEW.ID_Country IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_Country',
            'NULL',
            NEW.ID_Country,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Paralympic IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_Paralympic',
            'NULL',
            NEW.ID_Paralympic,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Person IS NOT NULL THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_Person',
            'NULL',
            NEW.ID_Person,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;
//

-- Trigger para UPDATE
CREATE TRIGGER ParalympicGames.before_update_worldrecord
BEFORE UPDATE ON worldrecord
FOR EACH ROW
BEGIN
    -- Verificar cambios en cada campo
    IF NEW.ID_WorldRecord != OLD.ID_WorldRecord THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_WorldRecord',
            OLD.ID_WorldRecord,
            NEW.ID_WorldRecord,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.RecordDescription != OLD.RecordDescription THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'RecordDescription',
            OLD.RecordDescription,
            NEW.RecordDescription,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Competition != OLD.ID_Competition THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_Competition',
            OLD.ID_Competition,
            NEW.ID_Competition,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Country != OLD.ID_Country THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_Country',
            OLD.ID_Country,
            NEW.ID_Country,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
	IF NEW.ID_Paralympic != OLD.ID_Paralympic THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_Paralympic',
            OLD.ID_Paralympic,
            NEW.ID_Paralympic,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
    
    IF NEW.ID_Person != OLD.ID_Person THEN
        INSERT INTO Log (
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            'paralympicgames',
            'worldrecord',
            'ID_Person',
            OLD.ID_Person,
            NEW.ID_Person,
            NOW(),
            NOW(),
            CURRENT_USER()
        );
    END IF;
END;

-- Trigger para ELIMINAR
CREATE TRIGGER ParalympicGames.before_delete_worldrecord
BEFORE DELETE ON worldrecord
FOR EACH ROW
BEGIN
    IF OLD.ID_WorldRecord IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'worldrecord',
			'ID_WorldRecord',
			OLD.ID_WorldRecord,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.RecordDescription IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'worldrecord',
			'RecordDescription',
			OLD.RecordDescription,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_Competition IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'worldrecord',
			'ID_Competition',
			OLD.ID_Competition,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
     IF OLD.ID_Country IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'worldrecord',
			'ID_Country',
			OLD.ID_Country,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
	IF OLD.ID_Paralympic IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'worldrecord',
			'ID_Paralympic',
			OLD.ID_Paralympic,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
    
    IF OLD.ID_Person IS NOT NULL THEN
		INSERT INTO Log (
			schemaName,
			tableName,
			fieldName,
			previousValue,
			currentValue,
			change_date,
			creation_date,
			creation_user
		) VALUES (
			'paralympicgames',
			'worldrecord',
			'ID_Person',
			OLD.ID_Person,
			'NULL',
			NOW(),
			NOW(),
			CURRENT_USER()
		);
	END IF;
END;
//

DELIMITER ;