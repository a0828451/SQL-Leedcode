select name 
from Employee 
where id in(
    select managerID 
    from Employee 
    Group by managerID 
    having count(*)>=5
);
