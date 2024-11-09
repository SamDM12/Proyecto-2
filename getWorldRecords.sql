USE ParalympicGames;
-- DROP PROCEDURE GetWorldRecords;

DELIMITER //

CREATE PROCEDURE GetWorldRecords()
BEGIN
    SELECT 
        WolrdRecord.ID_WorldRecord,
        WolrdRecord.RecordDescription,
        CONCAT(Person.FirstName, ' ', IFNULL(Person.SecondName, ''), ' ', Person.FirstLastName, ' ', IFNULL(Person.SecondLastName, '')) AS FullName,
        Country.Country_Name,
        paralympic.PARALYMPICS_YEAR AS ParalympicYear,
        Competition.CompetitionName AS CompetitionName
    FROM 
        WolrdRecord
    LEFT JOIN 
        Person ON WolrdRecord.ID_Person = Person.ID_Person
    LEFT JOIN 
        Country ON WolrdRecord.ID_Country = Country.ID_Country
    LEFT JOIN 
        Paralympic ON WolrdRecord.ID_Paralympic = Paralympic.ID_Paralympic
	LEFT JOIN 
        Competition ON WolrdRecord.ID_Competition = Competition.ID_Competition;
END //

DELIMITER ;
