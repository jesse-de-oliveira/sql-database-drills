INSERT INTO accounts (id, owner_name, balance)
VALUES
    ('a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 'Alice', 500.00),
    ('f1e2d3c4-b5a6-9f8e-7d6c-5b4a3f2e1d0c', 'Bob', 100.00);

INSERT INTO natural_keys (id, account_id, alias_value, key_type)
VALUES
    ('11111111-2222-3333-4444-555555555555', 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 		'alice@example.com', 'EMAIL'),
    ('66666666-7777-8888-9999-000000000000', 'f1e2d3c4-b5a6-9f8e-7d6c-5b4a3f2e1d0c', '0825551234', 'PHONE');

INSERT INTO transactions (id, idempotency_key, status, amount)
VALUES ('99999999-9999-9999-9999-999999999999', 'tx-transfer-001', 'COMPLETED', 50.00);

INSERT INTO ledger_entries (id, transaction_id, account_id, amount, transaction_type)
VALUES
    ('22222222-2222-2222-2222-222222222222', '99999999-9999-9999-9999-999999999999', 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d', 50.00, 'DEBIT'),
    ('33333333-3333-3333-3333-333333333333', '99999999-9999-9999-9999-999999999999', 'f1e2d3c4-b5a6-9f8e-7d6c-5b4a3f2e1d0c', 50.00, 'CREDIT');

