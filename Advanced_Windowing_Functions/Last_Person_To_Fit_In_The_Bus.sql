-- https://leetcode.com/problems/last-person-to-fit-in-the-bus/

with cte as (
select * , sum(weight) over (order by turn rows between unbounded preceding and current row) as 
total_weight from queue)
select person_name from cte where total_weight <= 1000
order by total_weight desc limit 1