-- Inner join, Outer join, Cross join
-- Outer join - 1. Left join or left outer join, 2.Right join or right outer join, 3.Full join or full outer join

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

Insert into Dept values (1,'Biomedical'),(2,'Civil'),(3,'Mechanical'),(4,'Aeronautical');
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


--Left join
Select Name, Gender, DeptName
from Emp as e 
LEFT OUTER join
Dept as d 
ON e.DeptID=d.ID;

--Output
-- Name	Gender	DeptName
-- ABC	 F	    Mechanical
-- XYZ	 M	    Biomedical
-- LMN	 F	    Civil
-- OPQ	 M	    NULL


-- Right join
Select Name, Gender, DeptName
from Emp as e 
Right join
Dept as d 
ON e.DeptID=d.ID;

--Output
-- Name	Gender	DeptName
-- XYZ	M	    Biomedical
-- LMN	F	    Civil
-- ABC	F	    Mechanical
-- NULL	NULL	Aeronautical


-- Full join- returns all rows from left and right tables, including the non-matching rows


-- Cross join- cartesian product of two tables involved in the join 
-- e.g. 10 rows in one table and 4 rows in another table, then 40 rows after cross join
-- Cross join shouldn't have ON clause






