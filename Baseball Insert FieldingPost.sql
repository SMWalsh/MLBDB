Use Baseball
GO
CREATE TABLE FieldingPost
(playerID varchar(15) references masterList(playerID),
	yearID int,
	teamID varchar(5),
	lgID	varchar(4),
	rounds varchar(5),
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
	




)
GO
BULK
INSERT FieldingPost
FROM 'c:\Users\Sean\MLB Data\FieldingPost.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

