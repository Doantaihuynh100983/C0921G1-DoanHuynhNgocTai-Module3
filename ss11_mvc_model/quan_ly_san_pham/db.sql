create database quan_ly_san_pham;
use quan_ly_san_pham;

create table san_pham(
	id int primary key auto_increment,
    ten_san_pham varchar(100),
    gia_san_pham double,
    mo_ta_san_pham varchar(100),
    nha_san_xuat varchar(70)
);



select * from san_pham;
insert into san_pham(ten_san_pham,gia_san_pham,mo_ta_san_pham,nha_san_xuat)
values ("BÁNH QUY BƠ DANISA",90.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("KẸO DẺO TRÁI CÂY ",23.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Kẹo Socola sữa và Kẹo socola đen FIGO ",45.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Kẹo Sữa Hàn Quốc Bio",67.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Kẹo socola Nga mix ",12.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh Chocolate Eichetti ",56.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 (" Kẹo hình mèo thần tài",100.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh kem sữa dừa Raffaello của Đức",200.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Kẹo dẻo hương hoa quả Zivinka của Nga",300.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Hạt hướng dương Bà Già Nga Babkiny",400.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh nấm Nga",300.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh bơ trứng Richy",555.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh quy LU",666.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh quy bơ thập cẩm kẹp kem Cosy",777.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh quy bơ O&T Royal Danish",888.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh bông lan cuộn kem socola và lá dứa Solite",999.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 (" Bánh Choco-pie Orion",111.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Kẹo KitKat trà xanh (Bánh xốp phủ trà xanh KitKat)",300.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Kẹo Socola Ferrero",222.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 (" Bánh bông lan sợi thịt gà Orion C'est Bon",333.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Kẹo dẻo hương trái cây LOT100",555.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Bánh phủ socola kem marshmallow dưa hấu Choco PN",444.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 (" Bánh Quy Classic Favorites Pepperidge Farm ",666.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 (" Bánh quy Jacobsens Đan Mạch ",777.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô"),
 ("Kẹo Chocolate tổng hợp M&M",888.98 , "BÁNH QUY BƠ DANISA SÔCÔLA HẠT ĐIỀU 90G" , "Kinh Đô");
 
 
 
 