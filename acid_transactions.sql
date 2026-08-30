BEGIN;

SELECT balance FROM accounts
WHERE owner_name = 'Alice' FOR UPDATE;

UPDATE accounts
SET balance = 450.00
WHERE owner_name = 'Alice';

COMMIT;

SELECT balance FROM accounts
WHERE owner_name = 'Alice';

BEGIN;

SELECT balance FROM accounts
WHERE owner_name = 'Alice' FOR UPDATE;

UPDATE accounts
SET balance = 400.00
WHERE owner_name = 'Alice';

ROLLBACK;

SELECT balance FROM accounts
WHERE owner_name = 'Alice';