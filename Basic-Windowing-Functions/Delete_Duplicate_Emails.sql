-- https://leetcode.com/problems/delete-duplicate-emails/

-- visit the basic joins folder for the another approach of solving the same problem

delete from person where id in (
with cte as (select * , row_number() over(partition by email order by id) as rn
from person )
select id from cte where rn>1)

-- key point- 
-- MySQL does not allow the update or delete operation on the table which is used in the inner select. That's why
-- wrapping up the select inside another select is mandatory



