Portfolio 3: Transactions and Concurrency

1. Objective
This portfolio demonstrates PostgreSQL transaction management, rollback, and data consistency using the SecFin Secure Finance Wallet case study.

2. Transaction Commit Test
A ₦5,000 transfer was tested between two accounts using `BEGIN`, `UPDATE`, and `COMMIT`.

- Account 1 balance changed from ₦50,000 to ₦45,000.
- Account 2 balance changed from ₦75,000 to ₦80,000.

The test demonstrated how database changes can be committed together after successful execution.

3. Rollback Test
A ₦2,000 debit was executed inside a transaction and then cancelled using `ROLLBACK`.

The balance of Account 1 remained ₦45,000, while Account 2 remained ₦80,000. This confirmed that the uncommitted debit was undone.

4. Evidence
- `Uchidiuno_Olisaemeka_RollbackTest.md` — records the rollback test and its results.

5. Conclusion
The tests demonstrate how PostgreSQL's `COMMIT` and `ROLLBACK` commands control database changes. These mechanisms are important for maintaining wallet balance consistency. A production transfer should also validate both account updates and handle failures before committing.
