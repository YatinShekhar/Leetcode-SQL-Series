-- https://leetcode.com/problems/human-traffic-of-stadium/

with cte as (
select * , row_number() over(order by id) as rn from stadium where people >= 100)
, cte2 as (
select * , (id-rn) as diff from cte)
select id , visit_date , people 
from cte2 
where diff in 
(select diff from cte2 group by diff having count(*) >=3)