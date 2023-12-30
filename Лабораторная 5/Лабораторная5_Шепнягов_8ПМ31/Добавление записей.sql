-- Заполнение таблицы Client данными о клиентах компании
INSERT INTO Client (client_id, company_name, legal_address, bank_account, additional_info)
VALUES
    (1, 'ABC Inc.', '123 Main St, CityA, CountryX', '1234567890', '{"industry": "IT", "contact_person": "John Doe", "email": "john@abcinc.com"}');
 
INSERT INTO Client (client_id, company_name, legal_address, bank_account, additional_info)
VALUES
	(2, 'XYZ Corporation', '456 Oak Ave, CityB, CountryY', '9876543210', '{"industry": "Finance", "contact_person": "Jane Smith", "email": "jane@xyzcorp.com"}');
	
INSERT INTO Client (client_id, company_name, legal_address, bank_account, additional_info)
VALUES
	(3, 'EFG Ltd.', '789 Elm St, CityC, CountryZ', '4567890123', '{"industry": "Retail", "contact_person": "Sam Johnson", "email": "sam@efgltd.com"}');

-- Заполнение таблицы Manager данными о менеджерах
INSERT INTO Manager (manager_id, last_name, first_name, partonymic, additional_info)
VALUES
    (1, 'Smith', 'Alice', 'Anne', '{"department": "Sales", "experience_years": 5, "email": "alice@company.com"}');

INSERT INTO Manager (manager_id, last_name, first_name, partonymic, additional_info)
VALUES
	(2, 'Johnson', 'Bob', 'James', '{"department": "Marketing", "experience_years": 8, "email": "bob@company.com"}');
	
INSERT INTO Manager (manager_id, last_name, first_name, partonymic, additional_info)
VALUES
	(3, 'Williams', 'Charlie', 'David', '{"department": "Finance", "experience_years": 10, "email": "charlie@company.com"}');

-- Заполнение таблицы Transaction данными о транзакциях
INSERT INTO Transaction (transaction_id, transaction_date, total_price, additional_info)
VALUES
    (1, '2023-01-15', 1500.00, '{"payment_method": "Credit Card", "status": "Completed"}');

INSERT INTO Transaction (transaction_id, transaction_date, total_price, additional_info)
VALUES
    (2, '2023-02-20', 2500.50, '{"payment_method": "Bank Transfer", "status": "Pending"}');
	
INSERT INTO Transaction (transaction_id, transaction_date, total_price, additional_info)
VALUES
    (3, '2023-03-10', 500.75, '{"payment_method": "Cash", "status": "Completed"}');
	
-- Заполнение таблицы SoldItem данными о проданных товарах
INSERT INTO SoldItem (sold_item_id, product_name, measurement_unit, quantity, price_per_unit, additional_info)
VALUES
    (1, 'Laptop', 'pcs', 5, 700.00, '{"warranty": true, "discount": 10}');

INSERT INTO SoldItem (sold_item_id, product_name, measurement_unit, quantity, price_per_unit, additional_info)
VALUES
    (2, 'Smartphone', 'pcs', 10, 150.50, '{"warranty": false, "discount": 5}');
	
INSERT INTO SoldItem (sold_item_id, product_name, measurement_unit, quantity, price_per_unit, additional_info)
VALUES
    (3, 'Printer', 'pcs', 2, 200.25, '{"warranty": true, "discount": 0}');

-- Заполнение таблицы ClientManager данными о связях клиентов и менеджеров
INSERT INTO ClientManager (client_id, manager_id)
VALUES
    (1, 1);

INSERT INTO ClientManager (client_id, manager_id)
VALUES
    (2, 2);

INSERT INTO ClientManager (client_id, manager_id)
VALUES
    (3, 3);
