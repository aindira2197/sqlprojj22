CREATE TABLE customers12 (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE orders12 (
    id INT,
    customer_id INT
);

INSERT INTO customers12 VALUES
(1,'Ali'), (2,'Vali');

INSERT INTO orders12 VALUES
(1,1),
(2,1),
(3,2);

SELECT c.name, COUNT(o.id) AS total_orders
FROM customers12 c
INNER JOIN orders12 o ON c.id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.id) > 1;
