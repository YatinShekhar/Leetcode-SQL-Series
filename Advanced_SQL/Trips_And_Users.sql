-- https://leetcode.com/problems/trips-and-users/

with cte as (
select t.* , banned as client_banned from trips t
inner join 
(select * from users
where banned = "No" and role in ("client" , "driver")) as u
on t.client_id = u.users_id)
, cte2 as (
select cte.* , u.banned as driver_banned from cte 
inner join
(select * from users
where banned = "No" and role in ("client" , "driver")) as u
on cte.driver_id = u.users_id)
select request_at as Day, 
round(sum(case when status = "completed" then 0 else 1 end) * 1.0/count(*),2) as 
`Cancellation Rate`
from cte2
where request_at between "2013-10-01" and "2013-10-03"
group by 1;
