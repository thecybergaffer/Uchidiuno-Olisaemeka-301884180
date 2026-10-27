SecFin Transfer Commit Test

Objective
To demonstrate how PostgreSQL commits account balance changes within a transaction.

SQL Test
```sql
BEGIN;

UPDATE accounts
SET balance = balance - 5000
WHERE account_id = 1
  AND balance >= 5000;

UPDATE accounts
SET balance = balance + 5000
WHERE account_id = 2;

COMMIT;

Results

Account    Starting balance  Final balance 
SEC100001   ₦50,000           ₦45,000 
SEC100002   ₦75,000           ₦80,000 

Analysis
The transfer reduced the source account by ₦5,000 and increased the destination account by the same amount. The total balance across the two accounts remained ₦125,000.

Conclusion
The test demonstrates the use of `BEGIN` and `COMMIT` to persist database changes. For a production system, additional checks are needed to confirm both updates affect exactly one row before committing.
