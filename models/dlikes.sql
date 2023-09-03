-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}
SELECT
    COALESCE(dlikes.date, dmatches.date) AS date,
    COALESCE(dlikes.likes, 0) AS likes,
    COALESCE(dmatches.matches, 0) AS matches
FROM
    {{ ref('dailylikes') }} as dlikes
FULL OUTER JOIN
    {{  ref('matches') }} as dmatches
ON
    dlikes.date = dmatches.date
