Improvements Observed:
Faster Query Execution: After adding indexes, query execution times were significantly reduced. Queries that previously performed full table scans now utilize index scans, drastically improving performance.
Reduced I/O Operations: The use of indexes minimized the number of rows the database had to process, reducing disk I/O and speeding up data retrieval.
Efficient Join Operations: The new indexes on property_id in the Review and Booking tables optimized the join performance, making the queries much more efficient when joining large tables.