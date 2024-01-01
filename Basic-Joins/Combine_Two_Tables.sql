-- https://leetcode.com/problems/combine-two-tables/

select firstname , lastname , city , state
from person p left join address a using(personId)