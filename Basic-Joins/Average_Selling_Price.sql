-- https://leetcode.com/problems/average-selling-price/

select p.product_id , coalesce(round(sum(price * units)/sum(units),2),0) as average_price
from prices p left join unitssold u
on p.product_id = u.product_id and purchase_date between start_date and end_date
group by 1