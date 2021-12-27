CREATE DATABASE demo;
USE demo;

create table users (
 id  int(3) NOT NULL AUTO_INCREMENT,
 name varchar(120) NOT NULL,
 email varchar(220) NOT NULL,
 country varchar(120),
 PRIMARY KEY (id)
);

insert into users(name,email,country)
values("Tai" ,"doantai100983hu@gmail.com","Da Nang"),
("Ca" ,"doantai100983hu@gmail.com","Da Nang"),
("Tien" ,"doantai100983hu@gmail.com","Da Nang"),
("Huyen" ,"doantai100983hu@gmail.com","Da Nang");

-- select * from users order by name asc;
select * from users where name like "%T%";
