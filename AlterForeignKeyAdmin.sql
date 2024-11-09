USE ParalympicGames;

ALTER TABLE administrator
DROP FOREIGN KEY administrator_ibfk_1;

ALTER TABLE administrator
ADD CONSTRAINT ID_PersonAdmin
FOREIGN KEY (ID_Person) REFERENCES Person(ID_Person) ON DELETE SET NULL;