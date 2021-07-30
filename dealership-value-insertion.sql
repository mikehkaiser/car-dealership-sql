-- inserting values to database using the functions
-- ADDING CUSTOMERS
SELECT add_customer('Mike', 'Kaiser', '5004 Sully Ct Austin, TX 60016', 'mikesemail@mikesemail.org', '1234123412341234 2/22 123');
SELECT add_customer('Jordan', 'Zimmer', '8504 Centennial St Des Plaines, IL 57701', 'drjzimmer@drj.com', '9876987698769876 9/25 987');
SELECT add_customer('Eric', 'Vonderhaar', '276 Jinx Ave San Marcos, SD, 78748', 'ericlikestorun@runningworld.com', '2468135724681357 1/24 888');
SELECT add_customer('Kirsten', 'Tornes', '1358 Van Buren Dr Portland, OR 02211', 'kirstenisabadass@kirstensworld.com', '1234567887654321 9/30 910');
SELECT add_customer('Naomi', 'Berg', '615 Arizona St Salt Lake City, UT 90210', 'noamisemail@naomisemail.com', '1234567812345678 8/23 246');
SELECT add_customer('Kathy', 'Douglas', '3322 Saturn Dr San Marcos, SD, 78748', 'kathysemail@runningworld.com', '8765432187654321 8/25 135');
-- ADDING CARS
SELECT add_cars('IINL7P3BFU', 'Volkswagen', 'Jetta Sportwagen', 2015, 'Silver', 'used', 8999.00);
SELECT add_cars('SQ2DNW81ID', 'Ford', 'F150', 2021, 'White', 'new', 39999.00);
SELECT add_cars('TGH8EOOCO1','Nissan', 'Leaf', 2020, 'Teal', 'new', 24999.00);
SELECT add_cars('SAOWL2P5VE','Toyota', 'Camry', 2021, 'Red', 'new', 31999.00);
SELECT add_cars('64U9SRUTSL','Toyota', 'Carolla', 2018, 'Green', 'used', 17999.00);
SELECT add_cars('CXADE2NTU0','Subaru', 'Forester', 2021, 'Black', 'New', 34999.00);
SELECT add_cars('WDW18X3HMS','Toyota', 'Tacoma', 2020, 'Pewter', 'New', 28999.00);
SELECT add_cars('WARGDCB5YO','Toyota', 'Tacoma', 2020, 'Black', 'New', 27999.00);
SELECT add_cars('2OCYZ6NTVP', 'Volkswagen', 'Golf', 2021, 'Green', 'new', 29999.00);

-- ADDING SALESPEOPLE
SELECT add_salesperson('Nate', 'Lee');
SELECT add_salesperson('Marcus', 'Welter');
SELECT add_salesperson('Nicole', 'Tang');
SELECT add_salesperson('Marlene', 'Shannon');

-- ADDING MECHANICS
SELECT add_mechanic('Kevin', 'Kevinson');
SELECT add_mechanic('Al', 'Albertson');
SELECT add_mechanic('Martin', 'Martinson');
SELECT add_mechanic('Jennifer', 'Jenniferson');

-- ADDING SALES INVOICES
SELECT* FROM customer

SELECT add_sales_invoice(13, 3,'CXADE2NTU0', 40248.85);
SELECT add_sales_invoice(10, 2,'IINL7P3BFU', 10348.85);
SELECT add_sales_invoice(11, 1,'WDW18X3HMS', 33348.85);
SELECT add_sales_invoice(12, 3,'SAOWL2P5VE', 36798.85);
SELECT add_sales_invoice(13, 4,'TGH8EOOCO1', 28748.85);

-- ADDING SERVICE INVOICES
SELECT add_service_invoice(14,'SQ2DNW81ID','oil change and lift kit install', 3000.00);
SELECT add_service_invoice(15,'64U9SRUTSL','tire rotation and balance(free with brake service)/new brake pads and rotors', 1000.00 );
SELECT add_service_invoice(10,'IINL7P3BFU','transmission fluid flush and oil change', 250.00 );

-- ADDING SERVICE TICKETS (SERVICE LINE ITEMS)

SELECT * FROM SERVICE_INVOICE

SELECT add_service_ticket(3,1);
SELECT add_service_ticket(4,1);
SELECT add_service_ticket(1,2);
SELECT add_service_ticket(2,2);
SELECT add_service_ticket(3,2);
SELECT add_service_ticket(2,3);
SELECT add_service_ticket(4,3);

SELECT* FROM service_TICKET
