DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_competitorXcompetition
BEFORE INSERT ON competitorXcompetition
FOR EACH ROW
BEGIN

    IF NEW.ID_COMPETITORXCOMPETITION IS NOT NULL THEN
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
    -- Verificar cambios en cada campo
    IF NEW.ID_COMPETITORXCOMPETITION != OLD.ID_COMPETITORXCOMPETITION THEN
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
//

DELIMITER ;