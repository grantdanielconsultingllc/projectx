-- chapter 5

-- Write a query to get the names of products ordered by name.
Select productname
From product
Order by productname;

-- copy the previous SQL and order by just product name, descending.
Select productname
From product
Order by productname Desc;

-- Write a query to get employee birthdate, first and last name ordered by birth date.
Select birthdate, firstname, lastname 
From employee
Order by birthdate;

-- copy the previous SQL and order by birth date, descending.
Select birthdate, firstname, lastname 
From employee
Order by birthdate Desc;

-- Write a query to order all orderheader by order date, ascending.
Select orderdate, orderid, employeeid, shipname
From orderheader
Order By orderdate ASC


-- copy the previous SQL and order by order date, then by employee, ascending.
Select orderdate, orderid, employeeid, shipname
From orderheader
Order By orderdate Asc,
			employeeid Asc;

-- Write a query to get the first name, last name, and salary of employees ordered by salary highest first.
Select firstname, lastname, salary
From employee
Order By salary Desc;

-- Write a query to get the product name, unit price, and units in stock ordered by units in stock highest to lowest and then unit price lowest to highest.
Select productname, unitprice, unitsinstock
From product
Order By unitsinstock Desc,
			unitprice Asc;
			
-- Write a query to get the name and unit price of the ten most expensive products.
Select unitprice
From product
Order By unitprice Desc
Limit 10;

-- copy previous SQL, change it to get the name and unit price of the ten least expensive products.
Select unitprice
From product
Order By unitprice Asc
Limit 10;