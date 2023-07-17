-- Tạo mới database / schemas 
create database demodb; 
-- chọn vào database cần thao tác 
use demodb;
-- xóa database 
-- drop database demodb;
-- tạo bảng 
create table Employee (
-- định nghĩa các trường 
  id varchar(255) primary key,
  name varchar(255),
  date datetime default(now()) ,
  age int check(age>=18),
  idDepartment int not null
);
insert into employee (id,name,age,idDepartment) value ("E01","Nguyễn Văn A",18,2);
insert into employee (id,name,age,idDepartment) value ("E02","Nguyễn Văn B",18,1);
insert into employee (id,name,age,idDepartment) value ("E03","Nguyễn Văn C",18,3);
insert into employee (id,name,age,idDepartment) value ("E04","Nguyễn Văn D",18,4);

CREATE TABLE Persons(
id int primary key AUTO_INCREMENT,
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);

-- xóa table;
-- drop table persons;
-- ALTER TABLE employee
-- CHANGE COLUMN id ide VARCHAR(255) NULL DEFAULT NULL ;

-- constraint 
-- not null
-- unique
-- check
 create table Department (
 id int primary key AUTO_INCREMENT,
 name varchar(255) 
 );
 insert into department(name) value ("Đào tạo");
  insert into department(name) value ("Vận hành");
   insert into department(name) value ("Maketing");
    insert into department(name) value ("Truyền thông");
    
     create table Project (
--  id int primary key AUTO_INCREMENT,
idEmployee varchar(255) not null,
idDepartment int not null,
 nameProject varchar(255) ,
 primary key(idEmployee,idDepartment)
 );
--  ALTER TABLE users
-- ADD PRIMARY KEY(id);
 insert into project value("E01",1,"P001");
 insert into project value("E02",1,"P001");
 insert into project value("E01",2,"P001");


 