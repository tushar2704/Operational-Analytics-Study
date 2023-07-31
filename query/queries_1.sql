/* © 2023 Tushar Aggarwal. All rights reserved. 
https://github.com/tushar2704/
Operational-Analytics
*/


/*--------------------------------------------Queries--------------------------------------------*/

--Jobs Reviewed Over Time
--(Calculating the number of jobs reviewed per hour for each day in November 2020)
SELECT 
    DATE_TRUNC('hour', ds) AS review_hour,
    DATE_TRUNC('day', ds) AS review_date,
    COUNT(*) AS num_jobs_reviewed
FROM
    job_data
WHERE
    DATE_TRUNC('month', ds) = '2020-11-01'::DATE
GROUP BY
    DATE_TRUNC('hour', ds),
    DATE_TRUNC('day', ds)
ORDER BY
    review_date,
    review_hour;

--Throughput Analysis:
--Calculating the 7-day rolling average of throughput (number of events per second)
WITH DAILY_METRIC AS (
    SELECT
        ds,
        COUNT(job_id) AS job_review
    FROM
        job_data
    GROUP BY
        ds
)
SELECT
    ds,
    job_review,
    AVG(job_review) OVER (ORDER BY ds ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS throughput
FROM
    DAILY_METRIC
ORDER BY
    throughput DESC;

--C.Language Share Analysis:
--Calculating the percentage share of each language in the last 30 days.
SELECT 
    language,
    COUNT(language) AS language_count,
    (COUNT(language) / (SELECT COUNT(*) FROM job_data)) * 100 AS percentage_share
FROM job_data
GROUP BY language
ORDER BY language DESC;

--D.Duplicate Rows Detection:
--Identifying duplicate rows in the data.
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY JOB_ID) AS DUPLICATE_ROWS
    FROM JOB_DATA
) AS A_R
WHERE DUPLICATE_ROWS > 1;

/* © 2023 Tushar Aggarwal. All rights reserved. 
https://github.com/tushar2704/
Operational-Analytics
*/







































































































































































