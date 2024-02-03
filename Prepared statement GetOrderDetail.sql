prepare GetOrderDetail from 'select 
orderid,
quantity,
cost 
from littlelemondb.order o
join littlelemondb.booking b
on o.BookingID=b.BookingID
join littlelemondb.menuitems m 
on o.MenuItemID=m.MenuItemID
where orderid=?';

set @id=9001;
execute GetOrderDetail using @id;