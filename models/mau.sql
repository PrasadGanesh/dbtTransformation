SELECT
    a."date" as date,
    COUNT(DISTINCT b.userid) AS mau
FROM
    {{ ref('base_db') }} AS a
JOIN
    {{ ref('base_db') }} AS b ON b."date" BETWEEN (a."date" - INTERVAL '30 days') AND a."date"
GROUP BY
    a."date"
ORDER BY
    a."date"
