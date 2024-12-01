SELECT Booking.booking_id, Booking.start_date, Booking.end_date, Booking.total_price, Booking.status, 
       User.user_id, User.first_name, User.last_name, User.email
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id
ORDER BY Property.property_id;
