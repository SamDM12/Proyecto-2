USE ParalympicGames;
-- DESCRIBE Person;

ALTER TABLE coach
MODIFY COLUMN ID_PERSON INT NULL;  -- Cambiar la columna para que acepte NULL

USE ParalympicGames;
-- DESCRIBE Person;

ALTER TABLE coach
MODIFY COLUMN ID_TEAM INT NULL;  -- Cambiar la columna para que acepte NULL