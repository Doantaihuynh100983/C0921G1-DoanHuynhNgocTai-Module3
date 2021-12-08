CREATE DATABASE quanly_sinhvien;
use quanly_sinhvien;
CREATE TABLE class(
	id int primary key, 
    Name varchar(25)
);
insert into class
value 
(1,"DOAN");



CREATE TABLE teacher(
	id int primary key, 
    Name varchar(25),
    age int ,
    conutry varchar(200)
);

insert into teacher
value 
(1,"TAI",30,"DA NANG");
SELECT * FROM class; 
SELECT * FROM teacher; 
