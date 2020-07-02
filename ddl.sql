-- **Database level:**
-- Display all the database
show databases;

-- Enter a certain database
use student_examination_sys;

-- Create a database
create database student;

-- Create the database of the designated character set
create database student1 character set utf8mb4;

-- Display the creation information fo the database
show create database student1;

-- Revise the codes of the database
show collation like 'gb%';
alter database studnet1 character set gb2313 collate gb2312_chinese_ci;

-- Delete a database
drop database student1;

-- **Table level**
use student;
create table student(
id varchar(6) not null primary key,
name varchar(20) not null,
age int not null,
sex varchar(6) not null
);


-- Revise table name
alter table student rename to student1;

-- Revise the field's data type
alter table student1 modify name varchar(30);

-- Revise field name
alter table student1 change sex gender varchar(6);

-- Add field
alter table student1 add column phone char(11);

-- Delete field
alter table student1 drop column phone;

-- Revise the table's storage engine
show engines;
alter table student1 engine=memory;


create table department(
id int auto_increment not null primary key,
dept_name varchar(20)
);

alter table student1 add column dept int;

alter table student1 add constraint fk_dept_department foreign key(dept) references department(id);


-- Delete the table's foreign key restriant
alter table student1 drop foreign key fk_dept_department;

-- Delete a table
drop table student1;