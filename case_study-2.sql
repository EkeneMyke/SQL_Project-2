/* What is the monthly distribution of trial plan start_date values for our
 dataset - use the start of the month as the group by value?*/

SELECT start_date, plan_name, MONTHNAME(start_date) AS Month,
COUNT(start_date) AS "Trial Count"
FROM subscriptions su
INNER JOIN plans pl ON
su.plan_id = pl.plan_id
WHERE su.plan_id = 0
GROUP BY Month
ORDER BY FIELD(MONTHNAME(start_date), "January", "February", "March", "April",
"May", "June", "July","August","September","October","November","December");
