-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '0987654321', 'host', CURRENT_TIMESTAMP),
  ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Admin', 'admin@example.com', 'hashed_pw_3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Sunny Apartment', 'A cozy place near the beach.', 'Barcelona, Spain', 95.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'Mountain Retreat', 'Cabin in the woods with a great view.', 'Zermatt, Switzerland', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', '2025-07-10', '2025-07-15', 475.00, 'confirmed', CURRENT_TIMESTAMP),
  ('b2222222-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', '2025-08-01', '2025-08-05', 480.00, 'pending', CURRENT_TIMESTAMP);

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('p1111111-pppp-pppp-pppp-ppppppppppp1', 'b1111111-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 475.00, CURRENT_TIMESTAMP, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('r1111111-rrrr-rrrr-rrrr-rrrrrrrrrrr1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Super clean and well-located.', CURRENT_TIMESTAMP);

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('m1111111-mmmm-mmmm-mmmm-mmmmmmmmmmm1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi Bob, is your apartment available in July?', CURRENT_TIMESTAMP),
  ('m2222222-mmmm-mmmm-mmmm-mmmmmmmmmmm2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes, it is available from July 10 to 15.', CURRENT_TIMESTAMP);
