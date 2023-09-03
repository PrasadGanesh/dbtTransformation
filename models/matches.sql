select uniqueMatches.date, count(*) as matches from (SELECT DISTINCT ON (matchid) date, matchid
FROM {{ ref('temp_matches') }}
ORDER BY matchid, date desc) as uniqueMatches group by uniqueMatches.date
