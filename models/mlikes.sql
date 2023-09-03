-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}
SELECT
    DATE_TRUNC('month', date)::DATE AS month_start,
    SUM(likes) AS total_likes,
    SUM(matches) AS total_matches
FROM {{ ref('dlikes') }} 
GROUP BY month_start
ORDER BY month_start
