/* What is the customer count and percentage of customers who have churned 
rounded to 1 decimal place?*/

SELECT COUNT(DISTINCT customer_id) AS "Customer Count",
ROUND(((SELECT COUNT(DISTINCT customer_id) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name = "churn")/(SELECT COUNT(DISTINCT customer_id) FROM subscriptions))*100,1) AS "Percentage Churn"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name = "churn";
