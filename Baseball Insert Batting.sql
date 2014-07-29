Use Baseball
GO
CREATE TABLE Batting
(playerID varchar(15) REFERENCES MasterList(playerID),
yearID int,
stint int,
teamID varchar(5),
lgID varchar(5),
G int,
G_batting int,
AB int,	
R int,
H int,
doubles int,
triples int,
HR int,
RBI int,
SB int,
CS int,
BB int,
SO int,
IBB int,
HBP int,
SH int,
SF int,
GIDP int,
G_old int



)
GO
BULK
INSERT Batting
FROM 'c:\Users\Sean\MLB Data\Batting.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

