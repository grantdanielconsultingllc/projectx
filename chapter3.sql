-- select all rows from customer table
select *
from customer;

-- select all rows from employee table
select *
from employee;


-- select all rows from orderdetail
select *
from orderdetail;

-- select all rows and 2 columns from customer table
select customerId, CompanyName
from customer;

-- select all rows and 3 columns from employee table
select FirstName, LastName, BirthDate
from employee;


-- select all rows and last 2 columns from orderdetail
select Quantity, Discount, UNItPRICE
from orderdetail;

--chapter 3

-- write sql to return all employees, only select columns – FirstName, LastName, City, and Region
Select firstname, lastname, city, region
From employee;

-- copy the previous sql, change it to alias the FirstName to “First Name”, LastName to “Last Name”.
Select firstname As "First Name", lastname As "Last Name", city, region
From employee;

-- select all rows from the customer table, include 4 columns, alias all 4 columns
Select companyname As "Company Name", contacttitle As "Title", contactname As "Contact Name", postalcode as "Postal Code"
From customer;

-- select all rows from the Employee table, only include the Region column.
Select region
From employee;

-- copy the previous sql, change it to return the distinct regions.
Select Distinct region
From employee;


-- select all rows from the Orders table, select columns OrderId, CustomerId, and OrderDate
Select orderId, customerId, orderDate
From orderheader;

-- copy the previous sql, change it to return distinct OrderDate values
Select Distinct orderDate
From orderheader;

-- copy the previous sql, change it to return the number of orders associated with each distinct order date
Select Distinct orderDate, count(*)
From orderheader
Group By orderDate;

-- find a table that has some null values in a column; select all the rows and columns, count the number rows.
Select *
From customer; -- 93 rows

-- copy the previous sql, change it to only include a nullable column, distinct the column value; how many rows are returned?
Select distinct region, Count(*)
From customer
Group By region;