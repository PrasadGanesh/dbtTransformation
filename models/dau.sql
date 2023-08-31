SELECT 
    date,
    COUNT(DISTINCT userid) as dau 
FROM 
    {{ ref('base_db') }}
GROUP BY 
    date 
ORDER BY 
    date

