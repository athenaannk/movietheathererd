CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(200),
    age INTEGER

)


CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    showing_date TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    price NUMERIC(10,2),
    payment_method VARCHAR(50),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    film_id INTEGER NOT NULL

)


CREATE TABLE movies(
    film_id SERIAL PRIMARY KEY,
    film_name VARCHAR(100),
    film_description VARCHAR,
    rating DECIMAL(2),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)

)


CREATE TABLE concessions(
    sale_id SERIAL PRIMARY KEY,
    transaction_id INTEGER,
    price NUMERIC(10,2),
    payment_method VARCHAR(50),
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)   

)

ALTER TABLE tickets
ADD FOREIGN KEY (film_id) REFERENCES movies(film_id)