Portfolio 1: Database Design and Modelling

Project: SecFin — Secure Finance Wallet

1. System Overview
SecFin is a fictional digital wallet system designed to manage customer information, wallet accounts, balances, deposits, withdrawals, and transfers.

2. Database Design
The database uses PostgreSQL and contains three main tables:

customers: Stores customer names, email addresses, phone numbers, and registration dates.
accounts: Stores wallet account numbers, balances, currencies, and account statuses.
transactions: Records deposits, withdrawals, and transfers.

3. Relationships
Each customer can own multiple accounts. Each transaction can reference a source account, a destination account, or both, depending on the transaction type.

4. Integrity and Constraints
Primary keys uniquely identify records. Foreign keys maintain relationships between tables. UNIQUE constraints prevent duplicate customer emails, phone numbers, and account numbers. CHECK constraints validate transaction amounts, account balances, statuses, and transaction types.

5. Normalisation
The tables separate customer, account, and transaction information to reduce unnecessary duplication and improve data integrity.

6. Testing and Evidence
SQL scripts, an ER diagram, relationship documentation, normalisation notes, and constraint tests are included in this portfolio.

7. Conclusion
The design provides a structured foundation for a secure wallet database. Further work will address query optimisation, transaction concurrency, NoSQL models, and distributed databases.