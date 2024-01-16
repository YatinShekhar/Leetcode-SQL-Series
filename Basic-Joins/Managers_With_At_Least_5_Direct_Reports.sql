with cte as (
-- https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

select e.id , e.name , e.department , m.id as managerid , m.name as manager_name 
from employee e inner join employee m 
on e.managerId = m.id)
select manager_name as name from cte 
group by managerid , manager_name
having count(*) >=5