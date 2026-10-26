-- SecFin test data: fictional customers
INSERT INTO customers (full_name, email, phone)
VALUES
    ('Ada Okafor', 'ada@example.com', '08030000001'),
    ('Tunde Bello', 'tunde@example.com', '08030000002'),
    ('Mary James', 'mary@example.com', '08030000003');

-- SecFin test data: wallet accounts
INSERT INTO accounts (customer_id, account_number, balance)
VALUES
    (1, 'SEC100001', 50000.00),
    (2, 'SEC100002', 75000.00),
    (3, 'SEC100003', 30000.00);