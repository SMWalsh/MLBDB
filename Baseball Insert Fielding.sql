Use Baseball
GO
CREATE TABLE Fielding
(playerID varchar(15) references masterList(playerID),
	yearID int,
	stint int,
	teamID varchar(5),	
	lgID	varchar(4),
	POS	varchar(5),
	G  int,
	GS int,
	InnOuts int,
	PO	int,
	A	int,
	E	int,
	DP	int,
	PB	int,
	WP	int,
	SB	int,
	CS	int,
	ZR  int




)
GO
BULK
INSERT Fielding
FROM 'c:\Users\Sean\MLB Data\Fielding.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

