USE ParalympicGames;
-- DESCRIBE Person;

ALTER TABLE person
MODIFY COLUMN id_Picture INT NULL;  -- Cambiar la columna para que acepte NULL

ALTER TABLE person
MODIFY COLUMN id_Country INT NULL;  -- Cambiar la columna para que acepte NULL

ALTER TABLE person
MODIFY COLUMN id_gendertype INT NULL;  -- Cambiar la columna para que acepte NULL

ALTER TABLE person
MODIFY COLUMN id_identificationtype INT NULL;  -- Cambiar la columna para que acepte NULL