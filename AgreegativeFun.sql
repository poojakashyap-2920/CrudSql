-- choose  database --
use database EmployeeDB;

-- select table all record --
select * from  employeedetails;

-- Aggegative function --

-- sum(column name) --
select sum(empsalary) from employeedetails where empdept = 'HR';

-- avg(column name) --
select avg(empsalary) from employeedetails ;

-- count --
select empdept ,count(empsalary) from employeedetails  group by empdept;
select count(empsalary) from employeedetails;

-- max(column name) --
select max(empsalary) from employeedetails;

-- min --
select min(empsalary) from employeedetails;


select * from employeedetails;

