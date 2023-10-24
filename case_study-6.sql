-- What is the number and percentage of customer plans after their initial free trial?


SELECT COUNT(plan_name)AS "Active Plans",
ROUND(((SELECT COUNT(su.plan_id) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name IN ("basic monthly", "pro monthly", "pro annual"))/(SELECT COUNT(su.plan_id) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name IN ("basic monthly", "pro monthly", "pro annual", "churn","trial"))*100),1) AS "Active Plans (%)"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name IN ("basic monthly", "pro monthly", "pro annual");
