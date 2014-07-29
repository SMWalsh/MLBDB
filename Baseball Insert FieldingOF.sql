Use Baseball
GO
CREATE TABLE FieldingOF
(playerID varchar(15) references MasterList(playerID),
yearID int,
stint int,
Glf int,
Gcf	int,
Grf int



)
GO
BULK
INSERT FieldingOF
FROM 'c:\Users\Sean\MLB Data\FieldingOF.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

