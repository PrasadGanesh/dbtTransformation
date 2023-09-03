-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}
SELECT
    DATE_TRUNC('week', date)::DATE AS week_start,
    SUM(likes) AS total_likes,
    SUM(matches) AS total_matches
FROM {{ ref('dlikes') }}
GROUP BY week_start
ORDER BY week_start
