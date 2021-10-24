CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150)
);
CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    sale INT
);
CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INT,
    customer_id INT,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE inventory(
    inventory_id SERIAL PRIMARY KEY,
    make VARCHAR(150),
    model VARCHAR(150),
    "year" VARCHAR(150),
    vin VARCHAR(150),
    salesperson_id INT,
    customer_id INT,
    FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE owned_car(
    owned_car_id SERIAL PRIMARY KEY,
    make VARCHAR(150),
    model VARCHAR(150),
    "year" VARCHAR(150),
    vin VARCHAR(150),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);
CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    owned_car_id INT,
    FOREIGN KEY(owned_car_id) REFERENCES owned_car(owned_car_id)
);
CREATE TABLE "service"(
    service_id SERIAL PRIMARY KEY,
    service_ticket INT,
    owned_car_id INT,
    FOREIGN KEY(owned_car_id) REFERENCES owned_car(owned_car_id)
);