SELECT S.store_id, A.address, C.city AS city_name
FROM store AS S
    INNER JOIN address AS A ON S.address_id = A.address_id
    INNER JOIN city AS C ON A.city_id = C.city_id;