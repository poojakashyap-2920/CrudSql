-- create table1 name of employee-- 
create table Employee (empid int primary key identity(1,1),firstname varchar(40),lastname varchar(40),salary bigint);

-- insert value on employee table --
insert into Employee(firstname,lastname,salary)values('smith','kashyap',40000);
insert into Employee(firstname,lastname,salary)values('scott','sharma',50000);
insert into Employee(firstname,lastname,salary)values('wardern','verma',60000);
insert into Employee(firstname,lastname,salary)values('john','nayak',70000);
insert into Employee(firstname,lastname,salary)values('jolly','dubey',80000);


select * from Employee;

-- create  table2 name of department 
create table department(deptid int primary key  identity(1,1),deptname varchar(40),location varchar(40), managerid  int , Foreign Key(managerid) references  Employee(empid));
exec sp_help department;
-- value inserted in department --
insert  into department(deptname,location,managerid)values('HR','hyd',1);
insert  into department(deptname,location,managerid)values('manager','Banglore',3);
insert  into department(deptname,location,managerid)values('clerk','mumbai',2);
insert  into department(deptname,location,managerid)values('manager','kolkata',4);
insert  into department(deptname,location,managerid)values('salesmen','pune',2);
select * from department;

-- inner join on  two table employee table or department table  --
select * from Employee e 
inner join
department d
on
e.empid = d.deptid;

-- left join 
select * from Employee e 
left join
department d
on
e.empid = d.deptid;

-- right join --
select * from Employee e 
right join
department d
on
e.empid = d.deptid;

-- full outer join --
select * from Employee e 
full outer join
department d
on
e.empid = d.deptid;

-- cross join --
select * from Employee e
cross join
department d

-- self join --
select e.firstname ,e.lastname from  Employee e , Employee e1
 where e.empid  =  e1.empid and e.firstname = 'smith';

 --select * from Employee;



