-- to create a table instead of view, uncomment the line below
--{{ config(materialized='table') }}
SELECT 
    d."date", 
    d.dau, 
    m.mau, 
    (d.dau::FLOAT / NULLIF(m.mau, 0) * 100) as "DAU/MAU" 
FROM 
    {{ ref('dau') }} AS d
JOIN 
    {{ ref('mau') }} AS m ON d."date" = m."date"
