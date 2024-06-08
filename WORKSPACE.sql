-- SELECT * FROM  shows

/*
2. Data Fun (20 pts):
Cool Fact 1: Most Common Rating
*/
-- SELECT rating, COUNT(*) AS count
-- FROM shows
-- GROUP BY rating
-- ORDER BY count DESC
-- LIMIT 1;
-- Result: TV-MA is the most common rating among Netflix shows. 

-- SELECT AVG(release_year) AS avg_release_year
-- FROM shows;

-- using count function to return the number all items from the dataset with (*)
-- SELECT count(*) FROM shows;
-- result: 100

-- using sum() function to check for distinct value from data set
-- SELECT SUM(duration) FROM shows;

-- Output: 5646
-- meaning that there are  5646 minutes from the dataset. However some of the movies are in series such as season 1, season 2 92 min, 120 min etc

-- to solve the problem inorder to get the total duration of min and season using conditional aggregation in sql
-- SELECT 
--     SUM(CASE 
--             WHEN LOCATE('season', duration) > 0 
--             THEN CAST(LEFT(duration, LOCATE(' ', duration) - 1) AS UNSIGNED) 
--             ELSE 0 
--         END) AS total_seasons,
--     SUM(CASE 
--             WHEN LOCATE('min', duration) > 0 
--             THEN CAST(LEFT(duration, LOCATE(' ', duration) - 1) AS UNSIGNED) 
--             ELSE 0 
--         END) AS total_minutes
-- FROM shows;

-- Question 2: What are popular shows in different countries?
-- SELECT country, COUNT(*) AS count
-- FROM shows
-- WHERE country IS NOT NULL AND country != ''
-- GROUP BY country
-- ORDER BY count DESC
-- LIMIT 5;

-- Question 2: What are the Top 5 Genres Listed on Netflix?
-- SELECT listed_in, COUNT(*) AS count
-- FROM shows
-- GROUP BY listed_in
-- ORDER BY count DESC
-- LIMIT 5;

