-- https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/

-- Two slightly different approaches

with cte as (
select customer_number , count(order_number) as total_orders
from orders
group by customer_number)
select customer_number from cte
order by total_orders desc limit 1;

-- OR

with cte as
(select customer_number , count(*) as total_orders
from orders
group by customer_number)
select customer_number from cte where total_orders = (select max(total_orders) from cte)