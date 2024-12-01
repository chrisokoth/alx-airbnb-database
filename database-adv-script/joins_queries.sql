SELECT User.user_id, User.first_name, User.last_name, User.email, 
       Booking.booking_id, Booking.start_date, Booking.end_date, Booking.total_price, Booking.status
FROM User
LEFT JOIN Booking ON User.user_id = Booking.user_id
UNION
SELECT User.user_id, User.first_name, User.last_name, User.email, 
       Booking.booking_id, Booking.start_date, Booking.end_date, Booking.total_price, Booking.status
FROM Booking
LEFT JOIN User ON User.user_id = Booking.user_id
ORDER BY user_id;
