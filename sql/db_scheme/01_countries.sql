USE products_db;

CREATE TABLE countries (
    id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    iso_code CHAR(3) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE currencies (
    id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    code CHAR(3) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    symbol VARCHAR(10) NULL
);

CREATE TABLE country_currencies (
    country_id SMALLINT UNSIGNED NOT NULL,
    currency_id SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (country_id, currency_id),
    CONSTRAINT fk_country_currencies_country FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE CASCADE,
    CONSTRAINT fk_country_currencies_currency FOREIGN KEY (currency_id) REFERENCES currencies(id) ON DELETE RESTRICT
);