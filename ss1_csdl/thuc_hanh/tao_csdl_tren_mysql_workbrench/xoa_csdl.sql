CREATE DATABASE NhanVien;
use NhanVien;
CREATE TABLE NhanVienHH(
	Id int primary key, 
    LastName varchar(25),
    FirtName varchar(25)
);
insert into NhanVienHH
value 
(1,"DOAN","TAI");
SELECT * FROM NhanVienHH;
DROP DATABASE NhanVien;