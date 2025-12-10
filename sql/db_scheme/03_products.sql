USE products_db;

CREATE TABLE product_categories (
    id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(255)
);

CREATE TABLE products (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    brand_id BIGINT UNSIGNED NOT NULL,
    category_id TINYINT UNSIGNED NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    model_number VARCHAR(100) NOT NULL,
    stock_keeping_unit VARCHAR(100) UNIQUE,
    universal_product_code VARCHAR(50) UNIQUE,
    european_article_number VARCHAR(50) UNIQUE,
    release_date DATE NULL,
    discontinued_at DATE NULL,
    description TEXT,
    created_at DATETIME(6) NOT NULL DEFAULT (CURRENT_TIMESTAMP(6)),
    updated_at DATETIME(6) NOT NULL DEFAULT (CURRENT_TIMESTAMP(6)) ON UPDATE CURRENT_TIMESTAMP(6),
    CONSTRAINT fk_products_brand FOREIGN KEY (brand_id) REFERENCES brands(id) ON DELETE RESTRICT,
    CONSTRAINT fk_products_category FOREIGN KEY (category_id) REFERENCES product_categories(id) ON DELETE RESTRICT
);

CREATE INDEX idx_products_brand_id ON products(brand_id);

CREATE INDEX idx_products_category_id ON products(category_id);

CREATE INDEX idx_products_model_number ON products(model_number);

CREATE TABLE product_prices (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    product_id BIGINT UNSIGNED NOT NULL,
    currency_id SMALLINT UNSIGNED NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    price_timestamp DATETIME(6) NOT NULL,
    created_at DATETIME(6) NOT NULL DEFAULT (CURRENT_TIMESTAMP(6)),
    updated_at DATETIME(6) NOT NULL DEFAULT (CURRENT_TIMESTAMP(6)) ON UPDATE CURRENT_TIMESTAMP(6),
    CONSTRAINT fk_product_prices_product FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
    CONSTRAINT fk_product_prices_currency FOREIGN KEY (currency_id) REFERENCES currencies(id) ON DELETE RESTRICT
);

CREATE INDEX idx_product_prices_product_id ON product_prices(product_id);

CREATE INDEX idx_product_prices_currency_id ON product_prices(currency_id);

CREATE INDEX idx_product_prices_product_time ON product_prices(product_id, price_timestamp);