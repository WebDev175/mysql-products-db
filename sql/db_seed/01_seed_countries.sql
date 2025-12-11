USE products_db;

INSERT INTO countries (iso_code, name)
VALUES ('CHN', 'China'),
    ('TWN', 'Taiwan, Province of China'),
    ('KOR', 'Korea, Republic of'),
    ('USA', 'United States of America'),
    ('VNM', 'Vietnam'),
    ('MYS', 'Malaysia'),
    ('SGP', 'Singapore'),
    ('JPN', 'Japan'),
    ('DEU', 'Germany'),
    ('MEX', 'Mexico'),
    ('THA', 'Thailand'),
    ('PHL', 'Philippines'),
    ('POL', 'Poland'),
    ('CZE', 'Czechia'),
    ('NLD', 'Netherlands'),
    ('IND', 'India'),
    ('ITA', 'Italy'),
    ('ESP', 'Spain'),
    ('BEL', 'Belgium'),
    ('HUN', 'Hungary');

INSERT INTO currencies (code, name, symbol)
VALUES ('CNY', 'Chinese Yuan Renminbi', '¥'),
    ('TWD', 'New Taiwan Dollar', 'NT$'),
    ('KRW', 'South Korean Won', '₩'),
    ('USD', 'United States Dollar', '$'),
    ('VND', 'Vietnamese Dong', '₫'),
    ('MYR', 'Malaysian Ringgit', 'RM'),
    ('SGD', 'Singapore Dollar', 'S$'),
    ('JPY', 'Japanese Yen', '¥'),
    ('EUR', 'Euro', '€'),
    ('MXN', 'Mexican Peso', '$'),
    ('THB', 'Thai Baht', '฿'),
    ('PHP', 'Philippine Peso', '₱'),
    ('PLN', 'Polish Złoty', 'zł'),
    ('CZK', 'Czech Koruna', 'Kč'),
    ('INR', 'Indian Rupee', '₹'),
    ('HUF', 'Hungarian Forint', 'Ft');

USE products_db;

INSERT INTO country_currencies (country_id, currency_id)
VALUES (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'CHN'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'CNY'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'TWN'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'TWD'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'KOR'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'KRW'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'USA'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'USD'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'VNM'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'VND'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'MYS'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'MYR'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'SGP'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'SGD'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'JPN'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'JPY'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'DEU'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'EUR'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'MEX'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'MXN'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'THA'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'THB'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'PHL'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'PHP'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'POL'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'PLN'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'CZE'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'CZK'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'NLD'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'EUR'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'IND'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'INR'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'ITA'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'EUR'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'ESP'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'EUR'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'BEL'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'EUR'
        )
    ),
    (
        (
            SELECT id
            FROM countries
            WHERE iso_code = 'HUN'
        ),
        (
            SELECT id
            FROM currencies
            WHERE code = 'HUF'
        )
    );