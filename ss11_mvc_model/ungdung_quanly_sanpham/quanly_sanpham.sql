create database quanly_sanpham;
use quanly_sanpham;

create table san_pham(
	id_sanpham int primary key auto_increment,
    name_sanpham varchar(200),
    price_sanpham double ,
    image_sanpham varchar(500)
);

insert into san_pham(name_sanpham,price_sanpham,image_sanpham)
values("Bánh Trung thu Richy 2021 – Dạ Nguyệt" , 45.999,"https://vcdn-kinhdoanh.vnecdn.net/2021/08/22/banh-trung-thu-1629429564-1629-7211-3228-1629602562.jpg"),
("Bánh Trung thu Richy 2021 – Vũ Nguyệt", 59.000 , "https://banhtrungthulongdinh.com/wp-content/uploads/2021/07/cach-lam-banh-trung-thu-bang-noi-chien-khong-dau.jpg"),
("Bánh Trung thu Richy 2021 – Thu Phong", 69.000 , "https://cdn.tgdd.vn/Files/2019/08/30/1193143/ban-se-chon-banh-trung-thu-homemade-hay-cua-hang-de-lam-qua-tang-cho-nguoi-than-201908300847561904.jpg"),
("Bánh Trung thu Richy 2021 – Vạn Cúc", 99.000 , "https://viettinlaw.com/wp-content/uploads/2020/05/Ch%E1%BB%89-ti%C3%AAu-ki%E1%BB%83m-nghi%E1%BB%87m-b%C3%A1nh-trung-thu1.jpg"),
("Bánh Trung thu Richy 2021 – Bách Hạc", 199.000 , "https://banhtrungthu.tinyprettycake.com/wp-content/uploads/2020/07/DSC0279-1.jpg"),
("Bánh Trung thu Richy 2021 – Thanh Loan", 300.000 , "https://kenhphunu.com/images1/072017/1506531600/cach-lam-banh-trung-thu-hoa-noi-dep-lung-linh-khong-he-kho-tin-am-thuc-1.jpg"),
("Bánh Trung thu Richy 2021 – Thanh Phúc", 400.000 , "https://lh3.googleusercontent.com/proxy/WKPSJRwda1H2-t2Fi16Bce4iRP8ycZDDhPIPkkix3xfv2lKAVbKgPmBagL3NGJdp92Lk5aRzcPB7B1bBTPoYCZ-XRjax75zV4QgP0VkwuWwyOVtXSegkEByA_py--E2-mPITvEpWy4hZ_Su8EAUv4xanBYoAUbRF2dAGil5-L0xxoSKYockF639SAdIryazfgPNANGA"),
("Bánh Trung thu Richy 2021 – Hoàng Nguyệt", 600.000 , "http://img.fica.vn/images/2017/09/04/fica-1801504489771.jpg"),
("Bánh Trung thu Richy 2021 – Cát Tiên", 900.000 , "https://www.chudu24.com/wp-content/uploads/2017/09/19-25.jpg");

select * from san_pham;