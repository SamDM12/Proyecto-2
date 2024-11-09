DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_competition
BEFORE INSERT ON competition
FOR EACH ROW
BEGIN

    IF NEW.ID_COMPETITION IS NOT NULL THEN
        INSERT INTO Log (
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
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
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
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
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
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
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
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
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
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
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
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
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
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
            logId,
            schemaName,
            tableName,
            fieldName,
            previousValue,
            currentValue,
            change_date,
            creation_date,
            creation_user
        ) VALUES (
            (SELECT COALESCE(MAX(logId), 0) + 1 FROM Log),
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
//

DELIMITER ;