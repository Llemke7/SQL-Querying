-- Comments in SQL Start with dash-dash --

-- PART 3 --
--1-- 
INSERT INTO products_db (name, price, can_be_returned) VALUES ('chair', 44.00, false);

--2--
INSERT INTO products_db (name, price, can_be_returned) VALUES ('stool', 25.99, true);

--3-- 
INSERT INTO products_db (name, price, can_be_returned) VALUES ('table', 124.00, false);

--4--
SELECT * FROM products_db; 

--5-- 
SELECT name FROM products_db;

--6-- 
SELECT name, price FROM products_db;

--7-- 
INSERT INTO products_db (name, price, can_be_returned) VALUES ('couch', 999.00, true);

--8-- 
SELECT can_be_returned from products_db;

--9--
SELECT * FROM products_db WHERE price < 44.00;

--10--
SELECT * FROM products_db WHERE price BETWEEN 22.50 AND 99.99; 

--11--
UPDATE products_db SET price = price - 20;

--12-- 
DELETE FROM products_db WHERE price < 25;

--13--
UPDATE products_db SET price = price + 20;

--14--
UPDATE products_db SET can_be_returned = true;
