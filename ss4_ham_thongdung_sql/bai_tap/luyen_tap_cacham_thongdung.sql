use sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select Subid , Subname , max(Credit) , Status 
from subject
having max(Credit);

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT S.StudentId, S.StudentName, AVG(Mark) 
FROM Student S join Mark M on S.StudentId = M.StudentId 
GROUP BY S.StudentId, S.StudentName
order by S.StudentId desc;
