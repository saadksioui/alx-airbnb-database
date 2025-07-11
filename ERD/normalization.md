# Normalization of Airbnb Clone Database

## 📌 Objective

This document explains how the Airbnb Clone database design adheres to normalization principles up to the **Third Normal Form (3NF)**. Normalization ensures data integrity, minimizes redundancy, and improves efficiency across the database schema.

---

## 🧱 Step 1: First Normal Form (1NF)

**✅ Definition:**
- Ensure that each column contains **atomic (indivisible)** values.
- Each record must be **uniquely identifiable** by a **primary key**.

**📌 Analysis:**
- All attributes in our tables store atomic values (e.g., `first_name`, `email`, `rating` are scalar).
- Each table has a unique primary key:
  - `user_id` for `User`,
  - `property_id` for `Property`, etc.

**✅ Status:** All tables satisfy 1NF.

---

## 🔗 Step 2: Second Normal Form (2NF)

**✅ Definition:**
- Must satisfy 1NF.
- Remove **partial dependencies** — no non-key attribute should depend on a part of a composite key.

**📌 Analysis:**
- All tables use **single-column primary keys (UUIDs)**.
- No composite keys exist, hence no partial dependencies.

**✅ Status:** All tables satisfy 2NF.

---

## 🔐 Step 3: Third Normal Form (3NF)

**✅ Definition:**
- Must satisfy 2NF.
- Remove **transitive dependencies** — non-key attributes should not depend on other non-key attributes.

**📌 Analysis and Adjustments:**

- `User` table:
  - No transitive dependencies. All attributes depend directly on `user_id`.

- `Property` table:
  - `host_id` correctly references `User`.
  - Attributes like `location`, `pricepernight`, `name` all depend only on `property_id`.

- `Booking` table:
  - `total_price` is **calculated**, but we assume it is stored due to business logic (e.g., historical pricing).
  - Otherwise, no transitive dependencies.

- `Payment` table:
  - All fields depend directly on `payment_id`.

- `Review` table:
  - `rating` and `comment` depend only on `review_id`.

- `Message` table:
  - `message_body` and `sent_at` depend only on `message_id`.

**Note:** ENUM values like `role`, `status`, `payment_method` could be separated into lookup tables to achieve even stricter normalization, but are acceptable inline for simplicity and performance.

**✅ Status:** All tables satisfy 3NF.

---

## ✅ Final Notes

- All entities are in **3NF**, with no repeating groups, no partial dependencies, and no transitive dependencies.
- This schema balances normalization with practical application performance by allowing calculated fields (e.g., `total_price`) where needed.

---

## 📁 Related Files

- Refer to `schema.sql` for SQL table definitions.
- Refer to `ERD/requirements.md` and `airbnb-erd.png` for visual representation.
