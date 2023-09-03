select date, count(*) as likes from {{ ref('base_likedb') }} group by date order by date
