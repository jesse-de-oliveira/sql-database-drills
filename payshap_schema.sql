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