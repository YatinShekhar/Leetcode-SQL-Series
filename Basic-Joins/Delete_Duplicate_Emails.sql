-- https://leetcode.com/problems/delete-duplicate-emails/

-- visit the windowing functions folder for the another approach of solving the same problem

delete from person where id in (
with cte as (
select p2.id from person p1 inner join person p2
on p1.email = p2.email and p1.id < p2.id)
select id from cte)

-- key point- 
-- MySQL does not allow the update or delete operation on the table which is used in the inner select. That's why
-- wrapping up the select inside another select is mandatory



