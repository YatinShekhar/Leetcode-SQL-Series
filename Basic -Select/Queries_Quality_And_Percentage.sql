-- https://leetcode.com/problems/queries-quality-and-percentage/

select query_name , round(avg(rating/position),2) as quality , 
round((sum(case when rating < 3 then 1 else 0 end)*100.0/count(*)),2) as poor_query_percentage
from queries
group by 1;

-- This query gives the null values, so to avoid them we use

select query_name , round(avg(rating/position),2) as quality , 
round((sum(case when rating < 3 then 1 else 0 end)*100.0/count(*)),2) as poor_query_percentage
from queries
group by 1 
having count(query_name) > 0