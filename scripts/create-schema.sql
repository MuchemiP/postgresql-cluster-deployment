CREATE TABLE banks (
    id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    bank_code VARCHAR(5) NOT NULL UNIQUE,
    bank_name VARCHAR(100) NOT NULL UNIQUE,
    short_name VARCHAR(10) NOT NULL UNIQUE, 
    swift_code VARCHAR(20) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE bank_accounts (
    id SERIAL PRIMARY KEY,
    account_number VARCHAR(20) NOT NULL,
    bank_id INT NOT NULL,
    user_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    currency VARCHAR(3) NOT NULL DEFAULT 'KES', 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (account_number, bank_id),
    FOREIGN KEY (bank_id) REFERENCES banks(id) ON DELETE CASCADE
);


