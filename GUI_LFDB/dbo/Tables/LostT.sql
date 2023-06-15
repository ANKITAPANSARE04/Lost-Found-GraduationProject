CREATE TABLE [dbo].[LostT]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [LName] VARCHAR(50) NOT NULL, 
    [Lplace] NCHAR(10) NOT NULL, 
    [LdateTime] DATETIME2 NOT NULL, 
    [LHeight] FLOAT NOT NULL, 
    [LDisc] NVARCHAR(50) NOT NULL, 
    [LEmailAddress] VARCHAR(50) NOT NULL, 
    [LAge] INT NOT NULL
)
