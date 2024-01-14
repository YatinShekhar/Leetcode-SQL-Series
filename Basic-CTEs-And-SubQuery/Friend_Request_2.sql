-- https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/ 

with cte as (select requester_id from requestaccepted
union all
select accepter_id from requestaccepted)
select requester_id as id , count(*) as num
from cte
group by 1
order by 2 desc limit 1