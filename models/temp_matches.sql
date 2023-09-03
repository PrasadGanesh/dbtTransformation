select date, matchid from {{ ref('base_likedb') }} where matched = 'true' order by matchid, date
