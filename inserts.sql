-- INSERT NEW CUSTOMER NAMES
SELECT customer_names('Nick', 'Cage');
SELECT customer_names('Natasha', 'Ross');
SELECT customer_names('Paulene', 'Jon');
SELECT customer_names('Emilio', 'Geneva');
SELECT customer_names('Sonia', 'Chad');
SELECT customer_names('Gael', 'Marcy');
SELECT customer_names('Kerry', 'Loretta');
SELECT customer_names('Keeleigh', 'Kyara');
SELECT customer_names('Milton', 'Barclay');
SELECT customer_names('Chester', 'Stew');
-- INSERT NEW MECHANIC NAMES
SELECT mechanic_names('Larry', 'Porter');
SELECT mechanic_names('Bruce', 'Payne');
SELECT mechanic_names('Hallam', 'Terry');
SELECT mechanic_names('Adrian', 'Yanez');
SELECT mechanic_names('Jamey', 'Page');
-- CREATE NEW SALES
SELECT new_sale(1);
SELECT new_sale(2);
SELECT new_sale(3);
SELECT new_sale(4);
SELECT new_sale(5);
-- CREATE NEW CARS
SELECT new_car(1, 1, 'Nissan', 'GTR', '2020', 'WAUDH78E67A103850');
SELECT new_car(3, 2, 'Honda', 'NSX', '2019', '5J6RM4H35CL016323');
SELECT new_car(4, 3, 'Chevy', 'Corvette C8', '2021', 'JTHBD182210028732');
SELECT new_car(5, 4, 'Ford', 'GT', '2020', 'WAUDH78E67A103850');
SELECT new_car(6, 5, 'Dodge', 'Challenger Hellcat Redeye', '2021', '1GNSCJE06BR310772');
-- CREATE NEW INVOICE
SELECT new_invoice(1, 1);
SELECT new_invoice(2, 3);
SELECT new_invoice(3, 4);
SELECT new_invoice(4, 5);
SELECT new_invoice(5, 6);
-- CREATE NEW OWNED CAR
SELECT new_owned_cars(7, 'Nissan', '350Z', '2015', '5J6RM4H54CL081679');
SELECT new_owned_cars(8, 'Dodge', 'Charger', '2017', '5N1AT2MV1FC864927');
SELECT new_owned_cars(9, 'Nissan', 'Altima', '2013', '1G1PC5SB2F7116052');
SELECT new_owned_cars(10, 'Jeep', 'Grand Cherokee Trackhawk', '2021', '1G2NV52E11C177772');
SELECT new_owned_cars(11, 'Bugatti', 'Chiron', '2021', 'JTHBJ46G772021183');
-- WORKING MECHANICS
UPDATE mechanic
SET owned_car_id = 5
WHERE mechanic_id = 5
-- NEW SERVICE
SELECT new_service(1, 1);
SELECT new_service(2, 2);
SELECT new_service(3, 3);
SELECT new_service(4, 4);
SELECT new_service(5, 5);