delimiter $$
create procedure CancelBooking(in booking_id int)
begin
if exists (select 1 from booking where bookingid=booking_id)

then delete from booking where bookingid=booking_id;
select concat('Booking id ', booking_id, ' has been cancelled.') as 'Cancel Status';

else 
select concat('Booking id ', booking_id, ' does not exist.') as 'Cancel Status';
end if;
end $$

delimiter ;