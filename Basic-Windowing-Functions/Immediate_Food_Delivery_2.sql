-- https://leetcode.com/problems/immediate-food-delivery-ii/

with cte as (
select * , case when order_date = customer_pref_delivery_date then "Immediate" else
"Scheduled" end as order_type , row_number() over(partition by customer_id order by order_date) as rn
from delivery)
select round(sum(case when order_type = "Immediate" then 1 else 0 end)* 100/count(*),2)
as immediate_percentage 
from cte where rn = 1