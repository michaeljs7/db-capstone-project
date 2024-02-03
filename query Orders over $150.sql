use littlelemondb;

select c.customerid,
c.name  'Customer Name',
o.OrderID,
o.Quantity *mu.Cost 'Order Cost',
mu.ItemName,
mu.ItemType,
m.Cuisine
from littlelemondb.customer c join littlelemondb.booking b on c.customerid=b.customerid
join littlelemondb.order o on b.bookingid=o.bookingid 
join littlelemondb.menuitems mu on o.menuitemid=mu.menuitemid
join littlelemondb.menu m on mu.menuid=m.menuid
where o.Quantity *mu.Cost>150
order by o.Quantity *mu.Cost
