-- Example query before adding indexes
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'some-user-uuid';

-- Create index on Booking.user_id for faster lookups
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Example query after adding indexes
EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 'some-user-uuid';

-- Similarly for Property table
EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'New York';

CREATE INDEX idx_property_location ON Property(location);

EXPLAIN ANALYZE
SELECT * FROM Property WHERE location = 'New York';

-- For User table
EXPLAIN ANALYZE
SELECT * FROM User WHERE email = 'user@example.com';

CREATE INDEX idx_user_email ON User(email);

EXPLAIN ANALYZE
SELECT * FROM User WHERE email = 'user@example.com';
