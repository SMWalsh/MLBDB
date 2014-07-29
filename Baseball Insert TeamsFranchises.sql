Use Baseball
GO
CREATE TABLE TeamsFranchises
(franchID varchar(15) PRIMARY KEY,
franchName varchar(255),
active varchar(255),
NAassoc varchar(255)



)
GO
BULK
INSERT TeamsFranchises
FROM 'c:\Users\Sean\MLB Data\TeamsFranchises.csv'
WITH
(
FIELDTERMINATOR = ',',
FIRSTROW = 2,
ROWTERMINATOR = '\n'
)

