create table train_types
(
    name varchar(50) NOT NULL PRIMARY KEY,
    overpayment decimal NOT NULL
);

create table trains
(
    number int NOT NULL PRIMARY KEY,
    type varchar(50) NOT NULL,
    foreign key (type) references train_types(name) on update cascade on delete restrict
);

create table departures
(
    id int NOT NULL PRIMARY KEY,
    train_number int NOT NULL,
    departure timestamp NOT NULL,
    arrival timestamp NOT NULL,
    destination varchar(50) NOT NULL,
    distance_km int NOT NULL,
    base_price decimal NOT NULL,
    foreign key (train_number) references trains(number) on update cascade on delete restrict
);

create table car_types
(
    name varchar(50) NOT NULL PRIMARY KEY,
    overpayment decimal NOT NULL
);

create table departure_cars
(
    departure int NOT NULL,
    car_number int NOT NULL,
    car_type varchar(50) NOT NULL,
    PRIMARY KEY (departure, car_number),
    foreign key (departure) references departures(id) on update cascade on delete cascade,
    foreign key (car_type) references car_types(name) on update cascade on delete restrict
);

create table customers
(
    id int NOT NULL PRIMARY KEY,
    firstname varchar(50) NOT NULL,
    lastname varchar(50) NOT NULL,
    patronymic varchar(50) NOT NULL,
    address text NOT NULL
);

create table tickets
(
    id int NOT NULL PRIMARY KEY,
    customer int NOT NULL,
    departure int NOT NULL,
    car_number int NOT NULL,
    seat int NOT NULL,
    price decimal NOT NULL,
    foreign key (customer) references customers(id) on update cascade on delete cascade,
    foreign key (departure, car_number) references departure_cars(departure, car_number) on update cascade on delete restrict
);
