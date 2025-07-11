# Join Queries – Airbnb Clone Database

This directory contains advanced SQL queries using JOINs to retrieve relational data across multiple tables.

## Queries Included

1. **INNER JOIN**
   Retrieves all bookings and the users who made them.

2. **LEFT JOIN**
   Retrieves all properties and their reviews. Properties without reviews are still included.

3. **FULL OUTER JOIN**
   Retrieves all users and all bookings, even if there's no matching relationship.
   _Note: Use `UNION` version if using MySQL (since it doesn't support `FULL OUTER JOIN` natively)._

## File List

- `joins_queries.sql`: SQL queries
- `README.md`: This documentation
