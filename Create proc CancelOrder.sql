
CREATE PROCEDURE `CancelOrder`(in order_id int)

begin
if exists (select 1 from littlelemondb.order where orderid=order_id)
   then
      begin
       delete from littlelemondb.order
         where orderid=order_id;

       SELECT CONCAT('Order: ', order_id, ' is cancelled.') 'Confirmation';

     end;

else select 'Order id does not exist' as 'Error';
end if;
end$$
DELIMITER ;
