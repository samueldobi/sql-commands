-- Creates a database with the name packetcode
CREATE DATABASE packetcode;

-- Creates a table with the name login
CREATE TABLE login(
    id INT(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    username VARCHAR(255),
    password LONGTEXT,
    email VARCHAR(255)
    -- This is another way of adding the primary key
    -- PRIMARY KEY(id)
);

-- Inserts data into the table named login
INSERT INTO login
    (username, password, email)
VALUES
    ("kamal", "admin", "packetcodeofficial@gmail.com"),
    ("test", "test", "test@gmail.com");

-- Displays all the data present in the table i.e. the rows and columns in descinding order of the id
SELECT *
FROM login
ORDER BY id DESC;

-- Get all the rows with id greater than 1
SELECT *
FROM login
WHERE id > 1

-- Displays the data only from the column username
SELECT username
FROM login;

-- Displays the data only from column username and the row 1
SELECT username
FROM login
WHERE id = 1;

-- Updates the username of first record in the table
UPDATE login 
SET username = 'teja'
WHERE id = 1;

-- Deletes a single row from the table
DELETE FROM login
WHERE id = 2;

-- Delete the data inside the table but not the columns
TRUNCATE TABLE login

-- Delete the table
DELETE TABLE login;

-- Add new column in the table
ALTER TABLE login
ADD nickname VARCHAR(255) AFTER name;

-- Change the datatype of a column
ALTER TABLE login
ALTER COLUMN password VARCHAR(255);

-- Link to another table using Foreign Key
CREATE TABLE orders(
    orderId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order VARCHAR(255),
    userId INT,
    FOREIGN KEY(userId) REFERENCES login(id)
);