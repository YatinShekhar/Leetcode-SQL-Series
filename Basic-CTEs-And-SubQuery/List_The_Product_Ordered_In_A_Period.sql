-- https://leetcode.com/problems/list-the-products-ordered-in-a-period/

with cte as 
(select product_name , sum(unit) as unit
from products p inner join orders o using(product_id)
where order_date between '2020-02-01' and '2020-02-29'
group by product_id , product_name)
select * from cte where unit >= 100