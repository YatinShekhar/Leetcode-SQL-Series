-- https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

select unique_id , name from employees e left join employeeuni  eu 
using(id) 