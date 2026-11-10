SecFin Database Relationships

The SecFin database uses three related tables: Customers, Accounts, and Transactions.

The Customers table stores customer information and uses `customer_id` as its primary key. The Accounts table uses `account_id` as its primary key and `customer_id` as a foreign key to identify the account owner. This relationship allows one customer to own multiple accounts while ensuring each account is linked to an existing customer.

The Transactions table records deposits, withdrawals, and transfers. Its `from_account_id` and `to_account_id` fields reference the Accounts table. These fields can be NULL where appropriate: deposits do not require a source account, while withdrawals do not require a destination account.

Primary keys uniquely identify records, while foreign keys maintain referential integrity. UNIQUE and CHECK constraints help prevent duplicate identifiers and invalid values, such as negative account balances or zero-value transactions.

This design separates customer, account, and transaction data to reduce unnecessary duplication and support reliable data management. All sample records in this portfolio are fictional.