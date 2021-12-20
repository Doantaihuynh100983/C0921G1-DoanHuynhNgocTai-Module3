use furuma_wed;
insert into position (position_name)
values
("Le tan"),
("Phuc vu"),
("Chuyen vien"),
("Giam sat"),
("Quan ly"),
("Giam doc");


insert into education_degree (education_degree_name)
values
("Trung cap"),
("Cao dang"),
("Dai hoc"),
("Sau dai hoc");


insert into division (division_name)
values
("Sale-Marketing"),
("Hanh chinh"),
("Phuc vu"),
("Quan ly");


insert into employee (employee_name,position_id,education_degree_id,division_id,employee_birthday,employee_id_card,employee_salary,employee_phone,employee_email,employee_address)
values
("Tran Quoc Hoang",1,1,3,"2004-01-01","111111111",350,"0901234567","abc@gmail.com","quang nam"),
("Ho Ngoc Dang Khoa",2,2,3,"2002-01-01","222222222",370,"0902345678","abc@gmail.com","da nang"),
("Trinh Thi Khanh Ngoc",3,3,1,"1990-01-01","333333333",400,"0903456789","abc@gmail.com","quang nam"),
("Nguyen Van T",4,2,2,"1989-01-01","444444444",500,"0904567890","abc@gmail.com","da nang"),
("Nguyen Thi Kim",5,3,2,"1995-01-01","555555555",700,"0905678901","abc@gmail.com","quang nam"),
("Tran Van Chanh",6,4,4,"1980-01-01","666666666",1300,"0906789012","abc@gmail.com","da nang");


insert into customer_type (customer_type_name)
values
("Diamond"),
("Platinum"),
("Gold"),
("Silver"),
("Member");


insert into customer (customer_type_id ,customer_name,customer_birthday,customer_gender,customer_id_card,customer_phone,customer_email,customer_address)
values
(1,"Nguyen Van A","2004-01-01",1,"111111111","0901234567","abc@gmail.com","Da Nang"),
(2,"Nguyen Van B","2002-01-01",1,"222222222","0902345678","abc@gmail.com","Quang Ngai"),
(1,"Nguyen Van C","1990-01-01",1,"333333333","0903456789","abc@gmail.com","Vinh"),
(5,"Nguyen Van D","1989-01-01",1,"444444444","0904567890","abc@gmail.com","Quang Tri"),
(2,"Nguyen Van F","2003-05-01",1,"555555555","0905678901","abc@gmail.com","Da Nang"),
(4,"Nguyen Van F","1980-01-01",1,"666666666","0906789012","abc@gmail.com","Hue");



insert into rent_type (rent_type_name,rent_type_cost)
values
("Nam",80),
("Thang",90),
("Ngay",100),
("Gio",110);


insert into service_type (service_type_name)
values
("Villa"),
("House"),
("Room");


insert into service (service_name, service_are, service_cost, service_max_people , rent_type_id , service_type_id ,  standard_room , description_other_convenience , pool_area , number_of_floors)
values
("Villa 1",60 , 80 , 3 , 1 , 2 , "vip" , "Available" , 30.5, 3),
("House 1",60 , 80 , 3 , 1 , 2 , "vip" , "Available" , 30.5, 3),
("Room 1",60 , 80 , 3 , 1 , 2 , "vip" , "Available" , 30.5, 3),
("Villa 2",60 , 80 , 3 , 1 , 2 , "vip" , "Available" , 30.5, 3),
("Room 2",60 , 80 , 3 , 1 , 2 , "vip" , "Available" , 30.5, 3);


insert into contract(employee_id,customer_id,service_id,contract_start_date,contract_end_date,contract_deposit,contract_total_money)
values
(1,2,2,"2015-12-12","2019-03-12",100,400),
(1,2,2,"2018-12-12","2019-03-12",100,400),
(1,3,5,"2018-01-12","2019-08-12",100,300),
(1,1,5,"2018-01-12","2019-08-12",100,250),
(1,1,5,"2018-01-12","2019-08-12",100,700),
(2,5,4,"2019-01-12","2020-10-12",100,550),
(5,1,5,"2021-01-12","2020-10-12",100,190),
(4,3,3,"2019-05-01","2021-05-01",100,560),
(4,6,3,"2018-05-01","2021-05-01",100,450),
(3,4,3,"2019-10-01","2021-05-01",100,300),
(3,4,3,"2019-10-20","2021-05-01",100,670);




insert into attach_service(attach_service_name,attach_service_cost,attach_service_unit,attach_service_status)
values
("Massage",10,1,"Not available"),
("Karaoke",15,1,"Available"),
("Thuc an",20,1,"Not available"),
("Nuoc uong",15,1,"Not available"),
("Thue xe",50,1,"Available");


-- chưa insert hợp đồng chi tiết