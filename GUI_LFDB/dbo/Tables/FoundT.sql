CREATE TABLE [dbo].[FoundT]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FName] NCHAR(10) NOT NULL, 
    [Fplace] NCHAR(10) NOT NULL, 
    [FdateTime] DATETIME2 NOT NULL, 
    [FHeight] NCHAR(10) NOT NULL, 
    [FDisc] NVARCHAR(50) NOT NULL, 
    [FEmailAddress] VARCHAR(50) NOT NULL, 
    [FAge] INT NOT NULL
)
