--question 2
create database labfinal1
use labfinal1
create table lab(labid int)
drop table lab
drop database labfinal1
--question 3
create database labfinal
use labfinal
 create table student(studentid int not null primary key,studentname varchar(50)not null,deparment varchar(50)not null,semester int not null, cgpa float not null,courseid  int  not  null unique,teacherid int not null unique)
 create table courses(courseid int   foreign key references student(studentid)    , coursename varchar(50) not null unique,credithrs float not null )
 create table teachers(teacherid int primary key, teachername varchar(50) not null, coursename varchar(50) foreign key references courses(coursename))

 insert into student values(1,'furqan','cs',4,3.52,1,1),(2,'hadi','cs',4,3.62,2,2),(3,'jameel','cs',4,3.2,3,3),(4,'ali','cs',4,3.22,4,4),(5,'vanaya','cs',4,3.52,5,5)
 insert into courses values(1,'math',3),(2,'pak',2),(3,'dld',3),(4,'dbs',2),(5,'fyp',6)
 insert into teachers values(1,'tufail','math'),(2,'asad','pak'),(3,'nadeem','dld'),(4,'benish','dbs'),(5,'komal','fyp')
 --question 4
 select studentname from  student  
 select teachername,coursename from  teachers
 select max(credithrs) from courses
 --question5
  drop table student
  drop table courses
  drop table teachers
  --question9
   create table student(studentid int ,studentname varchar(50)not null,deparment varchar(50)not null,semester int not null, cgpa float not null,courseid  int,teacherid int)
 create table courses(courseid int, coursename varchar(50) not null unique,credithrs float not null,studentid int )
 create table teachers(teacherid int , teachername varchar(50) not null, coursename varchar(50) )

  select * from student inner join courses on student.studentid = courses.studentid;
--left outer join
select * from student left join courses on student.studentid = courses.studentid;
--right join
select * from student right join courses on student.studentid = courses.studentid;
--full outer join
select * from student full outer join courses on student.studentid = courses.studentid
--question7
