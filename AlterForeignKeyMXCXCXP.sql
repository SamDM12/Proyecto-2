USE ParalympicGames;

ALTER TABLE medaltypexcompetitorxcompetitionxparalympic
DROP FOREIGN KEY medaltypexcompetitorxcompetitionxparalympic_ibfk_1;

ALTER TABLE medaltypexcompetitorxcompetitionxparalympic
ADD CONSTRAINT ID_MedalTypeMXCXCXP
FOREIGN KEY (ID_MedalType) REFERENCES medaltype(ID_MedalType) ON DELETE SET NULL;

ALTER TABLE medaltypexcompetitorxcompetitionxparalympic
DROP FOREIGN KEY medaltypexcompetitorxcompetitionxparalympic_ibfk_2;

ALTER TABLE medaltypexcompetitorxcompetitionxparalympic
ADD CONSTRAINT ID_CompetitorMXCXCXP
FOREIGN KEY (ID_Competitor) REFERENCES competitor(ID_Competitor) ON DELETE SET NULL;

ALTER TABLE medaltypexcompetitorxcompetitionxparalympic
DROP FOREIGN KEY medaltypexcompetitorxcompetitionxparalympic_ibfk_3;

ALTER TABLE medaltypexcompetitorxcompetitionxparalympic
ADD CONSTRAINT ID_CompetitionMXCXCXP
FOREIGN KEY (ID_Competition) REFERENCES competition(ID_Competition) ON DELETE SET NULL;

ALTER TABLE medaltypexcompetitorxcompetitionxparalympic
DROP FOREIGN KEY medaltypexcompetitorxcompetitionxparalympic_ibfk_4;

ALTER TABLE medaltypexcompetitorxcompetitionxparalympic
ADD CONSTRAINT ID_ParalympicMXCXCXP
FOREIGN KEY (ID_Paralympic) REFERENCES paralympic(ID_Paralympic) ON DELETE SET NULL;