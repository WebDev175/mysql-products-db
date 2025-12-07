DROP DATABASE IF EXISTS products_db;

CREATE DATABASE IF NOT EXISTS products_db;

USE products_db;

CREATE TABLE countries (
    id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    iso_code CHAR(3) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE brands (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    created_at DATETIME (6) NOT NULL DEFAULT (CURRENT_TIMESTAMP(6)),
    updated_at DATETIME (6) NOT NULL DEFAULT (CURRENT_TIMESTAMP(6)) ON UPDATE CURRENT_TIMESTAMP(6)
);

CREATE TABLE brand_addresses (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    brand_id BIGINT UNSIGNED NOT NULL,
    country_id SMALLINT UNSIGNED NOT NULL,
    state VARCHAR(100),
    city VARCHAR(100),
    street VARCHAR(255),
    address_type ENUM ('HQ', 'Office', 'Warehouse', 'Other') NOT NULL DEFAULT 'HQ',
    FOREIGN KEY (brand_id) REFERENCES brands (id) ON DELETE CASCADE,
    FOREIGN KEY (country_id) REFERENCES countries (id) ON DELETE RESTRICT
);

CREATE TABLE brand_details (
    brand_id BIGINT UNSIGNED PRIMARY KEY,
    website_url VARCHAR(500),
    founded_at DATETIME(6),
    description TEXT,
    stock_symbol VARCHAR(20),
    CONSTRAINT fk_brand_details_brands FOREIGN KEY (brand_id) REFERENCES brands(id) ON DELETE CASCADE
);