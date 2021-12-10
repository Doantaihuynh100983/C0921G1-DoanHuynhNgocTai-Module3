use quan_ly_ban_hang;
-- insert into cutomers 
-- values
-- (1,"Minh Quan",10),
-- (2,"Ngoc Oanh",20),
-- (3,"Hong Ha",50);

-- insert into oders 
-- values
 -- (1,1 , '2006-3-21' , Null),
-- (2,2 , '2006-3-23' , Null),
-- (3,1 , '2006-3-16' , Null);

-- insert into product
-- values
--  (1 , 'May Giat' ,3),
-- (2 , 'Tu Lanh' ,5),
-- (3 , 'Dieu Hoa' ,7),
-- (4 , 'Quat' ,1),
-- (5 , 'Bep Dien' ,2);

-- insert into oders_detail
-- value 
-- (1,1,3),
-- (1,3,7),
-- (1,4,2),
-- (2,1,1),
-- (3,1,8),
-- (2,5,4),
-- (2,3,3);


-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select o_iD ,o_date,o_total_price
from oders ;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select ctm.c_id , ctm.c_name  , pd.p_id , pd.p_name 
from cutomers ctm join oders od on od.c_id = ctm.c_iD
 join oders_detail oddt on od.o_iD = oddt.o_id
        join product pd on pd.p_id = oddt.p_id
group by pd.p_name;
        
	





