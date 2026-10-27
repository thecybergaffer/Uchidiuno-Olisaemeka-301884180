SecFin Query Plan Comparison

Objective
To examine how PostgreSQL chooses query execution plans and how indexing and dataset size affect those choices.

Test 1: Customer Lookup on a Small Dataset

```sql
EXPLAIN ANALYZE
SELECT *
FROM accounts
WHERE customer_id = 1;
```

Initial result:
- Scan type: Sequential Scan
- Rows returned: 1
- Execution time: 0.047 ms

PostgreSQL scanned the small accounts table because this was estimated to be an efficient approach.

Test 2: Customer Lookup on a Larger Dataset

After adding 1,000 test accounts and refreshing the table statistics with `ANALYZE accounts`, PostgreSQL used a Bitmap Index Scan with `idx_accounts_customer_id`.

- Rows returned: 334
- Estimated rows: 334
- Execution time: 18.395 ms

The updated estimate matched the actual number of matching rows. PostgreSQL used the index to identify matching records and then accessed the relevant table pages.

Test 3: Unique Account Number Lookup

```sql
EXPLAIN ANALYZE
SELECT account_number, balance
FROM accounts
WHERE account_number = 'SEC100001';
```

On the larger dataset, PostgreSQL used an Index Scan with `accounts_account_number_key`.

- Rows returned: 1
- Execution time: 0.056 ms

The index was created automatically by the UNIQUE constraint on `account_number`.

Overall Analysis

The tests demonstrate that PostgreSQL's query planner selects execution plans based on estimated costs, available indexes, and table statistics. A sequential scan may be suitable for a very small table, while index-based plans may be selected as data grows.

Execution times vary between runs and are affected by factors such as caching and system activity. Therefore, a single timing result is not enough to prove that an index always improves performance.

Conclusion

The practical tests improved my understanding of query execution plans, indexing, table statistics, and the role of `EXPLAIN ANALYZE` in examining query performance.
