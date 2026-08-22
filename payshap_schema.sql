CREATE TABLE accounts (
                          id UUID PRIMARY KEY,
                          owner_name VARCHAR(50) NOT NULL,
                          balance NUMERIC(19, 4) NOT NULL,
                          is_active BOOLEAN NOT NULL DEFAULT TRUE,
                          created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE natural_keys (
                              id UUID PRIMARY KEY,
                              account_id UUID NOT NULL REFERENCES accounts(id),
                              alias_value VARCHAR(100) UNIQUE NOT NULL,
                              is_active BOOLEAN NOT NULL DEFAULT TRUE,
                              key_type VARCHAR(20) NOT NULL
);

CREATE TABLE transactions (
                              id UUID PRIMARY KEY,
                              idempotency_key VARCHAR(100) UNIQUE NOT NULL,
                              status VARCHAR(20) NOT NULL,
                              amount NUMERIC(19, 4) NOT NULL,
                              created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE ledger_entries (
                                id UUID PRIMARY KEY,
                                transaction_id UUID NOT NULL REFERENCES transactions(id),
                                account_id UUID NOT NULL REFERENCES accounts(id),
                                amount NUMERIC(19, 4) NOT NULL,
                                transaction_type VARCHAR(6) NOT NULL,
                                created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP
);