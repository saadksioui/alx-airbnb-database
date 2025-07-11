-- 1. INNER JOIN: Get all bookings and the respective users who made them
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM
    Booking b
INNER JOIN
    User u ON b.user_id = u.user_id;

-- 2. LEFT JOIN: Get all properties and their reviews, including properties without reviews
SELECT
    p.property_id,
    p.name AS property_name,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM
    Property p
LEFT JOIN
    Review r ON p.property_id = r.property_id;

-- 3. FULL OUTER JOIN: Get all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- Note: FULL OUTER JOIN is not supported in MySQL but works in PostgreSQL
SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.start_date,
    b.end_date
FROM
    User u
FULL OUTER JOIN
    Booking b ON u.user_id = b.user_id;

-- Alternative for MySQL (emulating FULL OUTER JOIN using UNION of LEFT and RIGHT JOIN)
-- Uncomment this version if using MySQL:
-- SELECT
--     u.user_id,
--     u.first_name,
--     u.last_name,
--     b.booking_id,
--     b.start_date,
--     b.end_date
-- FROM
--     User u
-- LEFT JOIN
--     Booking b ON u.user_id = b.user_id
-- UNION
-- SELECT
--     u.user_id,
--     u.first_name,
--     u.last_name,
--     b.booking_id,
--     b.start_date,
--     b.end_date
-- FROM
--     Booking b
-- RIGHT JOIN
--     User u ON u.user_id = b.user_id;
