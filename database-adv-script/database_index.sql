
CREATE INDEX idx_user_email ON User(email);

CREATE INDEX idx_user_id ON User(user_id);

CREATE INDEX idx_user_role ON User(role);

CREATE INDEX idx_booking_user_id ON Booking(user_id);

CREATE INDEX idx_booking_property_id ON Booking(property_id);

CREATE INDEX idx_booking_status ON Booking(status);

CREATE INDEX idx_booking_start_date ON Booking(start_date);

CREATE INDEX idx_booking_end_date ON Booking(end_date);

CREATE INDEX idx_property_id ON Property(property_id);

CREATE INDEX idx_property_host_id ON Property(host_id);

CREATE INDEX idx_property_location ON Property(location);
