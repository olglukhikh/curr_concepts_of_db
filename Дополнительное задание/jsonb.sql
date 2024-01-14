create table trains_jsonb
(
    number int NOT NULL PRIMARY KEY,
    type jsonb NOT NULL default '{"name": "", "overpayment": 0}'::jsonb
);

create table departure_cars_jsonb
(
    departure int NOT NULL,
    car_number int NOT NULL,
    car_type jsonb NOT NULL default '{"name": "", "overpayment": 0}'::jsonb,
    PRIMARY KEY (departure, car_number),
    foreign key (departure) references departures(id) on update cascade on delete cascade
);


alter table departures DROP CONSTRAINT departures_train_number_fkey;
alter table tickets DROP CONSTRAINT tickets_departure_car_number_fkey;

alter table departures ADD CONSTRAINT departures_train_number_fkey foreign key (train_number) references trains_jsonb(number) on update cascade on delete restrict;
alter table tickets ADD CONSTRAINT tickets_departure_car_number_fkey foreign key (departure, car_number) references departure_cars_jsonb(departure, car_number) on update cascade on delete restrict;
