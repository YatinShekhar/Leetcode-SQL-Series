-- https://leetcode.com/problems/department-highest-salary/

with cte as (
select e.* , d.name as department , dense_rank() over(partition by departmentId order by salary desc) as rn
from employee e inner join department d
on e.departmentId = d.id)
select department , name as employee , salary
from cte where rn = 1 