select itemname 'Menu Item'
from littlelemondb.menuitems
where menuitemid= any
(
select MenuItemID
from littlelemondb.order
where quantity>2)