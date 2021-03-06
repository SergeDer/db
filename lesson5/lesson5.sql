/* Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем. */
UPDATE `users`
SET
	`created_at` = NOW(),
	`updated_at` = NOW(); --Можно без этой строки, т.к. в логике таблицы заложено автоматическое обновление поля updated_at
	
DESCRIBE users;


/* Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения 
в формате "20.10.2017 8:10". Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения. */

/* Не разобрался как сделать, написал Вам в ЛС */


/* В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры:
0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом,
чтобы они выводились в порядке увеличения значения value.
Однако, нулевые запасы должны выводиться в конце, после всех записей. */

SELECT * FROM storehouses_products ORDER BY IF(VALUE = 0, 1, 0);


/*Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий ('may', 'august') */

SELECT `id`, `name`, DATE_FORMAT(birthday_at, '%M') AS birthday FROM users WHERE (DATE_FORMAT(birthday_at, '%M')='May' OR DATE_FORMAT(birthday_at, '%M')='August');


/*Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN. */

SELECT * FROM catalogs WHERE id IN (5, 1, 2)
ORDER BY CASE
    WHEN id = 5 THEN 1
    WHEN id = 1 THEN 2
    WHEN id = 2 THEN 3
END;


/* Подсчитайте средний возраст пользователей в таблице users */

SELECT  
  AVG(TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS average_age
FROM
  users;
  

/* Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
Следует учесть, что необходимы дни недели текущего года, а не года рождения. */

SELECT COUNT(*), DAYOFWEEK(DATE_FORMAT(birthday_at, '2020-%m-%d')) AS day FROM users GROUP BY day;


/*Подсчитайте произведение чисел в столбце таблицы */

SELECT EXP(SUM(LOG(X))) FROM tbl;