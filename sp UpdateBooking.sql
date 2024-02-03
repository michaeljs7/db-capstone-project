DELIMITER $$
create procedure UpdateBooking(in booking_id int, in booking_date datetime)

begin
if exists (select 1 from booking where bookingid=booking_id )
then
update booking set bookingdate=booking_date where bookingid=booking_id;
select concat('Booking ',booking_id, ' has been changed to ', booking_date) as 'Booking Update';
else select 'Booking number does not exist' as 'Booking Update';
end if;
end $$
delimiter ;