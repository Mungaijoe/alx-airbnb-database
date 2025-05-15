
---

## 📌 Project Description

The project models a simplified version of an Airbnb-like platform, supporting user roles such as **guests**, **hosts**, and **admins**. Key functionality includes:

- Property listing and management
- Booking and payments
- User messaging
- Reviews and ratings

---

## 📊 Entity Relationship Diagram (ERD)

- The ERD is available in two formats:
  - `alx-airbnb-database.drawio`: Editable diagram created using [Draw.io](https://app.diagrams.net)
  - `requirements.md`: Mermaid.js code for text-based rendering of the ERD

To view the `.drawio` file, open it with [Draw.io Desktop](https://github.com/jgraph/drawio-desktop) or the online editor.

To render the Mermaid diagram in `requirements.md`, use:
- [VS Code with Markdown Preview Mermaid Support](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid)
- GitHub or GitLab's built-in Mermaid rendering (if supported)

---

## 🗃️ Database Entities

The following main entities are modeled:

- `User`
- `Property`
- `Booking`
- `Payment`
- `Review`
- `Message`

Each entity includes fields with appropriate data types, constraints, and relationships (foreign keys).

---

## ✅ Features Covered

- Unique and non-null constraints
- Enum types (roles, booking status, payment methods)
- Indexing on primary keys and frequently queried fields
- Foreign key relationships between entities
- Timestamp fields for record tracking



