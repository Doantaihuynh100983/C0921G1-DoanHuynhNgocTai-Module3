CREATE DATABASE quanly_sinhvien;
use quanly_sinhvien;
CREATE TABLE class(
	id int    primary key AUTO_INCREMENT, 
    `Name` varchar(25)
);
insert into class 
(`Name`)
values 
("DOAN"),
("OK"),
("Tai");



CREATE TABLE teacher(
	id int NOT NULL AUTO_INCREMENT primary key, 
    `Name` varchar(25),
    age int ,
    conutry varchar(200)
);

insert into teacher
value 
("TAI",30,"DA NANG");
insert into teacher
value 
("Daon",45,"DA NANG");


SELECT * FROM class; 
SELECT * FROM teacher; 
