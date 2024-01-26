-- https://leetcode.com/problems/sales-analysis-iii/

select p.product_id , p.product_name
from product p inner join sales s
using(product_id)
group by 1 , 2
having min(sale_date) >= '2019-01-01' and max(sale_date) <= '2019-03-31'