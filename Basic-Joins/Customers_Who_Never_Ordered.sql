-- https://leetcode.com/problems/customers-who-never-order/

select name as customers
from customers c left join orders o
on c.id = o.customerId
where o.id is null;

-- OR

select name as customers
from customers
where id not in (select distinct customerId from orders)

-- The latter runs faster