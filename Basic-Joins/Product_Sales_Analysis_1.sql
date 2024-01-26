-- https://leetcode.com/problems/product-sales-analysis-i/

select product_name , year , price 
from sales s left join product p
using(product_id)