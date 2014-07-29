Use Baseball
GO
CREATE TABLE BattingPost
(yearID int,
rounds varchar(max),
playerID varchar(15) REFERENCES MasterList(playerID),
teamID varchar(5),
lgID varchar(5),
G int,
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




)
GO
BULK
INSERT BattingPost
FROM 'c:\Users\Sean\MLB Data\BattingPost.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

