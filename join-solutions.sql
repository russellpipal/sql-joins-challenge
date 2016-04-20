--1.
SELECT * FROM customers JOIN addresses ON customers.id = addresses.customer_id;

--2.
SELECT * FROM orders JOIN line_items ON line_items.order_id = orders.id;

--3.
SELECT DISTINCT warehouse FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products on warehouse_product.product_id = products.id WHERE products.description = 'cheetos';

--4.
SELECT DISTINCT warehouse FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products on warehouse_product.product_id = products.id WHERE products.description = 'diet pepsi';

--5.
SELECT customers.first_name, customers.last_name, count(address_id)
FROM customers
JOIN addresses ON customers.id = addresses.customer_id
JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.first_name, customers.last_name;

--6.
SELECT count(id) FROM customers;

--7.
SELECT count(id) FROM products;

--8.
SELECT products.description, sum(on_hand)
FROM products
JOIN warehouse_product ON warehouse_product.product_id = products.id WHERE products.description='diet pepsi'
GROUP BY products.description;
