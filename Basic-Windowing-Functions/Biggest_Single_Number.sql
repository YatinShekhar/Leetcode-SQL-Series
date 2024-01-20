-- https://leetcode.com/problems/biggest-single-number/

with cte as (select num
from mynumbers
group by num
having count(*) = 1)
select max(num) as num from cte