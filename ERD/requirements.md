Entities and Attributes
User:

Attributes:
user_id (Primary Key, INT)
first_name (VARCHAR)
last_name (VARCHAR)
email (VARCHAR, Unique)
password_hash (VARCHAR)
phone_number (VARCHAR, Nullable)
role (ENUM: 'guest', 'host', 'admin')
created_at (Timestamp)
Property:

Attributes:
property_id (Primary Key, INT)
host_id (Foreign Key -> User.user_id)
name (VARCHAR)
description (TEXT)
location (VARCHAR)
pricepernight (DECIMAL)
created_at (Timestamp)
updated_at (Timestamp)
Booking:

Attributes:
booking_id (Primary Key, INT)
property_id (Foreign Key -> Property.property_id)
user_id (Foreign Key -> User.user_id)
start_date (DATE)
end_date (DATE)
total_price (DECIMAL)
status (ENUM: 'pending', 'confirmed', 'canceled')
created_at (Timestamp)
Payment:

Attributes:
payment_id (Primary Key, INT)
booking_id (Foreign Key -> Booking.booking_id)
amount (DECIMAL)
payment_date (Timestamp)
payment_method (ENUM: 'credit_card', 'paypal', 'stripe')
Review:

Attributes:
review_id (Primary Key, INT)
property_id (Foreign Key -> Property.property_id)
user_id (Foreign Key -> User.user_id)
rating (INT, Check: 1-5)
comment (TEXT)
created_at (Timestamp)
Message:

Attributes:
message_id (Primary Key, INT)
sender_id (Foreign Key -> User.user_id)
recipient_id (Foreign Key -> User.user_id)
message_body (TEXT)
sent_at (Timestamp)
Relationships
User to Property:

One User (host) can have many Properties.
This is a One-to-Many relationship between User and Property via host_id.
User to Booking:

One User (guest) can make many Bookings.
This is a One-to-Many relationship between User and Booking via user_id.
Property to Booking:

One Property can have many Bookings.
This is a One-to-Many relationship between Property and Booking via property_id.
Booking to Payment:

One Booking can have one Payment.
This is a One-to-One relationship between Booking and Payment via booking_id.
User to Review:

One User can write many Reviews.
This is a One-to-Many relationship between User and Review via user_id.
Property to Review:

One Property can have many Reviews.
This is a One-to-Many relationship between Property and Review via property_id.
User to Message:

One User can send many Messages.
This is a One-to-Many relationship between User and Message via sender_id.
User to Message (Recipient):

One User can receive many Messages.
This is a One-to-Many relationship between User and Message via recipient_id.
