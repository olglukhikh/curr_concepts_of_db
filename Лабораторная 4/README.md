# Лабораторная №4
## Задание
В ходе этого задания вам потребуется выполнить запросы:
- обращающиеся к функциям установленных расширений;
- реализующие все шесть типов соединений.

### PostGIS  
Изучите материал и запустите скрипты:
https://postgis.net/workshops/postgis-intro/simple_sql_exercises.html
https://postgis.net/workshops/postgis-intro/geometries.html  
Сделайте скриншот таблиц «geometries» из пункта 9.3, «geometry_columns» из пункта 9.2.

### pgcrypto  
Изучите материалы:
https://postgrespro.ru/docs/postgresql/15/pgcrypto
https://docs.arenadata.io/ru/ADPG/current/how-to/manage-database-access/encryption.html  
Запустите скрипты (потребуется несколько дополнительных скриптов из второй статьи):
- SELECT (crypt('my_secure_password', gen_salt('bf'))) as c,
(encode(digest('MyPassword','sha256'),'hex')) as e, 
(hmac('MyPassword', 'My_key', 'sha256')) as h;
- UPDATE table1 SET password_hash = crypt('new_password', gen_salt('md5'));
- SELECT (password_hash = crypt('entered_password', password_hash)) AS password_match FROM table1;
- SELECT username, pgp_sym_decrypt(password::bytea, 'aes_key') as password
FROM users WHERE (username LIKE '%Robert%');  

Сделайте скриншот таким образом, чтобы все запросы были видны в окне «Query», а результат (DataOutput) был по одному (любому) из них.  

### hstore  
Изучите материалы:
https://postgrespro.ru/docs/postgresql/15/hstore
https://docs.arenadata.io/ru/ADPG/current/how-to/queries/use-complex-types/hstore.html  
Запустите скрипты (потребуется несколько дополнительных скриптов из второй статьи):
- SELECT name, attributes->'author' as author FROM products 
WHERE attributes -> 'genre' = 'sci-fi';
- UPDATE products
SET attributes = attributes || '"freeshipping"=>"yes"' :: hstore
WHERE name = 'Hyperion';
- UPDATE products SET attributes = attributes || hstore(ARRAY[['pages', '32'],['media', 'ebook']]) WHERE id = 4;
- SELECT name, attributes -> 'publisher' as publisher
FROM products
WHERE attributes ? 'publisher';
Сделайте скриншот таким образом, чтобы все перечисленные запросы были видны в окне «Query», а результат («DataOutput») был по одному (любому) из них.

### uuid-ossp  
Изучите материал:
https://postgrespro.ru/docs/postgresql/15/uuid-ossp 
Запустите функции:
- uuid_generate_v1mc
- uuid_generate_v3
- uuid_generate_v4
- uuid_ns_oid
- gen_random_uuid (из другого расширения)  

Сделайте скриншот таким образом, чтобы запросы с перечисленными функциями были видны в окне «Query», а результат («DataOutput») был по одному (любому) из них.

### pg_stat_statements  
Изучите материалы:
https://postgrespro.ru/docs/postgresql/15/pgstatstatements
https://timeweb.cloud/tutorials/postgresql/rasshireniya-dlya-postgresql  
Запустите скрипты:
- SELECT query, (total_exec_time / 1000 / 60) as total_min, mean_exec_time as avg_ms, calls
FROM pg_stat_statements
ORDER BY 1
DESC LIMIT 10;
- SELECT query, calls, total_time, rows, shared_blks_hit, shared_blks_read 
FROM pg_stat_statements 
WHERE query LIKE 'SELECT%' 
ORDER BY shared_blks_read DESC, calls DESC 
LIMIT 5;

Сделайте скриншот таким образом, чтобы оба запроса были видны в окне «Query», а результат («DataOutput») был по одному (любому) из них.

### Соединения
Изучите материалы:
https://postgrespro.ru/docs/postgresql/15/sql-select
https://docs.arenadata.io/ru/ADPG/current/how-to/queries/join.html
Реализуйте перечисленные соединения: 
- Естественное соединение (INNER JOIN)
- Внешнее соединение, одно из: 
- LEFT OUTER JOIN
- RIGHT OUTER JOIN
- FULL OUTER JOIN
- Соединение таблицы с самой собой или декартово соединение (CROSS JOIN)
- Полусоединение или анти-полусоединение  

В качестве основы для запросов можно использовать примеры из статей, описания демонстрационной базы данный или любой другой источник (в т. ч. можно создать и заполнить нужные таблицы), в одном запросе можно сделать несколько соединений. Основное условие – в запросе комментарием (он указывается с помощью «--» в начале строки) явно укажите, какое или какие соединения присутствуют.

## Запросы
### PostGIS
#### geometry_columns  
![geometry_columns](https://i.imgur.com/r5OsaCb.png)
#### geometries  
![geometries](https://i.imgur.com/CLhg9X2.png)
### pgcrypto
![pgcrypto](https://i.imgur.com/VpYFMPe.png)
### hstore
![hstore](https://i.imgur.com/ln4fwi7.png)
### uuid-ossp
![uuid-ossp](https://i.imgur.com/a0SOXRc.png)
### pg_stat_statements
![pg_stat_statements](https://i.imgur.com/iuE2Gzc.png)

### Соединения
Для выполнения запросов с соединениями была скачана и развернута тестовая БД "DVD Rental Store".
#### Схема таблиц БД:
![Схема БД](https://i.imgur.com/jDiCxbL.png)
#### Естественное соединение (INNER JOIN)
![inner_join](https://i.imgur.com/3bqCumA.png)
#### Внешнее соединение (LEFT OUTER JOIN)
![left_join](https://i.imgur.com/4oQkrnP.png)
#### Декартово соединение (CROSS JOIN)
![cross_join](https://i.imgur.com/hNtZ1m8.png)
#### Полусоединение (SEMI JOIN)
![semi_join](https://i.imgur.com/3fyQmnf.png)