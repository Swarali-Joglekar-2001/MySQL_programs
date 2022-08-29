-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name VARCHAR(30) NOT NULL,
  gender CHAR(1) NOT NULL
);

set autocommit=0;
-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 'M');
INSERT INTO students VALUES (2, 'Joanna', 'F');
-- commit;
rollback;
select * from students;
INSERT INTO students VALUES(3,'Angela','F');
select * from students;

-- Output
-- id	name	gender
-- 3	Angela	F
