-- USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
  ('uuid-user-1', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pass1', '0712345678', 'host', CURRENT_TIMESTAMP),
  ('uuid-user-2', 'Bob', 'Smith', 'bob@example.com', 'hashed_pass2', '0723456789', 'guest', CURRENT_TIMESTAMP),
  ('uuid-user-3', 'Carol', 'Miller', 'carol@example.com', 'hashed_pass3', NULL, 'guest', CURRENT_TIMESTAMP);

-- PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES 
  ('uuid-prop-1', 'uuid-user-1', 'Beachside Bungalow', 'Beautiful oceanfront property.', 'Mombasa', 20000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('uuid-prop-2', 'uuid-user-1', 'Nairobi Apartment', 'Modern city apartment.', 'Nairobi', 50000, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
  ('uuid-book-1', 'uuid-prop-1', 'uuid-user-2', '2025-06-01', '2025-06-05', 30000., 'confirmed', CURRENT_TIMESTAMP),
  ('uuid-book-2', 'uuid-prop-2', 'uuid-user-3', '2025-06-10', '2025-06-12', 10000, 'pending', CURRENT_TIMESTAMP);

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
  ('uuid-pay-1', 'uuid-book-1', 30000, CURRENT_TIMESTAMP, 'paypal'),
  ('uuid-pay-2', 'uuid-book-2', 10000, CURRENT_TIMESTAMP, 'credit_card');

-- REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
  ('uuid-rev-1', 'uuid-prop-1', 'uuid-user-2', 5, 'Amazing place and great view!', CURRENT_TIMESTAMP),
  ('uuid-rev-2', 'uuid-prop-2', 'uuid-user-3', 4, 'Clean and comfy.', CURRENT_TIMESTAMP);

-- MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
  ('uuid-msg-1', 'uuid-user-2', 'uuid-user-1', 'Hi, is the property available in June?', CURRENT_TIMESTAMP),
  ('uuid-msg-2', 'uuid-user-1', 'uuid-user-2', 'Yes! It’s available from June 1st to June 5th.', CURRENT_TIMESTAMP);