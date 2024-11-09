USE ParalympicGames;
-- DESCRIBE Person;

ALTER TABLE paralympicxcompetition
MODIFY COLUMN ID_COMPETITION INT NULL;  -- Cambiar la columna para que acepte NULL

ALTER TABLE paralympicxcompetition
MODIFY COLUMN ID_PARALYMPIC INT NULL;  -- Cambiar la columna para que acepte NULL