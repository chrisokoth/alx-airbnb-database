Airbnb Database Schema
This project contains SQL scripts to create a normalized database schema for an Airbnb-like platform. The schema supports users, properties, bookings, payments, reviews, and amenities while ensuring data integrity and performance optimization.

Key Features
Normalized Design: The schema is in 3NF, reducing data redundancy.
Foreign Keys: Maintains referential integrity between tables.
Indexes: Optimizes query performance on commonly queried columns.
Enum Types: Defines controlled values for user roles, booking status, payment methods, and more.
Tables
User: Stores user authentication details.
Property: Manages property listings, including location and pricing.
Booking & Payment: Tracks bookings and payments.
Review: Stores user reviews with ratings.
Amenities: Manages amenities available at properties.
Setup
Run the script to create the database and tables.
The schema includes indexes for optimized performance.
Insert data into the tables based on the defined relationships.
