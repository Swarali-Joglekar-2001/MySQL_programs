create table Customers
(
    cust_id int,
    age int,
    name varchar(10)
);

delimiter //
create trigger age_verify
before insert on Customers
for each row 
if new.age < 0 then set new.age=0;
end if; //

insert into Customers values (111, 20, "xyz"), (222, -40,"pqr");

select * from Customers;

#If you use a MySQL client program to define a stored procedure that contains semicolon characters, 
#the MySQL client program will not treat the whole stored procedure as a single statement, but many statements.
#Therefore, you must redefine the delimiter temporarily so that you can pass the whole stored procedure to the server as a single statement.
#DELIMITER delimiter_character