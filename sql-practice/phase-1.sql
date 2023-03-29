CREATE TABLE loyalty_program (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    points INTEGER DEFAULT 5,
    contact_one VARCHAR(50),
    contact_two VARCHAR(50),
    purchase_date VARCHAR(50),
    redeemed_date VARCHAR(50)
)

INSERT INTO loyalty_program (name, contact_one, contact_two, purchase_date, redeemed_date)
VALUES ('Josh', 'email.com', '123-123-1234', '12-12-2001', '12-12-2001');
