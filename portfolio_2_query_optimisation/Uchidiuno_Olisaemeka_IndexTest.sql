-- SecFin: index for account lookup by customer
CREATE INDEX idx_accounts_customer_id
ON accounts(customer_id);

-- Query used to examine the execution plan
EXPLAIN ANALYZE
SELECT *
FROM accounts
WHERE customer_id = 1;