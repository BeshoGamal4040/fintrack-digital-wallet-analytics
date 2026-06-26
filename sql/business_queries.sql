-- query 1
SELECT
SUM(product_amount) AS total_transaction_value
FROM transactions;


SELECT
SUM(transaction_fee) AS total_fees
FROM transactions;

SELECT
SUM(cashback) AS total_cashback
FROM transactions;

SELECT
SUM(transaction_fee)-SUM(cashback) AS net_earnings
FROM transactions;

-- query 2
SELECT
month,
SUM(product_amount) AS revenue
FROM transactions
GROUP BY month
ORDER BY STR_TO_DATE(month,'%M');

-- query 3
SELECT
transaction_status,
COUNT(*) AS total,
ROUND(
COUNT(*)*100/(SELECT COUNT(*) FROM transactions),
2
) AS percentage
FROM transactions
GROUP BY transaction_status
ORDER BY percentage DESC;

-- query 4
SELECT
hour,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY hour
ORDER BY total_transactions DESC;

-- query 5
SELECT
payment_method,
COUNT(*) AS total_usage
FROM transactions
GROUP BY payment_method
ORDER BY total_usage DESC;

-- query 6
SELECT
device_type,
COUNT(*) AS total_usage
FROM transactions
GROUP BY device_type
ORDER BY total_usage DESC;

-- query 7
SELECT
location,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY location
ORDER BY total_transactions DESC;

-- query 8
SELECT
product_category,
SUM(product_amount) AS revenue
FROM transactions
GROUP BY product_category
ORDER BY revenue DESC;

-- query 9
SELECT
merchant_name,
SUM(product_amount) AS revenue
FROM transactions
GROUP BY merchant_name
ORDER BY revenue DESC
LIMIT 10;

-- query 10
SELECT
product_category,
SUM(loyalty_points) AS total_loyalty_points
FROM transactions
GROUP BY product_category
ORDER BY total_loyalty_points DESC;

-- query 11
SELECT
payment_method,
ROUND(
SUM(
CASE
WHEN transaction_status='Successful'
THEN 1
ELSE 0
END
)*100/COUNT(*),
2
) AS success_rate
FROM transactions
GROUP BY payment_method
ORDER BY success_rate DESC;