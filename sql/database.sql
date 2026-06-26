CREATE TABLE transactions (

    idx INT,

    transaction_id VARCHAR(50),

    user_id VARCHAR(50),

    transaction_date DATETIME,

    product_category VARCHAR(100),

    product_name VARCHAR(100),

    merchant_name VARCHAR(100),

    product_amount DECIMAL(10,2),

    transaction_fee DECIMAL(10,2),

    cashback DECIMAL(10,2),

    loyalty_points INT,

    payment_method VARCHAR(50),

    transaction_status VARCHAR(50),

    merchant_id VARCHAR(50),

    device_type VARCHAR(50),

    location VARCHAR(50),

    month VARCHAR(20),

    day_name VARCHAR(20),

    hour INT,

    weekend VARCHAR(10)

);