SECFIN — ENTITY RELATIONSHIP DIAGRAM
Portfolio 1: Database Design and Modelling

1. CUSTOMERS
-------------------------
customer_id  (Primary Key)
full_name
email        (Unique, Not Null)
phone        (Unique, Not Null)
created_at

2. ACCOUNTS
-------------------------
account_id      (Primary Key)
customer_id     (Foreign Key → CUSTOMERS.customer_id)
account_number  (Unique, Not Null)
balance         (Not Null, Default 0.00, Must be >= 0)
currency        (Not Null, Default NGN)
status          (Not Null, active / suspended / closed)
opened_at

3. TRANSACTIONS
-------------------------
transaction_id   (Primary Key)
transaction_type (deposit / withdrawal / transfer)
from_account_id  (Foreign Key → ACCOUNTS.account_id, Nullable)
to_account_id    (Foreign Key → ACCOUNTS.account_id, Nullable)
amount           (Not Null, Must be > 0)
status           (pending / completed / failed)
created_at

RELATIONSHIPS
-------------------------
CUSTOMERS 1 -------- 0..* ACCOUNTS
One customer can own multiple accounts.
Each account belongs to one customer.

ACCOUNTS 1 -------- 0..* TRANSACTIONS (Source)
An account can be the source of many transactions.
A deposit has no source account.

ACCOUNTS 1 -------- 0..* TRANSACTIONS (Destination)
An account can receive many transactions.
A withdrawal has no destination account.

DESIGN NOTES
-------------------------
1. Primary keys uniquely identify each record.
2. Foreign keys maintain relationships between tables.
3. UNIQUE constraints prevent duplicate customer emails,
   phone numbers, and account numbers.
4. CHECK constraints reject invalid balances, transaction
   amounts, transaction types, and statuses.
5. The transaction table supports deposits, withdrawals,
   and transfers using nullable source and destination IDs.
6. All data used in this portfolio is fictional.