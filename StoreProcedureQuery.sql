select * from employees;
 -- exec sp_helptext spgetval;

-- 1.based on id and name fetch all value
create proc spgetval  
@id int,  
@name varchar(40)  
as  
begin  
select * from employees where id =@id or name = @name;  
end

-- exec sp_helptext spinsertv;
-- 2.insert new record --
create proc spinsertv  
@id int ,  
@name varchar(40),  
@age int,  
@dept varchar(40),  
@salary bigint  
as  
begin  
insert into employees (id,name,age,dept,salary)values(@id,@name,@age,@dept,@salary);  
end

-- exec sp_helptext spdelete1;
-- 3.based on id and name delete record
create proc spdelete1  
@id int,  
@name varchar(40)  
as  
begin  
delete from employees where id = @id or name =@name;  
end;

 -- exec sp_helptext spupdate1;
 -- 4.based on id update rocord
 create proc spupdate1  
 @id int,  
 @name varchar (40),  
 @age int,  
 @dept varchar(40),  
 @salary bigint  
as  
begin  
update employees set name=@name where id=@id;  
/*update employees set age=@age where id=@id;  
update employees set dept=@dept where id=@id;  
update employees set salary=@salary where id=@id;*/  
create proc spupdate1  
 @id int,  
 @name varchar (40),  
 @age int,  
 @dept varchar(40),  
 @salary bigint  
as  
begin  
update employees set name=@name where id=@id;  
/*update employees set age=@age where id=@id;  
update employees set dept=@dept where id=@id;  
update employees set salary=@salary where id=@id;*/  
end

-- 5.show all record 
-- exec sp_helptext spselectv;
 CREATE  proc spselectv  
  as  
  begin  
  select * from employees;  
  end
