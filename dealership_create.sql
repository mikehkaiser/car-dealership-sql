-- CREATING DEALERSHIP TABLES
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	address VARCHAR(150),
	email VARCHAR(100),
	billing_info VARCHAR(30)
);

CREATE TABLE salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL
);

CREATE TABLE mechanic(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL
);

CREATE TABLE cars(
	vin_id VARCHAR(100) PRIMARY KEY,
	car_make VARCHAR(100) NOT NULL,
	car_model VARCHAR(100) NOT NULL,
	car_year NUMERIC(4) NOT NULL,
	color VARCHAR(50),
	new_or_used VARCHAR(5) NOT NULL,
	price NUMERIC(8,2) NOT NULL
);

CREATE TABLE sales_invoice(
	sale_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	salesperson_id INTEGER NOT NULL,
	vin_id VARCHAR(100) NOT NULL,
	sales_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0) NOT NULL,
	total_sales_price NUMERIC(8,2) NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
	FOREIGN KEY (vin_id) REFERENCES cars(vin_id)
);

CREATE TABLE service_invoice(
	service_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	vin_id VARCHAR(100),
	service_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(0),
	service_description VARCHAR(150),
	total_service_price NUMERIC(8,2),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (vin_id) REFERENCES cars(vin_id)
);

CREATE TABLE service_ticket(
	ticket_id SERIAL PRIMARY KEY,
	service_id INTEGER,
	mechanic_id INTEGER,
	FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY (service_id) REFERENCES service_invoice(service_id)
);