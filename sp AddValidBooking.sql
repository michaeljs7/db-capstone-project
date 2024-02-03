DELIMITER $$
CREATE PROCEDURE AddValidBooking(in booking_id int,
								 in customer_id int, 
                                 in booking_date datetime,
                                 in table_no int,
                                 in employee_id int)
begin

start transaction;

insert booking 
values (booking_id, customer_id, booking_date, table_no,employee_id);


if exists (
SELECT 
    1
FROM
    booking
WHERE
    bookingdate = booking_date
        AND tableno = table_no
        and bookingid<>booking_id)   -- table already booked by another customer
 then 
        
		
    SELECT 
    CONCAT('Table ',
            table_no,
            ' is already booked. Booking cancelled.') 'Booking Status';
	   rollback;
        
else 
       
        select concat('Table ',table_no,' booked.') 'Booking Status';
         commit;
	   
end if;
end$$
DELIMITER ;
