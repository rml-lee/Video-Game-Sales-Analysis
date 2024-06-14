# Video Games Market Analysis

# Data Cleaning

# Call Stored Procedure

CALL clean_data();

# -----------------------------------------------------------------------------------------


# Descriptive Statistics


-- Review year range
SELECT DISTINCT
    year_of_release
FROM
    video_games
ORDER BY 1 ASC;

-- year_of_release: Year range in this data set goes from 1980 to 2017 chronologically. Then it skips to year 2020.

-- critic_score, critic_count, user_score, user_count, developer, and rating contain NULL values.

-- Note: Sales listed aren't revenue, they are physical sales figures!


# -----------------------------------------------------------------------------------------------------------

# Data Analysis


-- 1. Which platform has the largest library of software?
SELECT
    platform,
    COUNT(*) AS total_number_of_releases
FROM
    video_games
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;



-- 2. How has the volume of game releases and global sales varied over the years?
SELECT
    year_of_release,
    COUNT(*) AS total_number_of_releases,
    ROUND(SUM(global_sales), 2) AS total_sales
FROM
    video_games
GROUP BY 1
ORDER BY 1 ASC;



-- 3. What are the total sales for each region per genre?
SELECT
    genre,
    ROUND(SUM(na_sales), 2) AS total_na_sales,
    ROUND(SUM(eu_sales), 2) AS total_eu_sales,
    ROUND(SUM(jp_sales), 2) AS total_jp_sales,
    ROUND(SUM(other_sales), 2) AS total_other_sales
FROM
    video_games
WHERE
    genre IS NOT NULL
GROUP BY 1;



-- 4. Which genres perform better in Japan than in North America?
SELECT
    genre
FROM
    video_games
GROUP BY 1
HAVING SUM(jp_sales) > SUM(na_sales);



-- 5. What has been the highest performing genre per year along with it's number of releases?
WITH total_sales_per_genre AS
    (SELECT
        year_of_release,
        genre,
        COUNT(*) AS n_of_releases,
        ROUND(SUM(global_sales), 2) AS total_sales
    FROM
        video_games
    GROUP BY 1, 2
    ORDER BY 1 ASC),

max_sales_per_year AS
    (SELECT
        year_of_release,
        MAX(total_sales) AS max_total_sales
    FROM
        total_sales_per_genre
    GROUP BY 1)
SELECT
    t.year_of_release,
    t.genre,
    t.total_sales,
    t.n_of_releases
FROM
    total_sales_per_genre t
JOIN
    max_sales_per_year m
    ON t.year_of_release = m.year_of_release
    AND t.total_sales = m.max_total_sales
ORDER BY 1 ASC;



-- 6. What is the market share percentage of Action games that are sold per region?
WITH a AS
        (SELECT
             genre,
             ROUND(SUM(na_sales), 2) AS total_na_sales,
             ROUND(SUM(eu_sales), 2) AS total_eu_sales,
             ROUND(SUM(jp_sales), 2) AS total_jp_sales,
             ROUND(SUM(other_sales), 2) AS total_other_sales,
             ROUND(SUM(global_sales), 2) AS total_global_sales
         FROM
             video_games
         WHERE
             genre = 'Action'
         GROUP BY 1)
SELECT
    'North America' AS region,
    ROUND((total_na_sales / total_global_sales) * 100, 2) AS percentage
FROM
    a

UNION ALL

SELECT
    'Europe' AS region,
    ROUND((total_eu_sales / total_global_sales) * 100, 2) AS percentage
FROM
    a

UNION ALL

SELECT
    'Japan' AS region,
    ROUND((total_jp_sales / total_global_sales) * 100, 2) AS percentage
FROM
    a

UNION ALL

SELECT
    'Other' AS region,
    ROUND((total_other_sales / total_global_sales) * 100, 2) AS percentage
FROM
    a;



-- 7. What's the YoY percentage of action games sold from 2000 - 2005?
SELECT
    year_of_release,
    current_year_sales AS sales,
    ROUND(((current_year_sales - previous_year_sales) / previous_year_sales) * 100, 0) AS yoy_percentage
FROM
    (SELECT
         year_of_release,
         ROUND(SUM(global_sales), 2) AS current_year_sales,
         LAG(ROUND(SUM(global_sales), 2)) OVER (ORDER BY year_of_release ASC) AS previous_year_sales
     FROM
         video_games
     WHERE
           genre = 'Action'
       AND year_of_release BETWEEN 2000 AND 2005
     GROUP BY 1
     ORDER BY 1 ASC) y;




-- 8. Who are the Top 10 selling publishers?
SELECT
    publisher,
    ROUND(SUM(global_sales), 2) AS total_copies_sold,
    DENSE_RANK() OVER (ORDER BY ROUND(SUM(global_sales), 2) DESC) AS rnk
FROM
    video_games
GROUP BY 1
LIMIT 10;



-- 9. What is the historical sales volume of the top 5 publishers from 1995 to 2015?
SELECT
    year_of_release,
    publisher,
    total_copies_sold
FROM
    (SELECT
         year_of_release,
         publisher,
         ROUND(SUM(global_sales), 2) AS total_copies_sold,
         DENSE_RANK() OVER (PARTITION BY year_of_release ORDER BY ROUND(SUM(global_sales), 2) DESC) AS rnk
     FROM
         video_games
     WHERE
           publisher IN ('Electronic Arts', 'Nintendo', 'Activision', 'Sony Computer Entertainment', 'Ubisoft')
       AND year_of_release BETWEEN 1995 AND 2015
     GROUP BY 1, 2) a
WHERE
    rnk <= 5;



-- 10. What is the correlation between critic scores and game sales? Do critic scores impact the sales of games?
SELECT
    CASE
        WHEN critic_score >= 90 THEN 'Universal Acclaim'
        WHEN critic_score BETWEEN 75 AND 89 THEN 'Generally Favorable'
        WHEN critic_score BETWEEN 50 AND 74 THEN 'Mixed or Average'
        ELSE 'Overwhelmingly Dislike'
    END AS critic_rating,
    ROUND(SUM(global_sales), 2) AS total_copies_sold
FROM
    video_games
WHERE
    critic_score IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;




