
create procedure if not exists GetMaxQuantity()
select max(quantity) 'Max Quantity in Order'
from littlelemondb.order;

call GetMaxQuantity()
