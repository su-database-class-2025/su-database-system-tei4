SELECT * FROM store
    LEFT OUTER JOIN address ON store.address_id = address.address_id;