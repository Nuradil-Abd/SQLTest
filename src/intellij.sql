CREATE DATABASE LMS;


CREATE TABLE users(
                      user_id SERIAL PRIMARY KEY,
                      name VARCHAR NOT NULL ,
                      password VARCHAR NOT NULL CHECK ( password ~ '^(?=.*[A-Z])(?=.*\d).*' ),
    email VARCHAR UNIQUE CHECK ( email LIKE '%.com' )

);

INSERT INTO users (name, password, email)
VALUES
    ('Atai', 'Password1', 'atai@gmail.com'),
    ('Nuradil', 'Password2', 'nur@gmail.com'),
    ('Baysal', 'Password3', 'baysalbek@gmail.com'),
    ('Adilet', 'Password4', 'adi@gmail.com');

CREATE TABLE roles (
                       role_id SERIAL PRIMARY KEY,
                       role_name VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO roles (role_name)
VALUES
    ('Admin'),
    ('User'),
    ('Moderator');


CREATE TABLE user_roles (
                            user_role_id SERIAL PRIMARY KEY,
                            user_id INT REFERENCES users(user_id),
                            role_id INT REFERENCES roles(role_id)
);

INSERT INTO user_roles (user_id, role_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 2),
    (4, 3);


CREATE TABLE products (
                          product_id SERIAL PRIMARY KEY,
                          product_name VARCHAR(100) NOT NULL,
                          price DECIMAL(10, 2) NOT NULL,
                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products (product_name, price)
VALUES
    ('Laptop', 999.99),
    ('Smartphone', 499.99),
    ('Tablet', 299.99);



CREATE TABLE orders (
                        order_id SERIAL PRIMARY KEY,
                        user_id INT REFERENCES users(user_id),
                        order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO orders (user_id)
VALUES
    (1),
    (2),
    (4);


CREATE TABLE order_details (
                               order_detail_id SERIAL PRIMARY KEY,
                               order_id INT REFERENCES orders(order_id),
                               product_id INT REFERENCES products(product_id),
                               quantity INT NOT NULL
);

INSERT INTO order_details (order_id, product_id, quantity)
VALUES
    (1, 1, 1),
    (2, 2, 2);


CREATE TABLE categories (
                            category_id SERIAL PRIMARY KEY,
                            category_name VARCHAR(50) NOT NULL UNIQUE
);
INSERT INTO categories (category_name)
VALUES
    ('Electronics'),
    ('Books');


CREATE TABLE product_categories (
                                    product_category_id SERIAL PRIMARY KEY,
                                    product_id INT REFERENCES products(product_id),
                                    category_id INT REFERENCES categories(category_id)
);
INSERT INTO product_categories (product_id, category_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 2);


CREATE TABLE reviews (
                         review_id SERIAL PRIMARY KEY,
                         product_id INT REFERENCES products(product_id),
                         user_id INT REFERENCES users(user_id),
                         rating INT CHECK (rating >= 1 AND rating <= 5),
                         comment TEXT
);
INSERT INTO reviews (product_id, user_id, rating, comment)
VALUES
    (1, 1, 5, 'Super!'),
    (2, 2, 4, 'Very good smartphone.');


CREATE TABLE transactions (
                              transaction_id SERIAL PRIMARY KEY,
                              order_id INT REFERENCES orders(order_id),
                              transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                              amount DECIMAL(10, 2) NOT NULL
);

INSERT INTO transactions (order_id, amount)
VALUES
    (1, 999.99),
    (2, 999.98);


CREATE TABLE addresses (
                           address_id SERIAL PRIMARY KEY,
                           user_id INT REFERENCES users(user_id),
                           street VARCHAR(255) NOT NULL,
                           city VARCHAR(100) NOT NULL,
                           zip_code VARCHAR(20) NOT NULL
);

INSERT INTO addresses (user_id, street, city, zip_code)
VALUES
    (1, 'Ibraimova 33', 'Bishkek', '722100'),
    (2, 'Naberejnaya', 'Tokmok', '67890');