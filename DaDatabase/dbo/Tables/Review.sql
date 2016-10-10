CREATE TABLE [dbo].Review
(
	[Product ID ] INT IDENTITY (1,1) NOT NULL PRIMARY KEY, 
	[ID] INT NOT NULL,
    [Stars] INT NULL, 
    [Body] TEXT NULL, 
    [Author] VARCHAR(50) NULL
)