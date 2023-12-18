# Лабораторная работа №4
## Восстановление БД NYC
### 1. Создание принимающей БД, установка PostGIS
Для использования расширения PostGIS возспользуемся образом `kartoza/postgis:15-3` (см. [docker-compose.yml](../docker-compose.yml)).

Создание БД (по аналогии с созданием БД в лабораторной работе №2):
![lab-4-1-create-db.jpg](lab-4-1-create-db.jpg)

```sql
CREATE EXTENSION postgis;
```
![lab-4-2-create-postgis-ext.jpg](lab-4-2-create-postgis-ext.jpg)

```sql
SELECT postgis_full_version();
```
![lab-4-3-postgis-version.jpg](lab-4-3-postgis-version.jpg)

### 2. Восстановление БД из бэкапа
![lab-4-4-restore-1.jpg](lab-4-4-restore-1.jpg)

![lab-4-4-restore-2.jpg](lab-4-4-restore-2.jpg)

![lab-4-4-restore-3.jpg](lab-4-4-restore-3.jpg)

![lab-4-4-restore-4.jpg](lab-4-4-restore-4.jpg)

## Установка расширений
### 1. pgcrypto
![lab-4-5-pgcrypto.jpg](lab-4-5-pgcrypto.jpg)

### 2. hstore
![lab-4-5-hstore.jpg](lab-4-5-hstore.jpg)

### 3. uuid-ossp
![lab-4-5-uuid-ossp.jpg](lab-4-5-uuid-ossp.jpg)

### 4. pg_stat_statements
![lab-4-5-pg_stat_statements-1.jpg](lab-4-5-pg_stat_statements-1.jpg)

Для перезапуска сервера БД был перезапущен docker-контейнер.

![lab-4-5-pg_stat_statements-2.jpg](lab-4-5-pg_stat_statements-2.jpg)

## Запросы
### 1. PostGIS
![lab-4-6-postgis-1.jpg](lab-4-6-postgis-1.jpg)

![lab-4-6-postgis-2.jpg](lab-4-6-postgis-2.jpg)

### 2. pgcrypto
![lab-4-6-pgcrypto.jpg](lab-4-6-pgcrypto.jpg)

### 3. hstore
![lab-4-6-hstore.jpg](lab-4-6-hstore.jpg)

### 4. uuid-ossp
![lab-4-6-uuid-ossp.jpg](lab-4-6-uuid-ossp.jpg)

### 5. pg_stat_statements
![lab-4-6-pg_stat_statements.jpg](lab-4-6-pg_stat_statements.jpg)

## Соединения
### 1. Естественное соединение
INNER JOIN:
![lab-4-7-join-inner.jpg](lab-4-7-join-inner.jpg)

### 2. Внешнее соединение
LEFT OUTER JOIN:
![lab-4-7-join-outer.jpg](lab-4-7-join-outer.jpg)

### 3. Декартово соединение
CROSS JOIN:
![lab-4-7-join-cross.jpg](lab-4-7-join-cross.jpg)

### 4. Полусоединение / антисоединение
ANTI JOIN:
![lab-4-7-join-semi.jpg](lab-4-7-join-semi.jpg)