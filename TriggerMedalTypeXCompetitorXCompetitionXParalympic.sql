DELIMITER //

-- Trigger para INSERT
CREATE TRIGGER ParalympicGames.before_insert_medaltypeXcompetitorXcompetitionXparalympic
BEFORE INSERT ON medaltypeXcompetitorXcompetitionXparalympic
FOR EACH ROW
BEGIN
    -- Insertar registro para nuevo coach
    IF NEW.ID_MedalTypeXcompetitorXCompetitionXParalympic IS NOT NULL THEN
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
//

DELIMITER ;