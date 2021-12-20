create database shop;
use shop;


create table category(
	  cate_id int primary key auto_increment,
      cate_name varchar(50)
);

insert into category
(cate_name)
values ("Giày Adidas"),
("Giày Nike"),
("Giày Biti's"),
("Giày Converse");

create table product(
	product_id int primary key auto_increment,
    product_name varchar (300),
    product_image varchar(300) ,
    product_prcie double , 
    product_title varchar(300) ,
    product_description varchar(300) ,
    cate_id int , 
    foreign key (cate_id) references category(cate_id)
);

insert into product
(product_name,product_image,product_prcie,product_title,product_description,cate_id)
values("Giày Thể Thao" , "https://filebroker-cdn.lazada.vn/kf/S5ab24fc034ba4b8fa82b5e6b9ae3bb6aR.jpg" , 100.000 , "Giày thể thao Adidas alpha trắng mẫu mới" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 1),
("Giày Chạy Bộ" , "https://vcdn-thethao.vnecdn.net/2019/11/27/shutterstock-1099735934-6289-1574845586.jpg" , 300.000 , "Giày chạy bộ thể thao nam ARHQ039-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 2),
("Giày Du Lịch" , "https://kiza.vn/blog/wp-content/uploads/2018/08/mua-giay-Brooks-Transcend-5.jpg" , 600.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 3),
("Giày adidas 2A" , "https://img.websosanh.vn/v10/users/review/images/6cc7iozl9gzoi/1559624415548_8278804.jpg?compress=85" , 800.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 4),
("Giày adidas 2B" , "https://wikithethao.com/wp-content/uploads/2019/02/gi%C3%A0y-ch%E1%BA%A1y-b%E1%BB%99.jpg" , 900.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 1),
("Giày adidas 2C" , "https://znews-photo.zadn.vn/w660/Uploaded/JAC2_N3/2014_01_23/Adidas_gioi_thieu_giay_chay_bo_Springblade_tai_Viet_Nam_2.png" , 900.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 2),
("Giày adidas 2C" , "https://znews-photo.zadn.vn/w660/Uploaded/JAC2_N3/2014_01_23/Adidas_gioi_thieu_giay_chay_bo_Springblade_tai_Viet_Nam_2.png" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 3),
("Giày đi chơi" , "https://bmai.com.vn/wp-content/uploads/2019/11/894e40955813a24dfb02-1024x768.jpg" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 4),
("Guốc" , "https://vn-live-05.slatic.net/p/e09425724d107585b4e5ef0dcb76535d.jpg_720x720q80.jpg_.webp" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 1),
("Guốc Đi Chơi" , "https://cf.shopee.vn/file/722c54d0b2d6984f59b101c1dca1d944" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 2),
("Guốc Đi Đú" , "https://cf.shopee.vn/file/b677f0db5ffb9710760f5585f483df2a" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 3),
("Guốc Đi Xa" , "https://guocmocsaigon.com/wp-content/uploads/2018/09/guoc-cao-got.jpg" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 4),
("Dép" , "https://teenstore.vn/wp-content/uploads/2020/12/1591585134_617290988675-33.00_feature_3-1.jpg" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 4),
("Dép đi chơi" , "https://cf.shopee.vn/file/1a897cfb3e7497c005bc8bad2bca2a80" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 2),
("Dép nữ" , "https://storage.googleapis.com/cdn.nhanh.vn/store/7534/ps/20210515/21052043_1000x1000.JPG" , 200.000 , "Giày Li-Ning Super Light 18 Nữ ARVR008-5" ,"Sản phẩm giày thể thao chất lượng, chính hãng 100%, 
số lượng có hạn. Chất liệu chuẩn quốc tế, êm ái, nhẹ nhàng , thích hợp cho các hoạt động thể thao" , 2);
select * from product where product_name like "%Dép%";