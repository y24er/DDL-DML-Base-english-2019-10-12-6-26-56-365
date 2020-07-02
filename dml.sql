use student;
create table student(
id varchar(6) not null primary key,
name varchar(20) not null,
age int not null,
sex varchar(6) not null
);

-- Insert record
insert into student values
('001','Colin',19,'male'),
('002','Emma',20,'female'),
('003','Haha',18,'female');

-- Revise record
update student set age=17 where id='003';

--  Delete record
delete from student where id='003';

-- Search record
select * from student;