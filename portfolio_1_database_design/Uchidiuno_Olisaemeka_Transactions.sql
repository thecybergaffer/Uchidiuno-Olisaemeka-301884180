CREATE TABLE transactions (
    transaction_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    transaction_type VARCHAR(20) NOT NULL,
    from_account_id INTEGER,
    to_account_id INTEGER,
    amount NUMERIC(14,2) NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'pending',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_transaction_from
        FOREIGN KEY (from_account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT fk_transaction_to
        FOREIGN KEY (to_account_id)
        REFERENCES accounts(account_id),

    CONSTRAINT chk_transaction_amount
        CHECK (amount > 0),

    CONSTRAINT chk_transaction_type
        CHECK (transaction_type IN ('deposit', 'withdrawal', 'transfer')),

    CONSTRAINT chk_transaction_status
        CHECK (status IN ('pending', 'completed', 'failed')),

    CONSTRAINT chk_transaction_accounts
        CHECK (
            (transaction_type = 'deposit'
                AND from_account_id IS NULL
                AND to_account_id IS NOT NULL)
            OR
            (transaction_type = 'withdrawal'
                AND from_account_id IS NOT NULL
                AND to_account_id IS NULL)
            OR
            (transaction_type = 'transfer'
                AND from_account_id IS NOT NULL
                AND to_account_id IS NOT NULL
                AND from_account_id <> to_account_id)
        )
);