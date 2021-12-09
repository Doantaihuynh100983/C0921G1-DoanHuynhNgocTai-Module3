-- CÂU 2 :Hiển thị thông tin của tất cả nhân viên có trong hệ thống có tên bắt đầu là
-- một trong các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.
select * from furuma.nhan_vien 
where   ho_ten LIKE 'T%' OR ho_ten LIKE 'H%' OR ho_ten LIKE 'K%' AND (length(ho_ten) <=15);


-- CÂU 3 : Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và
-- có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
select * from furuma.khach_hang
where  18 <(year(curdate()) - year(ngay_sinh)) AND  50>(year(curdate()) - year(ngay_sinh)) 
AND (dia_chi like "%Đà Nẵng%" OR dia_chi like "%Quảng Trị%"); 


-- CÂU 4 : Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu
-- lần. Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của
-- khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là
-- “Diamond”.
select furuma.khach_hang.ma_khach_hang , furuma.khach_hang.ho_ten , furuma.loai_khach.ten_loai_khach 
from furuma.loai_khach , furuma.khach_hang
where (furuma.loai_khach.ma_loai_khach =1 ) && (furuma.loai_khach.ma_loai_khach = furuma.khach_hang.ma_loai_khach); 

