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
SET IDENTITY_INSERT [dbo].[Shippers] ON 

INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (1, N'Speedy Express', N'(503) 555-9831')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (2, N'United Package', N'(503) 555-3199')
INSERT [dbo].[Shippers] ([ShipperID], [CompanyName], [Phone]) VALUES (3, N'Federal Shipping', N'(503) 555-9931')
SET IDENTITY_INSERT [dbo].[Shippers] OFF
