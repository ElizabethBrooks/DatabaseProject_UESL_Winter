#PROJECT OVERVIEW

##Team Fantastic 4+1

Elizabeth Brooks, Minji Chysay-Park, Ben Garza, Jacob Kostenick

--------------------------------------------------------------------------------------------------------------------------------------

SUMMARY 

The University English as a Second Language (UESL) program acts as an intermediary between Central Washington University (CWU) international students and the registrar. The department is tasked with gathering student information; such as place of origin, visa records and class enrollment information. For example, once a student has chosen their courses, then a course plan is sent from UESL to the registrar; this then allows the student to enroll in classes for the quarter.

As of now, the UESL department keeps all of their student’s information in multiple Microsoft Excel spread sheets (see appendix, problem example). They then print out the class information on a separate sheet and give a physical copy to the registrar. To simplify this processes, using Microsoft SQL Server Express and the C# programming language, we will develop a portable database that easily exports to Excel. The interface will be available as a user friendly web-application, developed using model view controller (MVC) and the ASP.NET framework. This will allow the UESL department to query their database of students based on a variety of search parameters, including; student name, CWU ID number, class, or professor.

--------------------------------------------------------------------------------------------------------------------------------------

CLIENT AND OTHER STAKEHOLDERS

Currently, the UESL director and her secretary are the only ones working with the CWU international students and maintaining the data in Microsoft Excel spread sheets. This is especially problematic at the start of new quarters, when the department is required to enroll all of their international students with in a two-day period. This workload is difficult to manage in such a short amount of time each quarter.

--------------------------------------------------------------------------------------------------------------------------------------

SCOPE

To meet the needs of the UESL department, we plan to make a dynamic program utilizing C#, Microsoft SQL Server Express, and the Microsoft .NET framework. We are utilizing the C# programing language to develop the database and functions for exporting Microsoft Excel files of stored student and course data. The use of Microsoft’s SQL Server Express, a free program, will improve the portability of the database. This makes it perfect for developing a compact program that utilizes the necessary database functions while increasing ease of use-ability. Finally, access of the data stored in the database will be achieved through the use of a model view controller (MVC) web-application and Microsoft’s Entity Framework.
