DELIMITER $$
CREATE PROCEDURE `CheckBooking`(in date_to_check datetime, in table_no int)
begin
if exists (
select 1
from booking
where bookingdate=date_to_check
and tableno=table_no)
then
select concat('Table ',table_no, ' is already booked.') 'Booking Status';
else 
select 'Table is free'  'Booking Status';
end if;

end$$
DELIMITER ;
