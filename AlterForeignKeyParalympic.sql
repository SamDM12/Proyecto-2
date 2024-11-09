USE ParalympicGames;

ALTER TABLE paralympic
ADD CONSTRAINT ID_CountryParalympic
FOREIGN KEY (ID_Country) REFERENCES Country(ID_Country) ON DELETE SET NULL;