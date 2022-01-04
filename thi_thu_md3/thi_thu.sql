create database thi_thu;
use thi_thu;

create table benh_an(
	ma_benh_an varchar(10) primary key,
    ten_benh_an varchar(50)
);
create table benh_nhan(
		id int auto_increment primary key,
	ma_benh_nhan varchar(10)  , 
    ten_benh_nhan varchar(50),
    ngay_nhap_vien date ,
    ngay_ra_vien date, 
    ly_do_nhap_vien varchar(100),
    ma_benh_an varchar(10),
    FOREIGN KEY (ma_benh_an) REFERENCES benh_an(ma_benh_an)
);

insert into benh_an (ma_benh_an,ten_benh_an)
values ("BA-001","Đau Họng"),
("BA-112","Thận"),
("BA-223","Phổi"),
("BA-444","Ung");


insert into benh_nhan(ma_benh_nhan,ten_benh_nhan,ngay_nhap_vien,ngay_ra_vien,ly_do_nhap_vien,ma_benh_an)
values--  ("BN-435","Nguyễn Văn A","2016-08-07","2019-09-09","Toang rồi","BA-444"),
--  ("BN-123","Nguyễn Văn C","2019-08-07","2020-09-09","Toang rồi","BA-444"),
--   ("BN-984","Tôn Nữ D","2020-11-01","2020-08-08","Toang rồi","BA-444"),
--   ("BN-153","Đoàn Thị E","2017-08-07","2018-08-08","Toang rồi","BA-444"),
  ("BN-456","Nguyễn Văn A","2016-08-07","2019-09-09","Toang rồi","BA-444"),
 ("BN-789","Nguyễn Văn C","2019-08-07","2020-09-09","Toang rồi","BA-444"),
  ("BN-098","Tôn Nữ D","2020-11-01","2020-08-08","Toang rồi","BA-444"),
  ("BN-234","Đoàn Thị E","2017-08-07","2018-08-08","Toang rồi","BA-444"),
    ("BN-567","Nguyễn Văn A","2016-08-07","2019-09-09","Toang rồi","BA-444"),
 ("BN-777","Nguyễn Văn C","2019-08-07","2020-09-09","Toang rồi","BA-444"),
  ("BN-888","Tôn Nữ D","2020-11-01","2020-08-08","Toang rồi","BA-444"),
  ("BN-999","Đoàn Thị E","2017-08-07","2018-08-08","Toang rồi","BA-444");

ALTER TABLE benh_nhan ADD flag_delete int default 1;
select * from benh_nhan;
UPDATE benh_nhan SET ten_benh_nhan = ? ,ngay_nhap_vien = ? ,ngay_ra_vien = ?,ly_do_nhap_vien = ? WHERE id=?; 
update benh_nhan set flag_delete = 0 where id=?;