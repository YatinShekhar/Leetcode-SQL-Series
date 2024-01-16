-- https://leetcode.com/problems/investments-in-2016/description/

select round(sum(tiv_2016),2) as tiv_2016 from insurance
inner join
(select pid from insurance i inner join (
select lat , lon from insurance
group by 1 , 2 
having count(*) = 1) a
on i.lat = a.lat and i.lon = a.lon 
intersect 
select pid from insurance i inner join (
select tiv_2015
from insurance
group by 1 having count(*) > 1) a
on i.tiv_2015 = a.tiv_2015) b
using(pid)