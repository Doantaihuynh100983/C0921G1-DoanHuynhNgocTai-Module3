create database furumawed;
use furumawed;

create table position (
	position_id int primary key  auto_increment,
    position_name varchar(50) not null
);

create table education_degree(
	education_degree_id int primary key  auto_increment, 
    education_degree_name varchar(50) not null 
);

create table division(
		division_id int primary key auto_increment , 
        division_name varchar(50)
);

create table user(
	usename varchar(255) primary key ,
	password varchar(255) not null
);

create table role(
	role_id int primary key auto_increment, 
    role_name varchar(255) not null
);

create  table user_role(
		role_id int  auto_increment,
        usename varchar(255) ,
        primary key (role_id ,usename),
        foreign key (usename) references user(usename),
        foreign key (role_id) references role(role_id)
);

create table employee(
	employee_id int primary key auto_increment , 
    employee_name varchar(50) not null , 
	employee_birthday date not null , 
	employee_id_card varchar(45) not null ,
    employee_salary double  not null , 
	employee_phone varchar(45) not null ,
	employee_email varchar(45) not null ,
	employee_address varchar(45) not null ,
    position_id  int  not null , 
    education_degree_id  int  not null ,
    division_id int  not null , 
    usename varchar(255),
    foreign key (position_id) references  position (position_id),
    foreign key (education_degree_id) references education_degree(education_degree_id),
    foreign key (division_id) references division(division_id),
    foreign key (usename) references user(usename)
);


create table customer_type(
	customer_type_id int primary key auto_increment,
    customer_type_name varchar(45) not null 
    
);

create table customer(
	customer_id int primary key auto_increment, 
    customer_type_id int not null, 
    customer_name varchar(45) not null , 
    customer_birthday date not null,
    customer_gender bit (1) not null,
    customer_id_card int not null , 
	customer_phone  int not null , 
    customer_email varchar(45) not null , 
	customer_address varchar(45) not null ,
    foreign key (customer_type_id) references customer_type (customer_type_id)
);

create table rent_type(
	rent_type_id int primary key auto_increment,
    rent_type_name varchar(45) not null,
    rent_type_cost double not null
);

create table service_type(
	service_type_id int primary key auto_increment,
    service_type_name varchar(45) not null
);

create table service(
		service_id int primary key auto_increment , 
        service_name varchar(45) not null , 
        service_are int not null,
        service_cost double not null, 
        service_max_people int not null,
        rent_type_id int not null, 
        service_type_id int not null,
        standard_room varchar(45) not null , 
        description_other_convenience varchar(45) not null , 
        pool_area double not null,
        number_of_floors int not null, 
        foreign key (service_type_id) references service_type(service_type_id),
		foreign key (rent_type_id) references rent_type (rent_type_id)
);

create table contract(
	contract_id int primary key auto_increment, 
    contract_start_date datetime not null , 
    contract_end_date datetime not null , 
    contract_deposit double  not null,
    contract_total_money double  not null, 
    employee_id int ,
    customer_id int,
    service_id int,
    foreign key (service_id) references service(service_id),
    foreign key (employee_id) references employee(employee_id),
	foreign key (customer_id) references customer(customer_id)
);

create table attach_service(
	attach_service_id int primary key auto_increment, 
	attach_service_name varchar(45) not null ,
    attach_service_cost double  not null , 
	attach_service_unit int  not null , 
	attach_service_status varchar(45) not null 
);

create table  contract_detail(
	contract_detail_id int primary key auto_increment, 
    contract_id int  not null, 
    attach_service_id int not null , 
    quantily int not null ,
    foreign key (contract_id) references  contract(contract_id),
	foreign key (attach_service_id) references  attach_service (attach_service_id)
);














