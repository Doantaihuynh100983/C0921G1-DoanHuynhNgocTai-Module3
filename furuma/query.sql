-- CÂU 2 :Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là
-- một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
SELECT 
    *
FROM
    furuma.nhan_vien
WHERE
    ho_ten LIKE 'T%' OR ho_ten LIKE 'H%'
        OR ho_ten LIKE 'K%'
        AND (LENGTH(ho_ten) <= 15) ;
        
        
        
-- câu 3  Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và
-- có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.  
SELECT 
    *
FROM
    furuma.khach_hang
WHERE
    18 < (YEAR(CURDATE()) - YEAR(ngay_sinh))
        AND 50 > (YEAR(CURDATE()) - YEAR(ngay_sinh))
        AND (dia_chi LIKE '%Đà Nẵng%'
        OR dia_chi LIKE '%Quảng Trị%');


-- CÂU 4 : Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu
-- lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của
-- khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là
-- “Diamond”.
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    COUNT(hd.ma_hop_dong)
FROM
    furuma.loai_khach lk
        JOIN
    furuma.khach_hang kh ON lk.ma_loai_khach = kh.ma_loai_khach
        JOIN
    furuma.hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
WHERE
    (lk.ma_loai_khach = 1)
GROUP BY kh.ma_khach_hang
ORDER BY COUNT(hd.ma_hop_dong) ASC;



-- CÂU 5 :
-- Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong,
-- ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien (Với
-- tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng *
-- Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem,
-- hop_dong_chi_tiet) cho tất cả các khách hàng đã từng đặt phòng. (những
-- khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
  SUM( ifnull(chi_phi_thue,0) + (ifnull(hdct.so_luong * dvdk.gia,0)) )  AS tong_tien
FROM
    furuma.khach_hang kh
      left JOIN
    furuma.hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
       left JOIN
    furuma.loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
	  left JOIN
    furuma.dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
    left JOIN
   furuma.hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
	left JOIN
    furuma.dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem 
GROUP BY   hd.ma_hop_dong
ORDER BY kh.ma_khach_hang ASC;


-- CÂU 6 : Hiển thị ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue,
-- ten_loai_dich_vu của tất cả các loại dịch vụ chưa từng được khách hàng
-- thực hiện đặt từ quý 1 của năm 2021 (Quý 1 là tháng 1, 2, 3).

SELECT 
 dv.ma_dich_vu,
    dv.ten_dich_vu,
   dv.dien_tich,
     dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    furuma.loai_dich_vu ldv
        JOIN
    furuma.dich_vu dv ON ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
        JOIN
    furuma.hop_dong hd ON  hd.ma_dich_vu = dv.ma_dich_vu 
WHERE
  dv.ma_dich_vu NOT IN (
     SELECT 
            hop_dong.ma_dich_vu
         FROM
           furuma.hop_dong
   WHERE
		(month(hop_dong.ngay_lam_hop_dong)  BETWEEN 1 and 3 ) and year(hop_dong.ngay_lam_hop_dong) = 2021
 )
group by dv.ten_dich_vu
order by dv.ma_dich_vu;
-- ở đâu mà lòi ra thằng số 5 không hiểu nỗi ???




-- Câu 7 :
-- Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich,
-- so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại
-- dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng
-- chưa từng được khách hàng đặt phòng trong năm 2021.
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.so_nguoi_toi_da,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    furuma.dich_vu dv
        JOIN
    furuma.loai_dich_vu ldv
        JOIN
    furuma.hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
WHERE
    dv.ma_dich_vu NOT IN (
    SELECT 
            hop_dong.ma_dich_vu
        FROM
            furuma.hop_dong
        WHERE
            YEAR(hop_dong.ngay_lam_hop_dong) = 2021)
      
--   AND 
--   
--   dv.ma_dich_vu NOT IN (SELECT
--             hd.ma_dich_vu
--         FROM
--             furuma.hop_dong
--         WHERE
--             YEAR(hd.ngay_lam_hop_dong) = 2021)

	group by dv.ten_dich_vu;



-- câu 8 :Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu
-- ho_ten không trùng nhau.
-- cách 1 :
select  DISTINCT  khach_hang.ho_ten 
from furuma.khach_hang;
-- cách 2
select khach_hang.ho_ten
from furuma.khach_hang
group by khach_hang.ho_ten;
-- cách 3 
select khach_hang.ho_ten
from furuma.khach_hang
union 
select khach_hang.ho_ten
from furuma.khach_hang;



-- câu 9 : Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi
-- tháng trong năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt
-- phòng.
select month(hd.ngay_lam_hop_dong) AS 'Tháng' , count(month(hd.ngay_lam_hop_dong)) AS 'Số Lần'
from furuma.khach_hang kh join furuma.hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang 
 where year(hd.ngay_lam_hop_dong) = 2021
 group by month(hd.ngay_lam_hop_dong)

 order by month(hd.ngay_lam_hop_dong);
 
 
 
 
-- câu 10 :Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu
-- dịch vụ đi kèm. Kết quả hiển thị bao gồm ma_hop_dong,
-- ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc,
-- so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở
-- dich_vu_di_kem).
select hd.ma_hop_dong , hd.ngay_lam_hop_dong , hd.ngay_ket_thuc , hd.tien_dat_coc , ifnull(sum(hdct.so_luong),0) 'Số luong dịch vu đi kèm'
from furuma.hop_dong hd  left join furuma.hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
 left join furuma.dich_vu_di_kem dvdk on  hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hd.ma_hop_dong;





-- Câu 11 Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách
-- hàng có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc
-- “Quảng Ngãi”.
select dvdk.ma_dich_vu_di_kem , dvdk.ten_dich_vu_di_kem
from furuma.khach_hang kh join furuma.loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
		join furuma.hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang 
        join  furuma.hop_dong_chi_tiet hdct on  hd.ma_hop_dong = hdct.ma_hop_dong
        join furuma.dich_vu_di_kem  dvdk on  hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
where kh.dia_chi like "%Vinh%" or kh.dia_chi like "%Quảng Ngãi%" AND lk.ten_loai_khach like "%Diamond%";





-- câu 12 
-- Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách
-- hàng), so_dien_thoai (khách hàng), ten_dich_vu,
-- so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở
-- dich_vu_di_kem), tien_dat_coc của tất cả các dịch vụ đã từng được
-- khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được
-- khách hàng đặt vào 6 tháng đầu năm 2021.
select hd.ma_hop_dong , nv.ho_ten , kh.ho_ten , kh.so_dien_thoai , dv.ma_dich_vu , dv.ten_dich_vu , ifnull(sum(hdct.so_luong),0) 'số lượng dịch vụ đi kèm' , hd.tien_dat_coc
from furuma.hop_dong hd join furuma.nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien
	join furuma.khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
    join furuma.dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
	left join furuma.hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
where (year(hd.ngay_lam_hop_dong) = 2020 and month(hd.ngay_lam_hop_dong) IN (10 , 11, 12))
        AND (month(hd.ngay_lam_hop_dong) NOT  IN (1,2,3,4,5,6) and year(hd.ngay_lam_hop_dong) = 2020) 
group by hd.ma_hop_dong;




-- câu 13 :Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các
-- Khách hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử
-- dụng nhiều như nhau).
select dvdk.ma_dich_vu_di_kem , dvdk.ten_dich_vu_di_kem , sum(hdct.so_luong) 'so_luong' 
from furuma.dich_vu_di_kem dvdk join furuma.hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
group by hdct.ma_dich_vu_di_kem
having sum(hdct.so_luong) >= (select max(so_luong) from furuma.hop_dong_chi_tiet);



-- câu 14 :Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một
-- lần duy nhất. Thông tin hiển thị bao gồm ma_hop_dong,
-- ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính
-- dựa trên việc count các ma_dich_vu_di_kem).
select hd.ma_hop_dong , ldv.ten_loai_dich_vu , dvdk.ten_dich_vu_di_kem , count(hdct.ma_dich_vu_di_kem)
from furuma.hop_dong hd join furuma.dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu 
	join furuma.loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
    join furuma.hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
    join furuma.dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hdct.ma_dich_vu_di_kem
having count(hdct.ma_dich_vu_di_kem) = 1
order by hd.ma_hop_dong asc;




-- Câu 15 :Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten,
-- ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được
-- tối đa 3 hợp đồng từ năm 2020 đến 2021.
select nv.ma_nhan_vien , nv.ho_ten , td.ten_trinh_do , bp.ten_bo_phan , nv.so_dien_thoai , nv.dia_chi 
from  furuma.nhan_vien nv join furuma.trinh_do td on nv.ma_trinh_do = td.ma_trinh_do
		join furuma.bo_phan bp on nv.ma_bo_phan = bp.ma_bo_phan
       join furuma.hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
 where year(hd.ngay_lam_hop_dong) between 2020 and 2021 
group by hd.ma_nhan_vien
having (count(hd.ma_nhan_vien) <=3) 
order by  hd.ma_nhan_vien;



-- Câu 16 : Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019
-- đến năm 2021.
SELECT * FROM furuma.nhan_vien;
DELETE FROM furuma.nhan_vien
WHERE nhan_vien.ma_nhan_vien NOT IN (SELECT hop_dong.ma_nhan_vien
    FROM furuma.hop_dong
    WHERE YEAR(ngay_lam_hop_dong) BETWEEN 2019 AND 2021);
	



-- câu 17 : Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum
-- lên Diamond, chỉ cập nhật những khách hàng đã từng đặt phòng với
-- Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
update furuma.khach_hang
set khach_hang.ma_loai_khach=1
where khach_hang.ma_loai_khach!=1 and khach_hang.ma_khach_hang in (select tmp.ma_khach_hang from(select kh.ma_khach_hang
from furuma.khach_hang kh
join furuma.hop_dong hd on hd.ma_khach_hang=kh.ma_khach_hang
join furuma.dich_vu dv on dv.ma_dich_vu=hd.ma_dich_vu
join furuma.hop_dong_chi_tiet hdct on hd.ma_hop_dong=hdct.ma_hop_dong
join furuma.dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by kh.ma_khach_hang
having (SUM(ifnull(dv.chi_phi_thue,0) + ifnull(dvdk.gia,0)* ifnull(hdct.so_luong,0))>=1000000))as tmp);
	





-- câu 18 : Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc
-- giữa các bảng).
-- xóa có hai cách 1 là dùng  SET FOREIGN_KEY_CHECKS = 0 phá vỡ logic của hệ thống 
-- cách 2 là dùng  ON DELETE CASCADE khai báo trong tất cả các table có liên quan
SELECT * FROM furuma.khach_hang;
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM furuma.khach_hang 
WHERE khach_hang.ma_khach_hang IN (
SELECT hop_dong.ma_khach_hang FROM furuma.hop_dong
    WHERE YEAR(ngay_lam_hop_dong) < 2021
);




-- câu 19 :Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong
-- năm 2020 lên gấp đôi.
	
update furuma.dich_vu_di_kem
set dich_vu_di_kem.gia=dich_vu_di_kem.gia*2
where dich_vu_di_kem.ma_dich_vu_di_kem in (select tmp.ma_dich_vu_di_kem from (select dvdk.ma_dich_vu_di_kem
from furuma.dich_vu_di_kem dvdk
join furuma.hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
join furuma.hop_dong hd on hdct.ma_hop_dong=hd.ma_hop_dong
where hdct.so_luong >=10 and year(hd.ngay_lam_hop_dong)=2020)as tmp);
    
    
    






-- câu 20 :Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ
-- thống, thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang),
-- ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
select nhan_vien.ma_nhan_vien , nhan_vien.ho_ten , nhan_vien.email , nhan_vien.so_dien_thoai , nhan_vien.ngay_sinh , nhan_vien.dia_chi
from furuma.nhan_vien
union all 
select khach_hang.ma_khach_hang , khach_hang.ho_ten , khach_hang.email , khach_hang.so_dien_thoai , khach_hang.ngay_sinh , khach_hang.dia_chi
from furuma.khach_hang;
