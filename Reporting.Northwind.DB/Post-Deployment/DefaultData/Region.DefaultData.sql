/*
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

USE [Northwind]

INSERT [dbo].[Region] ([RegionID], [RegionDescription]) VALUES (1, N'Eastern                                           ')
INSERT [dbo].[Region] ([RegionID], [RegionDescription]) VALUES (2, N'Western                                           ')
INSERT [dbo].[Region] ([RegionID], [RegionDescription]) VALUES (3, N'Northern                                          ')
INSERT [dbo].[Region] ([RegionID], [RegionDescription]) VALUES (4, N'Southern                                          ')
