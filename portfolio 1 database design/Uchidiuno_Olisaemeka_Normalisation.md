# SecFin Database Normalisation

The SecFin database is designed to reduce data duplication and maintain data integrity.

First Normal Form (1NF): Each table has a primary key, and each field stores a single value. For example, customer names and email addresses are stored in separate columns.

Second Normal Form (2NF): The tables use single-column primary keys, so non-key attributes depend on the whole primary key. Customer details are stored in Customers rather than repeated in Accounts.

Third Normal Form (3NF): Customer details, account details, and transaction details are stored in separate tables. Non-key attributes describe the entity identified by their table's primary key, rather than unrelated entities.

Foreign keys connect the tables without unnecessarily duplicating customer information in every account or transaction record.

This structure supports consistent updates and makes the database easier to maintain. The design should still be reviewed against functional dependencies and the assessment requirements before claiming full 3NF compliance.