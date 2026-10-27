SecFin NoSQL Practical Test Report

1. Objective
To demonstrate document storage, flexible data structures, and query filtering using MongoDB Atlas for the SecFin Secure Finance Wallet case study.

2. Environment
- Platform: MongoDB Atlas
- Cluster: SecFinCluster
- Database: `secfin`
- Collection: `transactions`

3. Documents Created
Two fictional transaction documents were inserted.

- `SF-TXN-1001`: A completed ₦5,000 transfer from `SEC100001` to `SEC100002`.
- `SF-TXN-1002`: A completed ₦10,000 deposit into `SEC100001`, with additional nested metadata describing its source and review status.

The documents share core transaction fields, while the deposit contains an additional `metadata` object. This demonstrates the flexible structure of a document database.

4. Query Tests

Test 1: Filter by transaction type

Filter:
```json
{"transaction_type": "transfer"}
```

Result: One matching document, `SF-TXN-1001`.

Test 2: Find transactions above ₦5,000

Filter:
```json
{"amount": {"$gt": 5000}}
```

Result: One matching document, the ₦10,000 deposit, `SF-TXN-1002`.

5. Analysis
MongoDB stores transaction records as documents and supports queries on individual fields. Nested metadata can be added when required without making every document contain identical fields.

However, flexible document structures still require validation, access controls, and suitable consistency rules. These examples are test records and do not change the PostgreSQL wallet balances.

6. Conclusion
The practical exercise demonstrated document insertion, nested metadata, and field-based filtering in MongoDB Atlas. It also illustrated how a document model differs from the relational tables and constraints used in PostgreSQL.
