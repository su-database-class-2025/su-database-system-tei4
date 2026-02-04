SELECT c.category_id, c.name AS category_name, COUNT(r.rental_id) AS rented_count, SUM(p.amount) AS amount_sum 
FROM inventory AS i 
    INNER JOIN rental AS r ON i.inventory_id = r.inventory_id
    INNER JOIN film_category AS fc ON i.film_id = fc.film_id
    LEFT OUTER JOIN category AS c ON fc.category_id = c.category_id
    INNER JOIN payment AS p ON r.rental_id = p.rental_id
GROUP BY c.category_id
ORDER BY rented_count DESC;