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

IF ('$(DeployDefaultData)' = 'True')
BEGIN
    -- Deploy default data
    :r .\DefaultData\Categories.DefaultData.sql
    :r .\DefaultData\Customers.DefaultData.sql
    :r .\DefaultData\Employees.DefaultData.sql
    :r .\DefaultData\Region.DefaultData.sql
    :r .\DefaultData\Shippers.DefaultData.sql
    :r .\DefaultData\Suppliers.DefaultData.sql
    
    :r .\DefaultData\Orders.DefaultData.sql
    :r .\DefaultData\Products.DefaultData.sql
    :r .\DefaultData\Territories.DefaultData.sql
    
    :r .\DefaultData\EmployeeTerritories.DefaultData.sql
    :r .\DefaultData\Order_Details.DefaultData.sql
END
