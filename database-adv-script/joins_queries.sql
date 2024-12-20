-- SELECT Booking.booking_id, Booking.start_date, Booking.end_date, Booking.total_price, Booking.status, 
--        User.user_id, User.first_name, User.last_name, User.email
-- FROM Booking
-- INNER JOIN User ON Booking.user_id = User.user_id;

-- SELECT Property.property_id, Property.name, Property.location, Property.pricepernight, 
--        Review.review_id, Review.rating, Review.comment
-- FROM Property
-- LEFT JOIN Review ON Property.property_id = Review.property_id
-- ORDER BY Property.property_id;

-- FULL OUTER JOIN simulation using UNION


SELECT User.user_id, User.first_name, User.last_name, User.email, 
       Booking.booking_id, Booking.start_date, Booking.end_date, Booking.total_price, Booking.status
FROM User
LEFT JOIN Booking ON User.user_id = Booking.user_id

UNION

SELECT User.user_id, User.first_name, User.last_name, User.email, 
       Booking.booking_id, Booking.start_date, Booking.end_date, Booking.total_price, Booking.status
FROM Booking
LEFT JOIN User ON User.user_id = Booking.user_id
ORDER BY User.user_id;

