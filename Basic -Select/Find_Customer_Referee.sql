-- https://leetcode.com/problems/find-customer-referee/

select name from customer
where coalesce(referee_id,0) <> 2
