-- https://leetcode.com/problems/top-travellers/

select name , coalesce(sum(distance),0) as travelled_distance 
from users u left join rides r 
on u.id = r.user_id
group by u.id , u.name 
order by 2 desc , 1 