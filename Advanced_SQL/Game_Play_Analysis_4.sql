-- https://leetcode.com/problems/game-play-analysis-iv/

with cte as 
(select * , row_number() over(partition by player_id order by event_date) as rn
from activity)
, cte2 as (
select c1.player_id 
from cte c1 inner join cte c2 
on c1.player_id = c2.player_id and c1.event_date < c2.event_date
where datediff(c2.event_date , c1.event_date) = 1 and c1.rn = 1
group by 1)
select round((select count(player_id) from cte2)/(select count(distinct player_id) from activity),2) as fraction