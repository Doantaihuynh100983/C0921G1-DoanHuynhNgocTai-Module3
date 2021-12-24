create database danh_sach_khach_hang;
use danh_sach_khach_hang;

create table khach_hang(
	ten varchar(50),
    ngaySinh date ,
    diachi varchar(50),
    anh varchar(500)
);

insert into khach_hang
values ("Mai Văn Hoàn" , "1983-08-20" , "Hà Nội","https://cdn.vietnambiz.vn/2019/10/23/how-to-foster-customer-loyalty-scott-le-roy-marketing-1571802934835964814694.jpg"),
("Nguyễn Văn Nam" , "1983-08-21" , "Bắc Giang","https://getflycrm.com/wp-content/uploads/2016/07/phan-nhom-khach-hang.jpg"),
("Nguyễn Thái Hòa" , "1983-08-22" , "Nam Định","https://agent.rever.vn/hubfs/bi-quyet-giu-chan-khach-hang-tiem-nang-cho-moi-gioi-bds.png"),
("Trần Đăng Khoa" , "1983-08-17" , "Hà Tây","https://topdev.vn/blog/wp-content/uploads/2020/06/4-foundational-networking-tips-for-finding-your-tribe.jpg"),
("Nguyễn Đình THi" , "1983-08-19" , "Nam Định","https://jobsgo.vn/blog/wp-content/uploads/2019/07/Cham-soc-khach-hang-01-1280x720.jpg");

select * from khach_hang;