create database test ;
use test ; 
create table sinh_vien (
sinh_vien_id  int NOT NULL,
sinh_vien_name varchar(120) NOT NULL,
sinh_vien_email varchar(220) NOT NULL,
sinh_vien_country varchar(120)
);

insert into sinh_vien(sinh_vien_id,sinh_vien_name,sinh_vien_email,sinh_vien_country)
values (1,"TAI DOAN" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(2,"HUONG PHAM" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(3,"HUYEN BUI" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(4,"DUONG VU" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
 (5,"TAI DOAN" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(6,"HUONG PHAM" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(7,"HUYEN BUI" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(8,"DUONG VU" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
 (9,"TAI DOAN" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(10,"HUONG PHAM" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(11,"HUYEN BUI" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(12,"DUONG VU" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
 (13,"TAI DOAN" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(14,"HUONG PHAM" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(15,"HUYEN BUI" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN"),
(16,"DUONG VU" , "DOANTAI@GMAIL.COM" , "NAM PHƯƠC _ DUY XUYEN");


select*from sinh_vien;
delete from sinh_vien where sinh_vien_id = ?;

insert into sinh_vien value(?,?,?,?);
select * from sinh_vien where sinh_vien_id= 3;

