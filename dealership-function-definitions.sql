-- INSERTING VALUES INTO DEALERSHIP TABLES
-- INSERT INTO CUSTOMERS
-- CREATE/REPLACE THE FUNCTION AND ADD THE PARAMETERS (CUSTOMER_ID NOT NECESSARY SINCE IT'S AUTOMATIC)
CREATE OR REPLACE FUNCTION add_customer(
	_first_name VARCHAR,
	_last_name VARCHAR,
	_address VARCHAR,
	_email VARCHAR,
	_billing_info VARCHAR
)
RETURNS void
-- WHAT THE FUNCTION DOES
AS $$
BEGIN
	INSERT INTO customer(first_name, last_name, address, email, billing_info)
	VALUES (_first_name, _last_name, _address, _email, _billing_info);
END;
$$
LANGUAGE plpgsql;

-- FUNCTION FOR SALESPERSON
CREATE OR REPLACE FUNCTION add_salesperson(
	_first_name VARCHAR,
	_last_name VARCHAR
)
RETURNS void
AS $$
BEGIN
	INSERT INTO salesperson(first_name, last_name)
	VALUES(_first_name, _last_name);
END;
$$
LANGUAGE plpgsql;

-- FUNCTION FOR MECHANIC
CREATE OR REPLACE FUNCTION add_mechanic(
	_first_name VARCHAR,
	_last_name VARCHAR
)
RETURNS void
AS $$
BEGIN
	INSERT INTO mechanic(first_name, last_name)
	VALUES(_first_name, _last_name);
END;
$$
LANGUAGE plpgsql;

-- FUNCTION FOR CAR
CREATE OR REPLACE FUNCTION add_cars(
	_vin_id VARCHAR,
	_car_make VARCHAR,
	_car_model VARCHAR,
	_car_year INTEGER,
	_color VARCHAR,
	_new_or_used VARCHAR,
	_price NUMERIC
)
RETURNS void
AS $$
BEGIN
	INSERT INTO cars(vin_id, car_make, car_model, car_year, color, new_or_used, price)
	VALUES (_vin_id, _car_make, _car_model, _car_year, _color, _new_or_used, _price);
END;
$$
LANGUAGE plpgsql;

-- FUNCTION FOR SERVICE INVOICE
CREATE OR REPLACE FUNCTION add_service_invoice(
	_customer_id INTEGER,
	_vin_id VARCHAR,
	_service_description VARCHAR,
	_total_service_price NUMERIC
)
RETURNS void
AS $$
BEGIN
	INSERT INTO service_invoice(customer_id, vin_id, service_description, total_service_price)
	VALUES (_customer_id, _vin_id, _service_description, _total_service_price);
END;
$$
LANGUAGE plpgsql;

-- FUNCTION FOR SERVICE TICKET
CREATE OR REPLACE FUNCTION add_service_ticket(
	_mechanic_id INTEGER,
	_service_id INTEGER
)
RETURNS void
AS $$
BEGIN
	INSERT INTO service_ticket(mechanic_id, service_id)
	VALUES (_mechanic_id, _service_id);
END;
$$
LANGUAGE plpgsql;

-- FUNCTION FOR SALES INVOICE
CREATE OR REPLACE FUNCTION add_sales_invoice(
	_customer_id INTEGER,
	_salesperson_id INTEGER,
	_vin_id VARCHAR,
	_total_price NUMERIC
)
RETURNS void
AS $$
BEGIN 
	INSERT INTO sales_invoice(customer_id, salesperson_id, vin_id, total_price)
	VALUES (_customer_id, _salesperson_id, _vin_id, _total_price);
END;
$$
LANGUAGE plpgsql;