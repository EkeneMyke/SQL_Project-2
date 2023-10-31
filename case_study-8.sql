-- What is the customer count and percentage breakdown of all
-- 5 plan_name values at 2020-12-31?

SELECT plan_name,COUNT(plan_name),ROUND(((SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name = "trial")/(SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id))*100,2) AS "% Count"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE start_date <= "2020-12-31"
AND plan_name = "trial"
UNION
SELECT plan_name,COUNT(plan_name),ROUND(((SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name = "basic monthly")/(SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id))*100,2) AS "% Count"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE start_date <= "2020-12-31"
AND plan_name = "basic monthly"
UNION
SELECT plan_name,COUNT(plan_name),ROUND(((SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name = "pro annual")/(SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id))*100,2) AS "% Count"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE start_date <= "2020-12-31"
AND plan_name = "pro annual"
UNION
SELECT plan_name,COUNT(plan_name),ROUND(((SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name = "churn")/(SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id))*100,2) AS "% Count"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE start_date <= "2020-12-31"
AND plan_name = "churn"
UNION
SELECT plan_name,COUNT(plan_name),ROUND(((SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE plan_name = "pro monthly")/(SELECT COUNT(plan_name) FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id))*100,2) AS "% Count"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE start_date <= "2020-12-31"
AND plan_name = "pro monthly";
