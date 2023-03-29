-- Your code here
--Events 1
INSERT INTO customers(name,phone)
VALUES('Rachel',1111111111);
-- 2 
UPDATE customers 
SET points=points + 1
WHERE name='Rachel';

INSERT INTO coffee_orders(is_redeemed)
VALUES(0);
--3
INSERT INTO customers (name, email,phone)
VALUES('Monica','monica@friends.show',2222222222),('Phoebe','phoebe@friends.show',3333333333);

--4
UPDATE customers 
SET points=points + 3
WHERE name='Phoebe';

INSERT INTO coffee_orders(is_redeemed)
VALUES(0),(0),(0);


--5
UPDATE customers 
SET points=points + 4
WHERE name='Rachel';

INSERT INTO coffee_orders(is_redeemed)
VALUES(0),(0),(0),(0);

--6
UPDATE customers 
SET points=points + 4
WHERE name='Monica';

INSERT INTO coffee_orders(is_redeemed)
VALUES(0),(0),(0),(0);

SELECT points FROM customers 
WHERE name='Monica';

SELECT points FROM customers 
WHERE name='Rachel' ;

UPDATE customers
SET points=points-10
WHERE name='Rachel' AND points >= 10;

INSERT INTO coffee_orders(is_redeemed)
VALUES(1);


UPDATE customers
SET points=points + 1
WHERE name='Rachel' AND points < 10;

INSERT INTO coffee_orders(is_redeemed)
VALUES(0);

--8
INSERT INTO customers (name, email)
VALUES('Joey','joey@friends.show'),
('Chandler	','chandler@friends.show'),
('Ross','ross@friends.show');

--9
UPDATE customers 
SET points=points + 6
WHERE name='Ross';

INSERT INTO coffee_orders(is_redeemed)
VALUES(0),(0),(0),(0),(0),(0);

--10
UPDATE customers 
SET points=points + 3
WHERE name='Monica';

INSERT INTO coffee_orders(is_redeemed)
VALUES(0),(0),(0);

--11
SELECT points FROM customers 
WHERE name='Phoebe';

SELECT points FROM customers 
WHERE name='Phoebe' ;

UPDATE customers
SET points=points-10
WHERE name='Phoebe' AND points >= 10;

INSERT INTO coffee_orders(is_redeemed)
VALUES(1);


UPDATE customers
SET points=points + 1
WHERE name='Phoebe' AND points < 10;

--12
UPDATE 

--15
DELETE FROM customers
WHERE name='Chandler';

--18
UPDATE customers,
SET email="p_as_in_phoebe@friends.show",
WHERE name='Phoebe'
