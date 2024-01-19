-- https://leetcode.com/problems/second-highest-salary/

select max(salary) as SecondHighestSalary
from employee
where salary not in (select max(salary) from employee)

-- or

with cte as (
select * , dense_rank() over(order by salary desc) as rn
from employee)
, cte2 as (select 2 as rn)
select distinct salary as SecondHighestSalary from cte2 left join cte using(rn)
