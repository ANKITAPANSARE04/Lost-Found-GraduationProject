﻿/*
Deployment script for LFDB

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "LFDB"
:setvar DefaultFilePrefix "LFDB"
:setvar DefaultDataPath "C:\Users\ankit\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB"
:setvar DefaultLogPath "C:\Users\ankit\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Creating [dbo].[LostT]...';


GO
CREATE TABLE [dbo].[LostT] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [LName]         VARCHAR (50)  NOT NULL,
    [Lplace]        NCHAR (10)    NOT NULL,
    [LdateTime]     DATETIME2 (7) NOT NULL,
    [LHeight]       FLOAT (53)    NOT NULL,
    [LDisc]         NVARCHAR (50) NOT NULL,
    [LEmailAddress] VARCHAR (50)  NOT NULL,
    [LAge]          INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Update complete.';


GO