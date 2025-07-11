# Airbnb Clone – Database Seeding Script

## 📄 File: seed.sql

This script contains SQL `INSERT` statements to populate the database with sample data for testing and development purposes.

### 🧍 User Table
- 3 users: guest (Alice), host (Bob), and admin (Charlie)

### 🏡 Property Table
- 2 properties hosted by Bob

### 📅 Booking Table
- 2 bookings by Alice

### 💳 Payment Table
- 1 completed payment for a confirmed booking

### 🌟 Review Table
- 1 review written by Alice for a property she booked

### 💬 Message Table
- 2 messages exchanged between Alice (guest) and Bob (host)

## 🔐 Notes
- UUIDs are hardcoded for consistency across foreign key references.
- Timestamps use `CURRENT_TIMESTAMP` to simulate real-time activity.
- `total_price` is assumed to be pre-calculated for simplicity.
