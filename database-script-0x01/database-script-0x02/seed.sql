-- Inserting sample users
INSERT INTO User (first_name, last_name, email, password_hash, phone_number, role) VALUES
('John', 'Doe', 'john.doe@example.com', 'password123', '123-456-7890', 'guest'),
('Jane', 'Smith', 'jane.smith@example.com', 'securepass456', '987-654-3210', 'host'),
('Admin', 'User', 'admin@example.com', 'adminpass789', '555-000-0000', 'admin');

-- Inserting sample properties
INSERT INTO Property (host_id, name, description, location, pricepernight) VALUES
((SELECT user_id FROM User WHERE email = 'jane.smith@example.com'), 'Central Park View Apartment', 'Spacious 2-bedroom apartment with a stunning view of Central Park.', 'New York, NY', 150.00),
((SELECT user_id FROM User WHERE email = 'jane.smith@example.com'), 'Luxury Villa by the Beach', 'A luxury 5-bedroom villa with a private beach.', 'Miami, FL', 250.00),
((SELECT user_id FROM User WHERE email = 'jane.smith@example.com'), 'Cozy Studio in the City', 'A modern studio apartment in the heart of the city.', 'Los Angeles, CA', 100.00);

-- Inserting sample bookings
INSERT INTO Booking (property_id, user_id, start_date, end_date, total_price, status) VALUES
((SELECT property_id FROM Property WHERE name = 'Central Park View Apartment'), (SELECT user_id FROM User WHERE email = 'john.doe@example.com'), '2024-06-15', '2024-06-20', 750.00, 'confirmed'),
((SELECT property_id FROM Property WHERE name = 'Luxury Villa by the Beach'), (SELECT user_id FROM User WHERE email = 'john.doe@example.com'), '2024-12-01', '2024-12-05', 1250.00, 'pending'),
((SELECT property_id FROM Property WHERE name = 'Cozy Studio in the City'), (SELECT user_id FROM User WHERE email = 'john.doe@example.com'), '2024-05-01', '2024-05-03', 300.00, 'confirmed');


-- Inserting sample payments
INSERT INTO Payment (booking_id, amount, payment_method) VALUES
((SELECT booking_id FROM Booking WHERE total_price = 750.00), 750.00, 'credit_card'),
((SELECT booking_id FROM Booking WHERE total_price = 1250.00), 1250.00, 'paypal'),
((SELECT booking_id FROM Booking WHERE total_price = 300.00), 300.00, 'stripe');


-- Inserting sample reviews
INSERT INTO Review (property_id, user_id, rating, comment) VALUES
((SELECT property_id FROM Property WHERE name = 'Central Park View Apartment'), (SELECT user_id FROM User WHERE email = 'john.doe@example.com'), 5, 'Amazing place with a great view, would definitely stay again!'),
((SELECT property_id FROM Property WHERE name = 'Luxury Villa by the Beach'), (SELECT user_id FROM User WHERE email = 'john.doe@example.com'), 4, 'Wonderful villa but a bit far from the city center.'),
((SELECT property_id FROM Property WHERE name = 'Cozy Studio in the City'), (SELECT user_id FROM User WHERE email = 'john.doe@example.com'), 3, 'The studio was nice, but the bathroom could use some updates.');


-- Inserting sample messages
INSERT INTO Message (sender_id, recipient_id, message_body) VALUES
((SELECT user_id FROM User WHERE email = 'john.doe@example.com'), (SELECT user_id FROM User WHERE email = 'jane.smith@example.com'), 'Hi, I would like to confirm my booking for the apartment next month.'),
((SELECT user_id FROM User WHERE email = 'jane.smith@example.com'), (SELECT user_id FROM User WHERE email = 'john.doe@example.com'), 'Your booking has been confirmed! Looking forward to hosting you.'),
((SELECT user_id FROM User WHERE email = 'john.doe@example.com'), (SELECT user_id FROM User WHERE email = 'jane.smith@example.com'), 'Can you provide more details on the amenities at the villa?');


