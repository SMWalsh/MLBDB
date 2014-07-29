Use Baseball
GO
CREATE TABLE AllstarFull
(playerID varchar(15) NOT NULL REFERENCES MasterList(playerID),
yearID INT,
gameNum int,
gameID varchar(max),
teamID varchar(max),	
lgID varchar(max),
GP int,
startingPos int
)
GO
BULK
INSERT AllstarFull
FROM 'c:\Users\Sean\MLB Data\AllstarFull.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

