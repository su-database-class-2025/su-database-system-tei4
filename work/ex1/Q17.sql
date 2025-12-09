SELECT c.category_id, c.name AS category_name, AVG(DATE_PART('julian', DATE_TRUNC('day', return_date))-DATE_PART('julian',DATE_TRUNC('day',rental_date))) AS avg_rental_duration 
FROM inventory AS i 
    INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
    INNER JOIN film_category AS fc ON i.film_id = fc.film_id
    LEFT OUTER JOIN category AS c ON fc.category_id = c.category_id
GROUP BY c.category_id
ORDER BY category_id;