create database quan_ly_ban_hang;
use quan_ly_ban_hang;


create table cutomers(
	c_id int primary key , 
    c_name varchar (50),
    c_age int 
    
);
create table Oders(
	o_iD int primary key ,
    c_iD int ,
    o_date date , 
    o_total_price int,
    FOREIGN KEY (c_iD) REFERENCES cutomers(c_iD)
    );
    
 
 create table product(
	p_id int primary key , 
    p_name varchar(50),
    p_price varchar(50)
);


create table oders_detail(
	o_id int , 
    p_id int , 
    od_qty int ,
    primary key  (o_id , p_id),
    FOREIGN KEY (o_id) REFERENCES Oders(o_id),
    FOREIGN KEY (p_id) REFERENCES product(p_id)
);


