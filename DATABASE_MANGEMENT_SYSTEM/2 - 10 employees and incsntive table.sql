-- Table Name :- Employee

drop table emp;
create table EMPLOYEE
(Employee_id int not null unique,
First_name varchar(25) not null,
Last_name varchar(25) not null,
Salary int,
Joining_date datetime,
Department varchar(25)
);

insert into employee values(1,'John','Abraham',1000000,'2013-01-01 12:00:00','Banking');
insert into employee values(2,'Micheal','Clarke',800000,'2013-01-01 12:00:00','Insurance');
insert into employee values(3,'Roy','Thomas',700000,'2013-02-01 12:00:00','Banking');
insert into employee values(4,'Tom','jose',600000,'2013-02-01 12:00:00','Insurance');
insert into employee values(5,'Jerry','Pinto',650000,'2013-02-01 12:00:00','Insurance');
insert into employee values(6,'Philip','Mathew',750000,'2013-01-01 12:00:00','services');
insert into employee values(7,'TestName1','123',650000,'2013-01-01 12:00:00','Services');
insert into employee values(8,'TestName2','Lname%',600000,'2013-02-01 12:00:00','Insurance');

select * from employee; 

-- Table Name :- Incentive

create table incentive
(Emplotee_ref_id int not null,
Incentive_date date,
Incentive_amount int
);

insert into incentive values(1,'2013-02-13',5000);
insert into incentive values(2,'2013-02-13',3000);
insert into incentive values(3,'2013-02-13',4000);
insert into incentive values(1,'2013-01-13',4500);
insert into incentive values(2,'2013-01-13',3500);

select * from incentive;

-- 3. Get First_Name from employee table using Tom name “Employee Name”.
select First_name from employee;

-- 4. Get FIRST_NAME, Joining Date, and Salary from employee table.
select First_name,Joining_date,Salary from employee;

-- 5. Get all employee details from the employee table order by First_Name
select * from employee order by First_name asc; 

-- 5. Get all employee details from the employee table order by Salary descending
select * from employee order by Salary desc;

-- 6. Get employee details from employee table whose first name contains ‘J’.
select * from employee where First_name like '%J%';

-- 7. Get department wise maximum salary from employee table order by salary ascending?
select * from employee;

select Department,max(salary) as max_salary from employee group by Department order by max_salary asc;


