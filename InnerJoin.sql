-- Employee table
create table Emp(
    Id int,      -- employee id
    Name varchar(10),
    Gender varchar(1),
    DeptID int   -- department id
);

Insert into Emp values (101,'ABC','F',3), (102,'XYZ','M',1), (103,'LMN','F',2),(104,'OPQ','M',null);
Select * from Emp;
Select '';

-- Department table
create table Dept(
    ID int,
    DeptName varchar(10)
);

Insert into Dept values (1,'Biomedical'),(2,'Civil'),(3,'Mechanical');
Select * from Dept;
Select '';

-- Inner join
Select Name,Gender,DeptName 
from Emp as e 
Inner join
Dept as d 
on
e.DeptID=d.ID;

-- Output

-- Name	 Gender	    DeptName
-- ABC	    F	    Mechanical
-- XYZ	    M	    Biomedical
-- LMN	    F	    Civil



