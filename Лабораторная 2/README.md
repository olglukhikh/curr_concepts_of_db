# Лабораторная работа №2

### Нормализация модели БД
Модель БД, реализованная в лабораторной работе 1, уже является нормализованной:
![DB-Model.jpg](DB-Model.jpg)


### Разворачивание бэкапа БД "demo"
Для работы с БД используется Docker (PostgreSQL разворачивается в Docker-контейнере). В [docker-compose.yml](../docker-compose.yml)
описаны инструкции разворачивания контейнера:
* `POSTGRES_DB: 'tpu-db-1'` - название БД, которая будет создана автоматически при инициализации контейнера.
* `POSTGRES_PASSWORD: 'postgres'` - пароль пользователя postgres.
* `- ./data:/var/lib/postgresql/data` - директория для хранения данных БД.
* `- ./setup:/docker-entrypoint-initdb.d` - директория со скриптом инициализации БД. Этот скрипт
([create_schema.sql](../setup/create_schema.sql)) создаёт пользователя и схему tpu_db.
* `- ./backup:/backup` - монтируем скрипт бэкапа БД в контейнер, чтобы в дальнейшем выполнить его в контейнере.

##### Подключение к PostgreSQL
Запущенный контейнер, подключение к нему через DBeaver (на скриншоте выделил логи контейнера по созданию БД, пользователя и схемы):
![db-connect.jpg](db-connect.jpg)

##### Создание БД
Как уже писал ранее, БД tpu-db-1 была создана автоматически, но вот пример создания БД в DBeaver:
![db-create-1.jpg](db-create-1.jpg)
![db-create-2.jpg](db-create-2.jpg)

##### Разворачивание бэкапа БД

Скрипт бэкапа смонтирован в контейнер:
![backup-in-container.jpg](backup-in-container.jpg)

Выполнение скрипта бэкапа:
![backup-exec-1.jpg](backup-exec-1.jpg)
<...>
![backup-exec-4.jpg](backup-exec-4.jpg)

БД "demo" в списке всех БД:
![db-demo.jpg](db-demo.jpg)


### Выполнение запросов
Открытие редактора SQL в DBeaver:
![sql-editor.jpg](sql-editor.jpg)

##### Задание
Вариант 4<br/>
Выборка всех данных из таблицы «bookings» без указания столбцов.<br/>
Выборка всех данных из таблицы «flights» по столбцам: flight_id, flight_no, scheduled_departure, scheduled_arrival,
departure_airport, arrival_airport.<br/>
Создание любой таблицы.

##### Выборка всех данных из таблицы «bookings»
![select-bookings.jpg](select-bookings.jpg)

##### Выборка всех данных из таблицы «flights» по столбцам
![select-flights.jpg](select-flights.jpg)

##### Создание любой таблицы
![create-table.jpg](create-table.jpg)