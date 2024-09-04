/*
18.Write a SQL statement that displays all the information about all
salespeople 
*/

create table salespeople
(
Salesman_id int unique,
Name_ varchar(25),
city varchar(25),
commission float
);

insert into salespeople values(5001,'James Hoog','New York',0.15);
insert into salespeople values(5002,'Nail Knite','Paris',0.13);
insert into salespeople values(5005,'Pit Alex','London',0.11);
insert into salespeople values(5006,'Mc Lyon','Paris',0.14);
insert into salespeople values(5007,'Paul Adam','Rome',0.13);
insert into salespeople values(5003,'Lausen Hen','San Jose',0.12);

select * from salespeople;

/*
19.From the following table, write a SQL query to find orders that are
delivered by a salesperson with ID. 5001. Return ord_no, ord_date,
purch_amt.
*/

create table orders
(
ord_no int unique,
purch_amt float,
ord_date date,
customer_id int,
salesman_id int
);

insert into orders values(70001,150.5,'2012-10-05',3005,5002);
insert into orders values(70009,270.65,'2012-09-10',3001,5005);
insert into orders values(70002,65.26,'2012-10-05',3002,5001);
insert into orders values(70004,110.5,'2012-08-17',3009,5003);
insert into orders values(70007,948.5,'2012-09-10',3005,5002);
insert into orders values(70005,2400.6,'2012-07-27',3007,5001);
insert into orders values(70008,5760,'2012-09-10',3002,5001);
insert into orders values(70010,1983.43,'2012-10-10',3004,5006);
insert into orders values(70003,2480.4,'2012-10-10',3009,5003);
insert into orders values(70012,250.45,'2012-06-27',3008,5002);
insert into orders values(70011,75.29,'2012-08-17',3003,5007);
insert into orders values(70013,3045.6,'2012-04-25',3002,5001);

select * from orders;

select ord_no,ord_date,purch_amt from orders where salesman_id = 5001;