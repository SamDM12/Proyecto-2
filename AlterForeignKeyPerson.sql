USE ParalympicGames;


ALTER TABLE Person
ADD CONSTRAINT ID_Picture
FOREIGN KEY (ID_Picture) REFERENCES Picture(ID_Picture) ON DELETE SET NULL;

USE ParalympicGames;


ALTER TABLE Person
ADD CONSTRAINT ID_Country
FOREIGN KEY (ID_Country) REFERENCES Country(ID_Country) ON DELETE SET NULL;

USE ParalympicGames;


ALTER TABLE Person
ADD CONSTRAINT ID_GenderType
FOREIGN KEY (ID_GenderType) REFERENCES GenderType(ID_GenderType) ON DELETE SET NULL;

USE ParalympicGames;


ALTER TABLE Person
ADD CONSTRAINT ID_IdentificationType
FOREIGN KEY (ID_IdentificationType) REFERENCES IdentificationType(ID_IdentificationType) ON DELETE SET NULL;