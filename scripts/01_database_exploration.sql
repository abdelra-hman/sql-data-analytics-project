-- Explore All objects in the Database

Select * from INFORMATION_SCHEMA.TABLES

-- Explore All Columns in Database 
Select * from INFORMATION_SCHEMA.COLUMNS
Where TABLE_NAME  = 'dim_customers'