use sinh_vien;

select * from class;
select * from mark;
select * from student;
select * from subject;
-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
select * from student 
where StudentName like 'H%';
-- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.
select * from class 
where month(StartDate) = 12;
-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
select *
from mark m join subject sb on m.SubId = sb.SubId
where sb.Credit between 3 and 5;


-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
UPDATE `sinh_vien`.`student` SET `StudentId` = '2' WHERE (`StudentId` = '1');
UPDATE `sinh_vien`.`student` SET `StudentId` = '1' WHERE (`StudentId` = '2');


-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
select StudentName , SubName , Mark 
from student st join subject sb on st.Status = sb.Status
	join mark m on st.StudentId = m.StudentId
 group by StudentName
 order by Mark desc;
 
 
 
