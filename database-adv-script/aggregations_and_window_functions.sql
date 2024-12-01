-- using count
SELECT user_id, COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;


--window function

SELECT property_id, name, description, location, pricepernight,
       COUNT(*) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS booking_rank
FROM Property p
JOIN Booking b ON p.property_id = b.property_id
GROUP BY property_id
ORDER BY booking_rank;
