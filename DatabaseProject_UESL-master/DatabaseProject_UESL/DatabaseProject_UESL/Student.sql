﻿CREATE TABLE [dbo].[Student]
(
	[UniqueRecordID] INT IDENTITY (1, 1) NOT NULL,
	[StudentID] INT Null,
    [FirstName] NVARCHAR (50) NULL,
    [LastName] NVARCHAR (100) NULL,
    [LetterGrade] NVARCHAR (50) NULL,
	[Placement] NVARCHAR (50) NULL,
	[QuarterOfPlacement] NVARCHAR (50) NULL,
	[CourseCatalogNumber] NVARCHAR (50) NULL,
    [SEVIS] NVARCHAR(50) NULL, 
    [I-20 Expiration] DATE NULL, 
    [gender] NCHAR(5) NULL, 
    [DOB] DATE NULL, 
    [Citezenship] NVARCHAR(50) NULL, 
    [School/Agent] NVARCHAR(100) NULL, 
    [Agent Email] NVARCHAR(100) NULL, 
    [Transfer?] NCHAR(5) NULL, 
    [Telephone] NVARCHAR(50) NULL, 
    [Email] NVARCHAR(100) NULL, 
    [CWU Email] NVARCHAR(100) NULL, 
    [CWU Housing] NCHAR(10) NULL, 
    [CWU Address] NVARCHAR(MAX) NULL, 
    [Home Address] NVARCHAR(MAX) NULL, 
    [Emergency Contact] NVARCHAR(50) NULL, 
    [Emergency Contact Relationship] NVARCHAR(50) NULL, 
    [Emergency Contact Phone] NVARCHAR(50) NULL, 
    [Emergency Contact Email] NCHAR(10) NULL, 
    [Conditional Admission] NCHAR(10) NULL, 
    [Status] NVARCHAR(50) NULL, 
    [Mission Student ID] INT NULL, 
    PRIMARY KEY CLUSTERED ([UniqueRecordID] ASC)
)