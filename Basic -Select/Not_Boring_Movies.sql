-- https://leetcode.com/problems/not-boring-movies/

select *
from cinema 
where id%2 = 1 and description != "Boring"
order by rating desc