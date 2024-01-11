-- https://leetcode.com/problems/market-analysis-i/

select u.user_id as buyer_id , min(u.join_date) as join_date, 
sum(case when year(o.order_date) = 2019 then 1 else 0 end) as
orders_in_2019
from users u left join orders o 
on u.user_id = o.buyer_id 
group by 1 