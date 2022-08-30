SELECT order_date, order_details, total_order_cost, first_name
FROM customers AS cust
JOIN orders AS ord
ON cust.id = ord.cust_id

WHERE
    first_name LIKE "%Jill%"
    OR
    first_name LIKE "%Eva%"

ORDER BY cust_id