Use Baseball
GO
CREATE TABLE TeamsHalf
(yearID int,
lgID varchar(15),
teamID varchar(15),
Half int,
divID char,
DivWin char,
Ranks int,
G	int,
W	int,
L	int
)
GO
BULK
INSERT TeamsHalf
FROM 'c:\Users\Sean\MLB Data\TeamsHalf.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

