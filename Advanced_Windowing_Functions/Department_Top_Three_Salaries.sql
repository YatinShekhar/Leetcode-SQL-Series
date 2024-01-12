-- https://leetcode.com/problems/department-top-three-salaries/

select Department , Employee , Salary from 
(select e.name as employee, e.salary , d.id , d.name as department , 
dense_rank() over(partition by d.id order by e.salary desc) as rn 
from employee e inner join department d 
on e.departmentId = d.id) as a
where rn <=3