INSERT INTO transactions (
    transaction_type,
    from_account_id,
    to_account_id,
    amount,
    status
)
VALUES (
    'deposit',
    NULL,
    1,
    10000.00,
    'completed'
);

SELECT * FROM transactions;