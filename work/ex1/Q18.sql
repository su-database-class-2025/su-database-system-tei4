SELECT ctr.country_id, ctr.country, COUNT(cst.customer_id) AS customer_count, SUM(pay.amount) AS amount_sum
FROM customer AS cst
    INNER JOIN address AS adr ON cst.address_id = adr.address_id
    INNER JOIN city ON adr.city_id = city.city_id
    INNER JOIN country AS ctr ON city.country_id = ctr.country_id
    INNER JOIN payment AS pay ON cst.customer_id = pay.customer_id
GROUP BY ctr.country_id
ORDER BY customer_count DESC;