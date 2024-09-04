Create table Student
(
Rollno int unique not null,
Name varchar(50) not null,
Branch varchar(50) not null,
primary key(Rollno)
);

select * from Student; 

insert into Student values(1,"Jay","Computer Science");
insert into Student values(2,"Suhani","Electronic and Com");
insert into Student values(3,"Kriti","Electronic and Com");


create table Exam

(RollNo int not null,
S_code varchar(10) not null,
Marks int not null,
P_code varchar(5) not null,
foreign key(RollNo)
references student(RollNo)
);

insert into Exam values(1,'CS11',50,'CS');
insert into Exam values(1,'CS12',60,'CS');
insert into Exam values(2,'EC101',66,'EC');
insert into Exam values(2,'EC102',70,'EC');
insert into Exam values(3,'EC101',45,'EC');
insert into Exam values(3,'EC102',50,'EC');

select * from Exam;