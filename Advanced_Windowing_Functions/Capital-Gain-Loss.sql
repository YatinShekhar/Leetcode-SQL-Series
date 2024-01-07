-- https://leetcode.com/problems/capital-gainloss/

with cte as (
select stock_name , operation_day , operation ,price , row_number() over(partition by stock_name
order by operation_day) as rn
from stocks)
, cte2 as (
select * , lag(price,1) over(partition by stock_name order by operation_day) as lg
from cte)
select stock_name , sum(price - lg) as capital_gain_loss
from cte2 
where operation = "Sell"
group by 1