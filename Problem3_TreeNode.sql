# Write your MySQL query statement below

select 
id,
case when p_id is null then 'Root'
     when id in (select distinct p_id from Tree) then 'Inner'
     else 'Leaf' end as type
from Tree;
 
#Using if condition
 
select
id,
if(p_id is null,'Root',if(id in (select distinct p_id from Tree),'Inner','Leaf')) as type
from Tree;
