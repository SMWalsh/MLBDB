Use Baseball
GO
CREATE TABLE SeriesPost
(yearID int,
rnd	varchar(15),
teamIDwinner varchar(5),
lgIDwinner varchar(5),
teamIDloser varchar(5),
lgIDloser varchar(5),
wins	int,
losses	int,
ties int

)
GO
BULK
INSERT SeriesPost
FROM 'c:\Users\Sean\MLB Data\SeriesPost.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)

