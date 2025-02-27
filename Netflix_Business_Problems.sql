-- Netflix Project

SELECT *
FROM netflix;

-- 15 Business Problems
-- 1. Count the Number of Movies vs TV Shows
SELECT 
	type, 
	COUNT(*) total_content
FROM netflix
GROUP BY type

-- 2. Find the Most Common Rating for Movies and TV Shows
SELECT 
	type,
	rating
FROM
(
	SELECT 
		type, 
		rating,
		COUNT(*), 
		RANK() OVER(PARTITION BY type ORDER BY COUNT(*) DESC) as ranking
	FROM netflix
	GROUP BY 1, 2 
) as t1
WHERE ranking = 1;

-- 3. List All Movies Released in a Specific Year (e.g., 2020)

SELECT *
FROM netflix
WHERE type = 'Movie' AND release_year = 2020;

-- 4. Find the Top 5 Countries with the Most Content on Netflix

SELECT 
	UNNEST(STRING_TO_ARRAY(country, ',')) as new_country,
	count(show_id) as total_content
FROM netflix
GROUP BY country 
ORDER BY 2 DESC
LIMIT 5

-- 5. Identify the Longest Movie

SELECT *
FROM netflix
WHERE 
	type = 'Movie'
	AND
	duration = (SELECT MAX(duration) FROM netflix)

-- 6. Find Content Added in the Last 5 Years

SELECT *
FROM netflix
WHERE 
	TO_DATE(date_added, 'Month DD, YYYY') >= CURRENT_DATE - INTERVAL '5 years'

-- 7. Find All Movies/TV Shows by Director 'Steven Spielberg'

SELECT *
FROM netflix
WHERE director ILIKE '%Steven Spielberg%'

-- 8. List All TV Shows with More Than 5 Seasons

SELECT *
FROM netflix
WHERE 
	type = 'TV Show'
	AND
	SPLIT_PART(duration, ' ', 1)::numeric > 5 

-- 9. Count the Number of Content Items in Each Genre

SELECT 
	UNNEST(STRING_TO_ARRAY(listed_in, ',')) as genre,
	COUNT(show_id)
FROM netflix
GROUP BY 1

-- 10.Find each year and the average numbers of content release in India on netflix.

SELECT 
	EXTRACT(YEAR FROM TO_DATE(date_added, 'Month DD, YYYY')) as date,
	COUNT(*),
	ROUND
	(COUNT(*)::numeric / ( SELECT COUNT(*) FROM netflix WHERE country = 'India')::numeric * 100,
	2) as avg_content_per_year
FROM netflix
WHERE country = 'India'
GROUP BY 1

-- 11. List All Movies that are Documentaries

SELECT *
FROM netflix
WHERE listed_in ILIKE ('%Documentaries%')

-- 12. Find All Content Without a Director

SELECT *
FROM netflix
WHERE Director IS NULL

-- 13. Find How Many Movies Actor 'Denzel Washington' Appeared in the Last 10 Years

SELECT 	*
FROM netflix
WHERE casts ILIKE 
	'%Denzel Washington%' AND 	
	release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 10

-- 14. Find the Top 10 Actors Who Have Appeared in the Highest Number of Movies Produced in USA

SELECT 
	UNNEST(STRING_TO_ARRAY(casts, ',')) as actors,
	COUNT(*) as total_content
FROM netflix
WHERE country ILIKE '%United States%'
GROUP BY 1
ORDER BY 2 DESC

-- 15. Categorize content as 'Bad_Content' if it contains 'kill' or 'violence' and 'Good' otherwise. 
-- Count the number of items in each category.

WITH new_table
AS
(
SELECT 
	*,
	CASE
	WHEN 
		description ILIKE '%kill%' 
		OR description ILIKE '%violence%' THEN 'Bad_Content'
		ELSE 'Good Content'
	END category
FROM netflix
)
SELECT 
	category,
	COUNT(*) as total_content
FROM new_table
GROUP BY 1

