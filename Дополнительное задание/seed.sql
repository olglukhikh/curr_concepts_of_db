insert into trains_jsonb (number, type) values
(1, '{"name": "скоростной", "overpayment": 300}'),
(2, '{"name": "скорый", "overpayment": 200}'),
(3, '{"name": "пассажирский", "overpayment": 100}');

insert into departures (id, train_number, departure, arrival, destination, distance_km, base_price) values
(1, 1, '2024-01-10 16:58:00', '2024-01-11 05:01:00', 'Tomsk', 800, 764.50),
(2, 1, '2024-01-09 16:35:00', '2024-01-10 06:19:00', 'Novosibirsk', 850, 784.50),
(3, 2, '2024-01-10 18:56:00', '2024-01-11 04:20:00', 'Novokuznetsk', 200, 278.00);

insert into departure_cars_jsonb (departure, car_number, car_type) values
(1, 1, '{"name": "общий", "overpayment": 0}'),
(1, 2, '{"name": "плацкартный", "overpayment": 100}'),
(1, 3, '{"name": "купе", "overpayment": 200}'),
(1, 4, '{"name": "спальный", "overpayment": 300}'),
(2, 1, '{"name": "общий", "overpayment": 0}'),
(2, 2, '{"name": "купе", "overpayment": 100}'),
(3, 1, '{"name": "общий", "overpayment": 0}'),
(3, 2, '{"name": "купе", "overpayment": 200}'),
(3, 3, '{"name": "купе", "overpayment": 200}'),
(3, 4, '{"name": "спальный", "overpayment": 300}'),
(3, 5, '{"name": "спальный", "overpayment": 300}');

insert into customers (id, firstname, lastname, patronymic, address) values
(1, 'Роман', 'Григорьев', 'Имангалиевич', 'Новокузнецк, Кирова 73'),
(2, 'Андрей', 'Котов', 'Олегович', 'Новокузнецк, Металлургов 19'),
(3, 'Юрий', 'Мжачих', 'Олегович', 'Новокузнецк, Ленина 45'),
(4, 'Антон', 'Иванов', 'Иванович', 'Томск, Кирова 78'),
(5, 'Алексей', 'Чернодаров', 'Иванович', 'Новосибирск, Ушакова 32');

insert into tickets (id, customer, departure, car_number, seat, price) values
(1, 1, 1, 1, 12, 1064.50),
(2, 2, 2, 1, 30, 1084.50),
(3, 3, 3, 5, 10, 778.00);