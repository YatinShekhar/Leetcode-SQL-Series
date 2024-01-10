-- https://leetcode.com/problems/monthly-transactions-i/

select left(trans_date , 7) as month , country ,
count(*) as trans_count , sum(case when state = "Approved" then 1 else 0 end)
as approved_count , sum(amount) as trans_total_amount , 
sum(case when state = "Approved" then amount else 0 end) as approved_total_amount
from transactions
group by 1 ,2