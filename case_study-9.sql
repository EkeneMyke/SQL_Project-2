-- How many customers have upgraded to an annual plan in 2020?

SELECT COUNT(plan_name) AS "Annual Plan"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE start_date LIKE '%2020%'
AND plan_name = "pro annual";
