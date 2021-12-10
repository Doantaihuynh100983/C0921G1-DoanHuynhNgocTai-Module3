-- CÂU 2 :Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là
-- một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
SELECT 
    *
FROM
    furuma.nhan_vien
WHERE
    ho_ten LIKE 'T%' OR ho_ten LIKE 'H%'
        OR ho_ten LIKE 'K%'
        AND (LENGTH(ho_ten) <= 15);


-- CÂU 3 : Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và
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
      left  JOIN
    furuma.hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
       left JOIN
    furuma.loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
	  left  JOIN
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
            hd.ma_dich_vu
         FROM
           furuma.hop_dong
   WHERE
		month(hd.ngay_lam_hop_dong) between 1 and 3 
 )
group by dv.ten_dich_vu
order by dv.ma_dich_vu;
-- ở đâu mà lòi ra thằng số 5 không hiểu nỗi ???




-- Câu 7 :
-- Hiển thị thông tin ma_dich_vu, ten_dich_vu, dien_tich,
-- so_nguoi_toi_da, chi_phi_thue, ten_loai_dich_vu của tất cả các loại
-- dịch vụ đã từng được khách hàng đặt phòng trong năm 2020 nhưng
-- chưa từng được khách hàng đặt phòng trong năm 2021.


	



 select * from furuma.hop_dong;


