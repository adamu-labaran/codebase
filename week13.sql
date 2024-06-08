-- Chart 1: Country with the Most Netflix Content
SELECT country, COUNT(*) AS count
FROM shows
WHERE country IS NOT NULL AND country != ''
GROUP BY country
ORDER BY count DESC
LIMIT 10;
