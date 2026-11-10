SELECT
    c.full_name,
    a.account_number,
    a.balance,
    a.currency,
    a.status
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
ORDER BY c.customer_id;