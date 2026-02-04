SELECT C.city_id, C.city
    FROM (SELECT city_id, city FROM city) AS C
    EXCEPT (SELECT address.city_id, city.city FROM address 
        JOIN city ON address.city_id = city.city_id );