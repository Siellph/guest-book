![PHP](https://img.shields.io/badge/-PHP-000?&logo=PHP) ![Laravel](https://img.shields.io/badge/-Laravel-000?&logo=Laravel) ![JavaScript](https://img.shields.io/badge/-JavaScript-000?&logo=JavaScript) ![MySQL](https://img.shields.io/badge/-MySQL-000?&logo=MySQL) ![HTML5](https://img.shields.io/badge/-HTML5-000?&logo=HTML5) ![CSS3](https://img.shields.io/badge/-CSS3-000?&logo=CSS3) 

# Гостевая книга на Laravel

Это приложение гостевой книги разработано с использованием фреймворка Laravel. Пользователи могут отправлять отзывы, которые сохраняются в базе данных и отображаются на главной странице.

![главная страница 1](/assets/1.png)

![Гланая стрганица 2](/assets/2.png)

![Форма](/assets/3.png)

## Особенности

- Удобный интерфейс для отправки отзывов.
- Динамическое отображение таблицы с возможностями сортировки и поиска с использованием DataTables.
- Отправленные отзывы сохраняются в базе данных.
- Обновление таблицы с отзывами в реальном времени после отправки нового отзыва.

## Предварительные требования

Перед началом убедитесь, что выполнены следующие требования:

- PHP >= 8.3
- Composer
- MySQL или любая другая база данных, поддерживаемая Laravel
- Node.js и npm

## Установка

### 1. Клонирование репозитория

```bash
git clone https://github.com/Siellph/guest-book.git
cd guest-book
```

### 2. Установка зависимостей

```bash
composer install
npm i
```

### 3. Настройка окружения

Скопируйте файл `.env.example` в `.env`:

```bash
cp .env.example .env
```

Сгенерируйте ключ приложения:

```bash
php artisan key:generate
```

### 4. Настройка базы данных

Обновите файл `.env` своими учетными данными для базы данных:

```plaintext
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=guest_book
DB_USERNAME=root
DB_PASSWORD=your_password
```

### 5. Создание базы данных

#### Используя phpMyAdmin

1. Откройте phpMyAdmin в браузере.
2. Создайте новую базу данных с именем `guest_book_db`.
3. Импортируйте файл `guest_book_db.sql`, расположенный в корне проекта, чтобы создать необходимые таблицы:
   - Выберите базу данных `guest_book_db`.
   - Перейдите на вкладку `Импорт`.
   - Нажмите `Выбрать файл` и выберите файл `guest_book_db.sql`.
   - Нажмите `Выполнить`, чтобы импортировать файл.

Также вы можете использовать командную строку:

```bash
mysql -u root -p guest_book_db < guest_book_db.sql
```

### 6. Запуск миграций

Если вы не использовали файл `guest_book_db.sql`, вы можете создать таблицы с помощью миграций Laravel:

```bash
php artisan migrate
```

### 7. Запуск приложения

```bash
php artisan serve
```

Откройте браузер и перейдите по адресу `http://127.0.0.1:8000`, чтобы открыть приложение.

## Использование

- Нажмите кнопку "Send feedback", чтобы открыть форму для отправки отзыва.
- Заполните форму и отправьте отзыв.
- Отзывы отображаются в таблице на главной странице.

## Лицензия

Этот проект является открытым и доступен под [лицензией MIT](LICENSE).
