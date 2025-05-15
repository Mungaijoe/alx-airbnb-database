# Normalization Report: ALX Airbnb Database

## Objective

This document explains how the `alx-airbnb-database` schema has been normalized according to the principles of database normalization, specifically up to the **Third Normal Form (3NF)**.

---

## First Normal Form (1NF)

**Rule**: Each column must contain atomic values; no repeating groups.

- All attributes in all tables hold atomic values (e.g., `first_name`, `email`, `pricepernight`).
- No multivalued or composite attributes exist.
  
✅ **Pass**

---

## Second Normal Form (2NF)

**Rule**: Table must be in 1NF, and all non-key attributes must depend on the whole primary key.

- All tables use **UUIDs** as primary keys (not composite keys).
- Therefore, no partial dependencies exist.

✅ **Pass**

---

## Third Normal Form (3NF)

**Rule**: Table must be in 2NF and have no transitive dependencies.

- No non-key attribute depends on another non-key attribute.
- Example: `role`, `email`, `location`, `total_price`, etc., all depend **only on the primary key** of their respective tables.
- Foreign keys (`host_id`, `user_id`, `property_id`) are used appropriately without duplicating external entity attributes.

✅ **Pass**

---

## Conclusion

The `alx-airbnb-database` schema has been fully normalized up to **Third Normal Form (3NF)**. It is free of:
- Data redundancy
- Partial dependencies
- Transitive dependencies

This ensures data integrity and minimizes anomalies in insert, update, and delete operations.
