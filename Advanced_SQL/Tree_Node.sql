-- https://leetcode.com/problems/tree-node/

with cte as (
select t1.id , t1.p_id ,t2.id as c_id
from tree t1 left join tree t2
on t1.id = t2.p_id)
select id , case when count(p_id) = 0 then "Root" 
                 when count(p_id) != 0 and count(c_id) != 0 then "Inner"
                 else "Leaf"
                 end as type
from cte
group by 1