var tabelname = 

Use Baseball
GO
CREATE TABLE AllstarFull
(playerID varchar(20),
yearID date,
gameNum int,
gameID varchar(20),
teamID varchar(5),	
lgID varchar(2),
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

--WHERE yearID = '2013-01-01'