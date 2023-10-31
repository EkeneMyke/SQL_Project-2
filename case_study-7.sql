-- How many customers have upgraded to an annual plan in 2020?

SELECT COUNT(customer_id)AS "Upgraded Customers"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name = "pro annual" AND
start_date < "2021-01-01";
