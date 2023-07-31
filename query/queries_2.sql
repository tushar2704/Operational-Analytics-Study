/* © 2023 Tushar Aggarwal. All rights reserved. 
https://github.com/tushar2704/
Operational-Analytics
*/


/*------------------------Queries---------------------*/

--Weekly User Engagement:
--Measuring the activeness of users on a weekly basis.

SELECT
    DATE_TRUNC('week', created_at) AS week_start_date,
    COUNT(DISTINCT user_id) AS active_users_count
FROM
    users
GROUP BY
    week_start_date
ORDER BY
    week_start_date;


--User Growth Analysis:
--Analyzing the growth of users over time for a product.

SELECT
    DATE_TRUNC('month', created_at) AS month_start_date,
    COUNT(DISTINCT user_id) AS total_users
FROM
    users
GROUP BY
    month_start_date
ORDER BY
    month_start_date;

--Weekly Retention Analysis:
--Analyzing the retention of users on a weekly basis after signing up for a product.
WITH user_signups AS (
    SELECT
        user_id,
        DATE_TRUNC('week', created_at) AS signup_week
    FROM
        users
),
user_activity AS (
    SELECT
        user_id,
        DATE_TRUNC('week', occurred_at) AS activity_week
    FROM
        events
)
SELECT
    us.signup_week AS cohort_week,
    ua.activity_week AS retention_week,
    COUNT(DISTINCT ua.user_id) AS retained_users
FROM
    user_signups us
LEFT JOIN
    user_activity ua ON us.user_id = ua.user_id AND ua.activity_week >= us.signup_week
GROUP BY
    us.signup_week, ua.activity_week
ORDER BY
    us.signup_week, ua.activity_week;


--D.Weekly Engagement Per Device:
--Measuring the activeness of users on a weekly basis per device.
SELECT
    DATE_TRUNC('week', e.occurred_at) AS week_start_date,
    e.device,
    COUNT(DISTINCT e.user_id) AS active_users_count
FROM
    events e
GROUP BY
    week_start_date, e.device
ORDER BY
    week_start_date, e.device;


--E.Email Engagement Analysis:
--Analyzing how users are engaging with the email service.

SELECT
    action,
    COUNT(DISTINCT user_id) AS unique_users_count,
    COUNT(*) AS total_actions_count
FROM
    email_events
GROUP BY
    action
ORDER BY
    action;


/* © 2023 Tushar Aggarwal. All rights reserved. 
https://github.com/tushar2704/
Operational-Analytics
*/







































































