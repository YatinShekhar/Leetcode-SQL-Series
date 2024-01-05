-- https://leetcode.com/problems/rising-temperature/

select w1.id as Id
from weather w1 inner join weather w2 
on w1.recordDate = date_add(w2.recordDate , interval 1 day)
and w1.temperature > w2.temperature

-- without using lead/lag