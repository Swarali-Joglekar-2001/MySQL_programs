create table players(
 name varchar(10),
 country varchar(10),
 goals int
);

insert into players values ("abc","India",5),("def","China",6),("jkl","Japan",7);

select * from players;

delimiter &&
create procedure top_players()
begin
select * from players where goals>=6;
end &&
delimiter;

call top_players();


--delimiter //
--create procedure sp_sortBySalary(IN var int)   -- using parameter
--begin
--select name, age, salary from emp_details
--order by salary desc limit var;
--end //
--delimiter ;

--call sp_sortBySalary(3);

