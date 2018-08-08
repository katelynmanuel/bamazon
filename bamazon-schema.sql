DROP DATABASE IF EXISTS bamazon_DB;

CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY UNIQUE,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price NUMERIC(18, 2) NOT NULL,
  stock_quantity INT NULL
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Harry Potter and the Chamber of Secrets', 'Books', 12.50, 42);
    
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Something Wicked this Way Comes', 'Books', 18.00, 65);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('You Shall Know Our Velocity', 'Books', 14.50, 36);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Globe String Lights', 'Home', 15.99, 112);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Navy Throw Blanket', 'Home', 19.99, 120);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Micofiber Sheet Set', 'Home', 32.99, 48);
INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('LED Frisbee', 'Outdoor', 14.99, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Wilson Football', 'Outdoor', 10.99, 35);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Sundome Four Person Tent', 'Outdoor', 108.20, 56);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Deadpool', 'Movies', 17.50, 83);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('The Goonies', 'Movies', 14.65, 24);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Forgetting Sarah Marshall', 'Movies', 14.99, 39);

SELECT * FROM products;