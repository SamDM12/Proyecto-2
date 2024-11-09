USE ParalympicGames;

ALTER TABLE countryxparalympic
ADD CONSTRAINT ID_CountryCXP
FOREIGN KEY (ID_Country) REFERENCES Country(ID_Country) ON DELETE SET NULL;

ALTER TABLE countryxparalympic
ADD CONSTRAINT ID_ParalympicCXP
FOREIGN KEY (ID_Paralympic) REFERENCES Paralympic(ID_Paralympic) ON DELETE SET NULL;