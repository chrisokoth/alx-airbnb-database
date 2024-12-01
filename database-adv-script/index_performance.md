Step 1: Identify High-Usage Columns

To improve query performance, we need to analyze the columns most frequently used in WHERE, JOIN, and ORDER BY clauses. Based on the structure of your User, Booking, and Property tables, here are some likely candidates for indexing:

User Table:

email: Frequently used in WHERE clauses for user lookup (unique).
user_id: Used in JOIN and WHERE clauses for referencing users in other tables (such as Booking and Review).
role: Used to filter users by their role (guest, host, admin).
Booking Table:

user_id: Used to filter bookings by the user.
property_id: Used to filter bookings by property.
status: Often used in filtering and ordering bookings.
start_date and end_date: Used for filtering bookings based on dates.
Property Table:

property_id: Frequently used in JOIN operations with other tables like Booking, Review.
host_id: Used in JOIN to get properties listed by a specific host (from the User table).
location: Could be used in search operations to filter properties by location.

