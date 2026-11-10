Portfolio 2: Query Processing and Optimisation

1. Objective

This portfolio examines how PostgreSQL processes SQL queries and chooses execution plans. It focuses on query planning, indexing, table statistics, and performance analysis using `EXPLAIN ANALYZE`.

2. Test Environment

Database: PostgreSQL 18
Database name: `walletdb`
Case study: SecFin Secure Finance Wallet
Test data: Three initial accounts, followed by 1,000 additional test accounts.

3. Query Optimisation Tests

Test 1: Customer Lookup

The query filtered accounts using `customer_id`. On the original small dataset, PostgreSQL used a sequential scan. After creating the `idx_accounts_customer_id` index, adding test records, and refreshing statistics, PostgreSQL used a Bitmap Index Scan.

The larger dataset contained 334 accounts matching customer ID 1. The estimated row count matched the actual result after statistics were refreshed.

Test 2: Account Number Lookup

The query searched for account number `SEC100001`. PostgreSQL initially used a sequential scan on the three-row table. With the larger dataset, it used an Index Scan through `accounts_account_number_key`, the index automatically created by the UNIQUE constraint.

Test 3: Execution Plan Comparison

The `EXPLAIN ANALYZE` results were used to examine scan types, estimated and actual rows, buffer activity, and execution times. The tests demonstrated that PostgreSQL chooses plans according to estimated costs and available statistics rather than always using an index.

4. Files and Evidence

- `Uchidiuno_Olisaemeka_QueryPlanComparison.md`  documents the execution plan comparisons.
- `Uchidiuno_Olisaemeka_IndexTest.sql`  contains the index test query.
- `Uchidiuno_Olisaemeka_AccountLookupTest.md` — documents the account lookup results.


5. Conclusion

This portfolio demonstrates practical use of query execution plans, indexing, and database statistics in PostgreSQL. The results show that indexes can support targeted lookups, but their use and performance impact depend on the query, dataset, and planner cost estimates. Individual execution times are observations rather than conclusive proof of performance improvement.
