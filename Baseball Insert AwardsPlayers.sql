Use Baseball
GO
CREATE TABLE AwardsPlayers
(playerID varchar(15) References MasterList(playerID),
awardID varchar(50),
yearID int,
lgID varchar(5),
tie char,
notes varchar(max)



)
GO
BULK
INSERT AwardsPlayers
FROM 'c:\Users\Sean\MLB Data\AwardsPlayers.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

