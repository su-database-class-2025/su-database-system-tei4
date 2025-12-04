SELECT country_id, COUNT(city) AS count FROM city
    WHERE count >= 20
    GROUP BY country_id
    ORDER BY count DESC;