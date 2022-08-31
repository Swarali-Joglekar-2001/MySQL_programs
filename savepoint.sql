create table stu(
 name varchar(10),
 id int,
 age int
);

start transaction;

insert into stu values("xyz",111,21);

savepoint upd;
update stu set name="abc" where id=111;
rollback to savepoint upd;
select * from stu;

--- name	id	 age
--- xyz	    111	 21

