-- https://leetcode.com/problems/customers-who-bought-all-products/

select customer_id
from customer c
inner join product p
using(product_key)
group by 1
having count(distinct product_key) = (select count(distinct product_key) from product)
