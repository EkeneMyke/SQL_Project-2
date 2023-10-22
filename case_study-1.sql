-- How many customers has Foodie-Fi ever had?

SELECT DISTINCT customer_id FROM subscriptions;
SELECT COUNT(DISTINCT customer_id) AS "Customer Count"
FROM subscriptions;
