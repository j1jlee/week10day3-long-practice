-- Your code here

--sqlite3 the-office.db
DROP TABLE IF EXISTS office;
DROP TABLE IF EXISTS office_party;

CREATE TABLE office (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_names VARCHAR(100) NOT NULL,
    last_names VARCHAR(100) NOT NULL,
    departments VARCHAR(100),
    roles VARCHAR(100),
    relationships VARCHAR(100),
    reviews FLOAT(3, 1)
);

CREATE TABLE office_party (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    budget FLOAT(8, 2)
);

INSERT INTO office (first_names, last_names, departments, roles)
VALUES
('Michael', 'Scott', 'Management', 'Regional Manager'),
('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager'),
('Jim', 'Halpert', 'Sales', 'Assistant Regional Manager'),
('Pam', 'Beesley', 'Reception', 'Receptionist'),
('Kelly', 'Kapoor', 'Product Oversight', 'Customer Service Representative'),
('Angela', 'Martin', 'Accounting', 'Head of Accounting'),
('Roy', 'Anderson', 'Warehouse', 'Warehouse Staff');

UPDATE office
SET relationships = 'Pam Beesly'
WHERE first_names = 'Roy';

UPDATE office
SET relationships = 'Roy Anderson'
WHERE first_names = 'Pam';

INSERT INTO office (first_names, last_names, departments, roles)
VALUES
('Ryan', 'Howard', 'Reception', 'Temp');

INSERT INTO office_party (budget)
VALUES
(200);

UPDATE office
SET relationships = 'Dwight Schrute'
WHERE first_names = 'Angela';

UPDATE office
SET relationships = 'Angela Martin'
WHERE first_names = 'Dwight';

UPDATE office
SET reviews = 6.2
WHERE first_names = 'Angela';

--20
UPDATE office
SET relationships = 'Kelly Kapoor'
WHERE first_names = 'Ryan';

UPDATE office
SET relationships = 'Ryan Howard'
WHERE first_names = 'Kelly';

INSERT INTO office_party (budget)
VALUES
(50);

UPDATE office
SET relationships = null
WHERE first_names = 'Jim' AND NOT relationships = null;

UPDATE office
SET reviews = null
WHERE first_names = 'Jim' AND NOT reviews = null;

--23
UPDATE office
SET relationships = null
WHERE first_names = 'Roy';

UPDATE office
SET relationships = null
WHERE first_names = 'Pam';

UPDATE office
SET reviews = 7.6
WHERE first_names = 'Pam';

UPDATE office
SET reviews = 8.7
WHERE first_names = 'Dwight';

--26
UPDATE office
SET relationships = null
WHERE first_names = 'Ryan';
-- AND NOT relationships = null;

UPDATE office
SET reviews = null
WHERE first_names = 'Ryan';
-- AND NOT reviews = null;

--27
UPDATE office
SET departments = 'Sales'
WHERE first_names = 'Jim';

UPDATE office
SET roles = 'Sales Representative'
WHERE first_names = 'Jim';

--28
INSERT INTO office (first_names, last_names, departments, roles)
VALUES
('Karen', 'Filippelli', 'Sales', 'Sales Representative');

--29
UPDATE office
SET relationships = 'Karen Filippelli'
WHERE first_names = 'Jim';

UPDATE office
SET relationships = 'Jim Halpert'
WHERE first_names = 'Karen';

--30
INSERT INTO office_party (budget)
VALUES
(120);

DELETE FROM office_party
WHERE budget = 120;

INSERT INTO office_party (budget)
VALUES
(300);

--32
UPDATE office
SET relationships = null
WHERE first_names = 'Jim';

UPDATE office
SET relationships = null
WHERE first_names = 'Karen';

--33
UPDATE office
SET relationships = 'Pam Beesly'
WHERE first_names = 'Jim';

UPDATE office
SET relationships = 'Jim Halpert'
WHERE first_names = 'Pam';
