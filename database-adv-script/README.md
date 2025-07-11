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

# Subquery Practice – Airbnb Clone Database

This file includes both correlated and non-correlated SQL subqueries that help extract specific insights from the database.

## Queries Included

1. **Non-Correlated Subquery**
   Retrieves all properties that have an average review rating greater than 4.0.

2. **Correlated Subquery**
   Retrieves all users who have made more than 3 bookings.

## File List

- `subqueries.sql`: SQL code for subqueries
- `README.md`: Description of the queries