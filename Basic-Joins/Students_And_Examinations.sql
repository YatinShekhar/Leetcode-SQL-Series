-- https://leetcode.com/problems/students-and-examinations/

select s.student_id , s.student_name , su.subject_name , count(e.student_id) as attended_exams
from students s inner join subjects su 
left join examinations e on s.student_id = e.student_id and su.subject_name = e.subject_name
group by 1, 2 , 3
order by 1, 3