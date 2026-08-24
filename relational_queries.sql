SELECT a.owner_name, nk.alias_value, a.balance
FROM accounts a
         JOIN natural_keys nk ON a.id = nk.account_id
WHERE nk.alias_value = 'alice@example.com';

SELECT a.owner_name, le.transaction_type, le.amount
FROM accounts a
         JOIN ledger_entries le ON a.id = le.account_id
WHERE a.id = 'a1b2c3d4-e5f6-7a8b-9c0d-1e2f3a4b5c6d';