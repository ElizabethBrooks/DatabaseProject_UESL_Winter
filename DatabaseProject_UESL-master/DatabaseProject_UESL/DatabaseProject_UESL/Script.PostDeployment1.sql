﻿/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
MERGE INTO Course AS Target 
USING (VALUES 
        (1, 'MATH 272', 'Calculus 1', 001, 'S. Lewis', '09:00'), 
        (2, 'CS 325', 'Technical Writing', 001, 'L. Harper', '15:00'),
        (3, 'MUS 125', 'Theory 1', 001, 'K. Boldt', '08:00')
) 
AS Source (ClassRecordID, CatalogNumber, ClassName, SectionNumber, Instructor, MeetTime) 
ON Target.ClassRecordID = Source.ClassRecordID 
WHEN NOT MATCHED BY TARGET THEN 
INSERT (CatalogNumber, ClassName, SectionNumber, Instructor, MeetTime) 
VALUES (CatalogNumber, ClassName, SectionNumber, Instructor, MeetTime);


MERGE INTO Student AS Target
USING (VALUES 
    (1, 11111111, 'Don', 'Smith', 'A', 'placeA', 'Fall 2013', 'MATH 272'), 
    (2, 22222222, 'Ron', 'Smooth', 'B', 'placeB', 'Winter 2014', 'CS 325'), 
	(3, 33333333, 'Tom', 'Snake', 'C', 'placeC', 'Spring 2015', 'MUS 125')
)
AS Source (UniqueRecordID, StudentID, FirstName, LastName, LetterGrade, Placement, QuarterOfPlacement, CourseCatalogNumber)
ON Target.UniqueRecordID = Source.UniqueRecordID
WHEN NOT MATCHED BY TARGET THEN
INSERT (StudentID, FirstName, LastName, LetterGrade, Placement, QuarterOfPlacement, CourseCatalogNumber)
VALUES (StudentID, FirstName, LastName, LetterGrade, Placement, QuarterOfPlacement, CourseCatalogNumber);

MERGE INTO Enrollment AS Target
USING (VALUES 
    (1, 1, 1), 
    (2, 1, 2), 
	(3, 2, 3),
	(4, 2, 1),
	(5, 3, 1),
	(6, 3, 2)
)
AS Source (EnrollmentID, CourseID, StudentID)
ON Target.EnrollmentID = Source.EnrollmentID
WHEN NOT MATCHED BY TARGET THEN
INSERT (CourseID, StudentID)
VALUES (CourseID, StudentID);