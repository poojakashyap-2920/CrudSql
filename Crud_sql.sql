--create databse
CREATE DATABASE EmployeeDB;

-- create table
create table EmployeeDetails(id int primary key identity(1,1),empname varchar(40),empdept varchar(40),empsalary bigint,location varchar(40));

-- describe table structure
exec sp_help EmployeeDetails;

--insert table values
insert into employeedetails(empname,empdept,empsalary,location)values('john','HR',30000,'hyd');
insert into employeedetails(empname,empdept,empsalary,location)values('smith','Manager',40000,'Banglore');
insert into employeedetails(empname,empdept,empsalary,location)values('warden','salesmen',50000,'Pune');
insert into employeedetails(empname,empdept,empsalary,location)values('puja','Hr',50000,'Pune');

--show all record
select * from EmployeeDetails;

--update record base on id
update EmployeeDetails set empname = 'scott' ,empdept='clerk',empsalary=6000,location='mumbai' where id =4;

-- Delete Record from EmployeesDetails
delete from EmployeeDetails where id = 5;





