SecFin Transaction Rollback Test

Objective
To verify that PostgreSQL can undo an uncommitted database change using `ROLLBACK`.

SQL Test
```sql
BEGIN;

UPDATE accounts
SET balance = balance - 2000
WHERE account_id = 1;

ROLLBACK;
```

Results

  Account   Balance before   Balance after rollback 
 SEC100001   ₦45,000           ₦45,000 
 SEC100002   ₦80,000           ₦80,000 

Analysis
The debit of ₦2,000 was executed inside a transaction but was not committed. The `ROLLBACK` command cancelled the change, leaving the account balance unchanged.

Conclusion
The test demonstrates how PostgreSQL rollback can undo uncommitted changes and help preserve data consistency when an operation must be cancelled.
