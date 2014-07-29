Use Baseball
GO
CREATE TABLE SchoolsPlayers
(playerID varchar(15) references MasterList(playerID),
schoolID varchar(50) references Schools(schoolID),
yearMin int,
yearMax int



)
GO
BULK
INSERT SchoolsPlayers
FROM 'c:\Users\Sean\MLB Data\SchoolsPlayers.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

