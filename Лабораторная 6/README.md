# Лабораторная работа №6

### Установка MongoDB

Для работы с MongoDB используется Docker (MongoDB разворачивается в Docker-контейнере). В [docker-compose.yml](../docker-compose.yml)
описан сервис `mongo` и инструкции разворачивания контейнера:

* `MONGO_INITDB_ROOT_USERNAME: root` - имя рутового пользователя.
* `MONGO_INITDB_ROOT_PASSWORD: pwd` - пароль рутового пользователя.
* `- ./data-mongo:/data/db` - директория для хранения данных БД.

Также в docker-compose описан сервис `mongo-express` - GUI для MongoDB, аналог Compass.

### Подключение к MongoDB

После запуска контейнеров `mongo` и `mongo-express`, по адресу `http://localhost:8081` будет доступен интерфейс `mongo-express`:

![lab-6-1-mongo-express.jpg](lab-6-1-mongo-express.jpg)

При входе нужно авторизоваться, логин/пароль по умолчанию: `admin`/`pass`.

Также можно подключиться к MongoDB через интерактивную консоль контейнера (в контейнере `mongo` установлен Mongo Shell):

![lab-6-1-shell.jpg](lab-6-1-shell.jpg)

### Выполнение запросов

##### Создание БД

![lab-6-2-create-db-1.jpg](lab-6-2-create-db-1.jpg)

![lab-6-2-create-db-2.jpg](lab-6-2-create-db-2.jpg)

##### Создание коллекции

![lab-6-3-create-collection-1.jpg](lab-6-3-create-collection-1.jpg)

![lab-6-3-create-collection-2.jpg](lab-6-3-create-collection-2.jpg)

##### Добавление документов в коллекцию

Добавление документа "Автор" с вложенным документом "Контактные данные автора":

![lab-6-4-create-doc-1.jpg](lab-6-4-create-doc-1.jpg)

Добавление нескольких документов с помощью Mongo Shell:

![lab-6-4-create-doc-2.jpg](lab-6-4-create-doc-2.jpg)

Добавление документов со ссылками и массивом:

![lab-6-4-create-doc-3.jpg](lab-6-4-create-doc-3.jpg)

![lab-6-4-create-doc-4.jpg](lab-6-4-create-doc-4.jpg)

Результаты добавления документов:

![lab-6-4-create-doc-5.jpg](lab-6-4-create-doc-5.jpg)

![lab-6-4-create-doc-6.jpg](lab-6-4-create-doc-6.jpg)

Выборка всех документов одной коллекции:

![lab-6-4-create-doc-7.jpg](lab-6-4-create-doc-7.jpg)

Выборки с фильтрацией:

![lab-6-4-create-doc-8.jpg](lab-6-4-create-doc-8.jpg)

![lab-6-4-create-doc-9.jpg](lab-6-4-create-doc-9.jpg)

Поиск одного документа + Выборка с пагинацией:

![lab-6-4-create-doc-10.jpg](lab-6-4-create-doc-10.jpg)

Создание и удаление индекса:

![lab-6-4-create-doc-11.jpg](lab-6-4-create-doc-11.jpg)

Обновление документа + Удаление документов:

![lab-6-4-create-doc-12.jpg](lab-6-4-create-doc-12.jpg)

Удаление коллекции:

![lab-6-4-create-doc-13.jpg](lab-6-4-create-doc-13.jpg)