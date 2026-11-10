
Portfolio 4: NoSQL and Advanced Data Models

1. Objective
This portfolio explores document-based NoSQL data modelling using the SecFin Secure Finance Wallet case study. It compares a document model with the relational database structure developed in Portfolio 1.

2. Scenario
SecFin records deposits, withdrawals, and transfers. A document database can store transaction details and related metadata in a flexible JSON-like structure, making it useful when records contain different attributes.

3. Proposed Document Model
Each transaction document can contain:
- Transaction ID and type
- Amount and currency
- Status and timestamp
- Source and destination account references
- Optional metadata, such as channel or transaction reference

4. Relational and NoSQL Comparison
The PostgreSQL model stores customers, accounts, and transactions in related tables with foreign keys and constraints. A document model can group related transaction details into one document, allowing flexible fields but requiring careful validation and consistency controls.

5. Data Integrity and Security
Transaction amounts should be positive, valid transaction types should be enforced, and account references should be checked. Sensitive customer information should not be stored unnecessarily. Access controls and suitable indexes should be used for secure and efficient queries.

6. Conclusion
This portfolio examines the benefits and trade-offs of document databases for wallet transaction records. NoSQL offers flexible document structures, while PostgreSQL remains suitable for relational integrity and financial operations that require reliable transactions.
