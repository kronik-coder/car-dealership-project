-- NEW CUSTOMER NAMES
CREATE OR REPLACE FUNCTION customer_names(_first_name VARCHAR, _last_name VARCHAR)
RETURNS void
AS
$$
BEGIN
    INSERT INTO customer(first_name, last_name)
    VALUES(_first_name, _last_name);
END;
$$
LANGUAGE plpgsql
-- NEW MECHANIC NAMES
CREATE OR REPLACE FUNCTION mechanic_names(_first_name VARCHAR, _last_name VARCHAR)
RETURNS void
AS
$$
BEGIN
    INSERT INTO mechanic(first_name, last_name)
    VALUES(_first_name, _last_name);
END;
$$
LANGUAGE plpgsql
-- NEW SALES
CREATE OR REPLACE FUNCTION new_sale(_sale_id INT)
RETURNS void
AS
$$
BEGIN
    INSERT INTO salesperson(sale)
    VALUES(_sale_id);
END;
$$
LANGUAGE plpgsql
-- CREATE NEW CARS FOR PURCHASE
CREATE OR REPLACE FUNCTION new_car(_customer_id INT,
_salesperson_id INT, 
_make VARCHAR,
_model VARCHAR,
_year VARCHAR,
_vin VARCHAR)

RETURNS void
AS
$$
BEGIN
    INSERT INTO inventory(customer_id, salesperson_id, make, model, "year", vin)
    VALUES(_customer_id, _salesperson_id, _make, _model, _year, _vin);
END;
$$
LANGUAGE plpgsql
-- CREATE NEW INVOICES
CREATE OR REPLACE FUNCTION new_invoice(_salesperson_id INT, _customer_id INT)
RETURNS void
AS
$$
BEGIN
    INSERT INTO invoice(salesperson_id, customer_id)
    VALUES(_salesperson_id, _customer_id);
END;
$$
LANGUAGE plpgsql

-- CREATE NEW OWNED CARS
CREATE OR REPLACE FUNCTION new_owned_cars(_customer_id INT, 
_make VARCHAR,
_model VARCHAR,
_year VARCHAR,
_vin VARCHAR)
RETURNS void
AS
$$
BEGIN
    INSERT INTO owned_car(customer_id, make, model, "year", vin)
    VALUES(_customer_id, _make, _model, _year, _vin);
END;
$$
LANGUAGE plpgsql

-- NEW SERVICE
CREATE OR REPLACE FUNCTION new_service(_service_ticket INT, _owned_car_id INT)
RETURNS void
AS
$$
BEGIN
    INSERT INTO "service"(service_ticket, owned_car_id)
    VALUES(_service_ticket, _owned_car_id);
END;
$$
LANGUAGE plpgsql