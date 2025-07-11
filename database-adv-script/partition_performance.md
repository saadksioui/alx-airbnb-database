# Booking Table Partitioning – Performance Evaluation

## Objective
Optimize query performance for the large `Booking` table by partitioning based on `start_date`.

---

## Partitioning Strategy
We applied **RANGE partitioning** using `YEAR(start_date)` to split the `Booking` table by year:

- `Booking_2023` → Bookings in 2023
- `Booking_2024` → Bookings in 2024
- `Booking_2025` → Bookings in 2025

---

## Performance Test

### Query Tested:
```sql
SELECT * FROM Booking WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';
