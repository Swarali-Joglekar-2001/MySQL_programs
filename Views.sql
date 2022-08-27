-- create a table
CREATE TABLE Customers (
  CustomerName varchar(10),
  ContactNumber int,
  Country varchar(10)
 );

Insert into Customers values ("abc",897,"india"),("xyz",789,"china"),("dfg",356,"japan");
-- select * from Customers;

Create view viewCust AS
select CustomerName,ContactNumber
from Customers
where Country="japan";

select * from viewCust;

Create or replace view viewCust AS
select CustomerName,ContactNumber,Country
from Customers
where Country="japan";

select * from viewCust;
