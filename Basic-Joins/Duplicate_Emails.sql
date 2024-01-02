-- https://leetcode.com/problems/duplicate-emails/

select distinct p1.email from person p1
inner join person p2 on p1.id != p2.id
where p1.email = p2.email;

-- We can find duplicates by using self join

-- OR

select email from person
group by 1
having count(*) >1

-- we can also find duplicates by just using group by clause
-- The latter query runs much faster because no joins are used 
