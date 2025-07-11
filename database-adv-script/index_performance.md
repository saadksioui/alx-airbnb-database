# Index Performance Analysis – Airbnb Clone Database

## Objective
Improve performance for frequently used queries by creating indexes on high-usage columns in `User`, `Booking`, `Property`, and `Review` tables.

---

## Indexed Columns
| Table     | Column         | Purpose                                |
|-----------|----------------|----------------------------------------|
| User      | user_id        | JOINs with Booking                     |
| Booking   | booking_id     | ORDER BY, WHERE                        |
| Booking   | user_id        | JOIN with User                         |
| Booking   | property_id    | JOIN with Property                     |
| Property  | property_id    | JOIN with Booking, Review              |
| Review    | property_id    | JOIN with Property                     |

---

## Performance Testing

### Query Tested (Before Indexing)
```sql
SELECT u.first_name, COUNT(b.booking_id)
FROM User u
JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id;
