-- https://leetcode.com/problems/sales-person/

select name from salesperson s left join (select sales_id 
from orders o inner join company c using(com_id)
where c.name = "RED") a
using(sales_id)
where a.sales_id is null