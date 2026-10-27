SecFin Account Lookup Test

Query Tested

```sql
EXPLAIN ANALYZE
SELECT account_number, balance
FROM accounts
WHERE account_number = 'SEC100001';
```

Initial Results — Small Dataset

- Scan type: Sequential Scan
- Execution time: 0.038 ms
- Rows returned: 1
- Rows removed by filter: 2

Analysis

The `account_number` column has a UNIQUE constraint, which automatically creates a unique index in PostgreSQL. However, PostgreSQL initially chose a sequential scan because the table contained only three rows. For such a small table, scanning all rows can be cheaper than using an index.

Updated Results — Larger Dataset

After inserting 1,000 additional test accounts, PostgreSQL used an index scan.

- Index used: `accounts_account_number_key`
- Rows returned: 1
- Execution time: 0.056 ms
- Shared buffer hits: 3

Analysis

With the larger dataset, PostgreSQL selected the unique index to locate the account. This demonstrates that the query planner considers table size, available indexes, and estimated execution costs when choosing a query plan.

Conclusion

The test shows that having an index does not guarantee its use. PostgreSQL may choose a sequential scan for a small table and an index scan when the dataset grows. The measured execution times are individual observations and should not be treated as conclusive proof of a general performance improvement.
