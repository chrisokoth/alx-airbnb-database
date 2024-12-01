-- Initial query to retrieve all bookings along with user, property, and payment details
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price AS booking_total_price,
    b.status AS booking_status,
    u.user_id,
    u.first_name AS user_first_name,
    u.last_name AS user_last_name,
    u.email AS user_email,
    u.phone_number AS user_phone_number,
    p.property_id,
    p.name AS property_name,
    p.location AS property_location,
    p.pricepernight AS property_price_per_night,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date AS payment_date,
    pay.payment_method
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id;


-- Analyze the query's performance using EXPLAIN
EXPLAIN SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price AS booking_total_price,
    b.status AS booking_status,
    u.user_id,
    u.first_name AS user_first_name,
    u.last_name AS user_last_name,
    u.email AS user_email,
    u.phone_number AS user_phone_number,
    p.property_id,
    p.name AS property_name,
    p.location AS property_location,
    p.pricepernight AS property_price_per_night,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date AS payment_date,
    pay.payment_method
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id;


-- Refactored query to improve performance by adding indexes and reducing unnecessary joins
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price AS booking_total_price,
    b.status AS booking_status,
    u.user_id,
    u.first_name AS user_first_name,
    u.last_name AS user_last_name,
    u.email AS user_email,
    u.phone_number AS user_phone_number,
    p.property_id,
    p.name AS property_name,
    p.location AS property_location,
    p.pricepernight AS property_price_per_night,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date AS payment_date,
    pay.payment_method
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed'; -- Example filter to reduce data


-- Create index on user_id in User table
CREATE INDEX idx_user_id ON User(user_id);

-- Create index on property_id in Property table
CREATE INDEX idx_property_id ON Property(property_id);

-- Create index on booking_id in Booking table
CREATE INDEX idx_booking_id ON Booking(booking_id);

-- Create index on user_id in Booking table for faster filtering/joining
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Create index on property_id in Booking table for faster filtering/joining
CREATE INDEX idx_booking_property_id ON Booking(property_id);



-- Re-run the EXPLAIN to check the performance after adding indexes
EXPLAIN SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price AS booking_total_price,
    b.status AS booking_status,
    u.user_id,
    u.first_name AS user_first_name,
    u.last_name AS user_last_name,
    u.email AS user_email,
    u.phone_number AS user_phone_number,
    p.property_id,
    p.name AS property_name,
    p.location AS property_location,
    p.pricepernight AS property_price_per_night,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date AS payment_date,
    pay.payment_method
FROM 
    Booking b
JOIN 
    User u ON b.user_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.status = 'confirmed';
