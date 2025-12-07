USE products_db;

SET @usa = (
        SELECT id
        FROM countries
        WHERE iso_code = 'USA'
    );

SET @taiwan = (
        SELECT id
        FROM countries
        WHERE iso_code = 'TWN'
    );

SET @china = (
        SELECT id
        FROM countries
        WHERE iso_code = 'CHN'
    );

SET @south_korea = (
        SELECT id
        FROM countries
        WHERE iso_code = 'KOR'
    );

SET @japan = (
        SELECT id
        FROM countries
        WHERE iso_code = 'JPN'
    );

-- Apple Inc.
INSERT INTO brands (name)
VALUES ('Apple Inc.');

SET @apple_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@apple_id, 'https://www.apple.com', 'AAPL');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (
        @apple_id,
        @usa,
        'California',
        'Cupertino',
        NULL,
        'HQ'
    );

-- ASUS
INSERT INTO brands (name)
VALUES ('ASUS');

SET @asus_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@asus_id, 'https://www.asus.com', '2357.TW');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@asus_id, @taiwan, NULL, 'Taipei', NULL, 'HQ');

-- Lenovo
INSERT INTO brands (name)
VALUES ('Lenovo');

SET @lenovo_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@lenovo_id, 'https://www.lenovo.com', '0992.HK');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@lenovo_id, @china, NULL, 'Beijing', NULL, 'HQ');

-- Intel Corporation
INSERT INTO brands (name)
VALUES ('Intel Corporation');

SET @intel_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@intel_id, 'https://www.intel.com', 'INTC');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (
        @intel_id,
        @usa,
        'California',
        'Santa Clara',
        NULL,
        'HQ'
    );

-- NVIDIA Corporation
INSERT INTO brands (name)
VALUES ('NVIDIA Corporation');

SET @nvidia_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@nvidia_id, 'https://www.nvidia.com', 'NVDA');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (
        @nvidia_id,
        @usa,
        'California',
        'Santa Clara',
        NULL,
        'HQ'
    );

-- Dell Technologies
INSERT INTO brands (name)
VALUES ('Dell Technologies');

SET @dell_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@dell_id, 'https://www.dell.com', 'DELL');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (
        @dell_id,
        @usa,
        'Texas',
        'Round Rock',
        NULL,
        'HQ'
    );

-- HP Inc.
INSERT INTO brands (name)
VALUES ('HP Inc.');

SET @hp_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@hp_id, 'https://www.hp.com', 'HPQ');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (
        @hp_id,
        @usa,
        'California',
        'Palo Alto',
        NULL,
        'HQ'
    );

-- Acer
INSERT INTO brands (name)
VALUES ('Acer');

SET @acer_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@acer_id, 'https://www.acer.com', '2353.TW');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (
        @acer_id,
        @taiwan,
        NULL,
        'New Taipei',
        NULL,
        'HQ'
    );

-- MSI
INSERT INTO brands (name)
VALUES ('MSI');

SET @msi_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@msi_id, 'https://www.msi.com', '2377.TW');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@msi_id, @taiwan, NULL, 'New Taipei', NULL, 'HQ');

-- Samsung Electronics
INSERT INTO brands (name)
VALUES ('Samsung Electronics');

SET @samsung_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (
        @samsung_id,
        'https://www.samsung.com',
        '005930.KS'
    );

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (
        @samsung_id,
        @south_korea,
        NULL,
        'Suwon',
        NULL,
        'HQ'
    );

-- Sony Corporation
INSERT INTO brands (name)
VALUES ('Sony Corporation');

SET @sony_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@sony_id, 'https://www.sony.com', 'SONY');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@sony_id, @japan, NULL, 'Tokyo', NULL, 'HQ');

-- Toshiba
INSERT INTO brands (name)
VALUES ('Toshiba');

SET @toshiba_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (
        @toshiba_id,
        'https://www.global.toshiba',
        '6502.T'
    );

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@toshiba_id, @japan, NULL, 'Tokyo', NULL, 'HQ');

-- Fujitsu
INSERT INTO brands (name)
VALUES ('Fujitsu');

SET @fujitsu_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@fujitsu_id, 'https://www.fujitsu.com', '6702.T');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@fujitsu_id, @japan, NULL, 'Tokyo', NULL, 'HQ');

-- Panasonic
INSERT INTO brands (name)
VALUES ('Panasonic Corporation');

SET @panasonic_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (
        @panasonic_id,
        'https://www.panasonic.com',
        '6752.T'
    );

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@panasonic_id, @japan, NULL, 'Osaka', NULL, 'HQ');

-- Huawei
INSERT INTO brands (name)
VALUES ('Huawei');

SET @huawei_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@huawei_id, 'https://www.huawei.com', NULL);

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@huawei_id, @china, NULL, 'Shenzhen', NULL, 'HQ');

-- Xiaomi
INSERT INTO brands (name)
VALUES ('Xiaomi Corporation');

SET @xiaomi_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@xiaomi_id, 'https://www.mi.com', '1810.HK');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@xiaomi_id, @china, NULL, 'Beijing', NULL, 'HQ');

-- LG Electronics
INSERT INTO brands (name)
VALUES ('LG Electronics');

SET @lg_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@lg_id, 'https://www.lg.com', '066570.KS');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (@lg_id, @south_korea, NULL, 'Seoul', NULL, 'HQ');

-- Razer
INSERT INTO brands (name)
VALUES ('Razer Inc.');

SET @razer_id := LAST_INSERT_ID();

INSERT INTO brand_details (brand_id, website_url, stock_symbol)
VALUES (@razer_id, 'https://www.razer.com', '1337.HK');

INSERT INTO brand_addresses (
        brand_id,
        country_id,
        state,
        city,
        street,
        address_type
    )
VALUES (
        @razer_id,
        @usa,
        'California',
        'Irvine',
        NULL,
        'HQ'
    );