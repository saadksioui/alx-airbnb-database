-- Indexes for performance optimization

-- User Table
CREATE INDEX idx_user_user_id ON User(user_id);

-- Booking Table
CREATE INDEX idx_booking_booking_id ON Booking(booking_id);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Property Table
CREATE INDEX idx_property_property_id ON Property(property_id);

-- Review Table
CREATE INDEX idx_review_property_id ON Review(property_id);
