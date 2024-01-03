-- https://leetcode.com/problems/employee-bonus/

-- Write a solution to report the name and bonus amount of each employee with a bonus less than 1000

select name , bonus from employee e
left join bonus b 
using(empId)
where coalesce(bonus, 0)< 1000 ;

-- the question involves each employee therefore left join is used to fetch all the employees.
-- now let suppose the employee did not get the bonus it means bonus field will be null. Now to include employee 
-- with null bonus into the result we used coalesce. 

-- coalesce - It returns the first non-null value from multiple expressions.
-- ifnull - It also returns the first non-null value but it only takes two expressions.