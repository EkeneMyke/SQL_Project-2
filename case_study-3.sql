/* What plan start_date values occur after the year 2020 for our dataset? 
Show the breakdown by count of events for each plan_name*/

SELECT su.plan_id, plan_name, YEAR(start_date) AS Year,
COUNT(plan_name) AS "Plan-name Count"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE YEAR(start_date) > 2020
GROUP BY plan_name;
