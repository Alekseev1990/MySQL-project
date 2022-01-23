USE my_project;

-- 6.1 Найти покупателей, у которых есть любимые продукты, чтобы отправить им на почту дополнительный купон на скидку
SELECT CONCAT(u.firstname, ' ', u.lastname) AS client, u.email FROM likes l
LEFT JOIN users u ON u.id = l.user_id
GROUP BY client;

-- 
SELECT o.order_id, h.hometown_name, d.district_name AS city,
(SELECT status_name FROM status s WHERE o.status_id = s.id) AS `статус`
FROM orders o
JOIN hometown h ON h.id = o.hometown_id
JOIN district d ON d.id = o.district_id
ORDER BY o.id;


-- 6.3 Сопоставить по районам количество заказов и количество курьеров. 
-- Расставить статусы: количество заказов больше количества курьеров - "нужны курьеры",
-- количество заказов равно количеству курьеров - "курьеров достаточно",
-- количество заказов меньше количества курьеров - "требуется перераспределение"
SELECT (SELECT district_name FROM district WHERE id = cour.district_id) AS `район`,
(SELECT COUNT(o.district_id) FROM orders o WHERE o.district_id = cour.district_id) AS `количество заказов`,
COUNT(cour.id) as `количество курьеров`, 
	CASE
	WHEN (SELECT COUNT(o.district_id) FROM orders o WHERE o.district_id = cour.district_id) - COUNT(cour.id) > 0
		THEN 'нужны курьеры'
	WHEN (SELECT COUNT(o.district_id) FROM orders o WHERE o.district_id = cour.district_id) - COUNT(cour.id) = 0
		THEN 'курьеров достаточно'
	WHEN (SELECT COUNT(o.district_id) FROM orders o WHERE o.district_id = cour.district_id) - COUNT(cour.id) < 0 
		THEN 'требуется перераспределение'
	END AS `статус`
FROM couriers cour
GROUP BY cour.district_id; 


-- 6.4 Посчитать на какую сумму было заказано (активные и завершенные заказы) 
-- товаров из магазинов в разбивке по городам и магазинам 

SELECT COALESCE(h.hometown_name, 'Total') AS town, 
	   COALESCE(m.market_name,'Total') AS market, 
	   SUM(o.summ_of_order) AS `сумма заказов`
FROM orders o
JOIN hometown h ON h.id = o.hometown_id
JOIN market m ON m.id = o.market_id
GROUP BY h.hometown_name, m.market_name WITH ROLLUP;


-- 6.5 Какие позиции в заказах были самыми дорогими.
SELECT order_id AS `завершенный заказ`, 
(SELECT product_name FROM products WHERE id = pio.product_name_id) AS `наименование товаров`, 
(SELECT product_category_name FROM product_category pc WHERE pc.id = pio.product_category_id) AS `наименование категории`,
product_quanity,
(SELECT price FROM products WHERE id = pio.product_name_id) AS `стоимость за единицу`,
(SELECT product_quanity * (SELECT price FROM products WHERE id = pio.product_name_id)) AS `сумма`
FROM products_in_order pio WHERE pio.order_id IN (SELECT order_id FROM orders o WHERE status_id = 2)
ORDER BY `сумма` DESC;


-- 6.6 Товаров какой категории больше всего заказывали.
SELECT pc.product_category_name, SUM(product_quanity) AS `количество товаров` FROM products_in_order pio
JOIN product_category pc ON pc.id = pio.product_category_id
GROUP BY product_category_id
ORDER BY `количество товаров` DESC;


-- 6.7 Вывести информацию о приобретенных товарах в разрезе категории товаров
SELECT o.order_id, 
(SELECT product_category_name FROM product_category pc WHERE pc.id = pio.product_category_id) AS `категория`,
h.hometown_name, 
m.market_name,
(SELECT product_quanity * (SELECT price FROM products WHERE id = pio.product_name_id)) AS `сумма` -- сумма заказа разбита по категориям
-- d.dostavka_type
FROM orders o
LEFT JOIN products_in_order pio ON pio.order_id = o.order_id
JOIN hometown h ON h.id = o.hometown_id
JOIN market m ON m.id = o.market_id
-- JOIN dostavka d ON d.id = o.dostavka_id
ORDER BY order_id;


-- 7. Представления
-- 7.1 Нужно периодически вызывать номер заказа, статус заказа, сумму заказа и нименование магазина.

CREATE VIEW fast_info_order (`номер заказа`, `статус заказа`, `сумма заказа`, `магазин`) 
AS SELECT order_id, 
	(SELECT status_name FROM status WHERE id = orders.status_id),
	summ_of_order, 
	(SELECT market_name FROM market WHERE id = orders.market_id) 
FROM orders;

SELECT * FROM fast_info_order;

-- 7.2 Выгрузка количества заказов (активные и завершенные) по городам

CREATE VIEW town_orders AS SELECT COUNT(*),
	(SELECT hometown_name FROM hometown WHERE id = orders.hometown_id) AS town
FROM orders GROUP BY hometown_id;

SELECT * FROM town_orders;	


-- 7.3 Показать номера активных заказов.
CREATE VIEW closed_orders AS SELECT order_id, 
	(SELECT status_name FROM status WHERE id = orders.status_id) AS `статус`
FROM orders WHERE status_id = '1';

SELECT * FROM closed_orders;


-- 8.1 Хранимые процедуры и триггеры
-- Процедура на вызов записей из таблицы оценки качества, где оценка ниже 5 осталась без ответа
ALTER TABLE quality ADD COLUMN `answer` VARCHAR(255) NULL DEFAULT 'no answer';

DROP PROCEDURE IF EXISTS without_answer
DELIMITER //
CREATE PROCEDURE without_answer()
BEGIN
	SELECT id, user_id FROM quality WHERE `grade` < 5 AND `answer` = 'no answer';
END//
DELIMITER ;
CALL without_answer();


-- 8.2 хранимая процедура на вызов активных заказов по городам (районам)

DROP PROCEDURE IF EXISTS active_orders
DELIMITER //
CREATE PROCEDURE active_orders()
BEGIN
	SELECT id, 
	(SELECT hometown_name FROM hometown WHERE id = orders.hometown_id) AS town,
	(SELECT district_name FROM district WHERE id = orders.district_id) AS district 
	FROM orders WHERE status_id = 1
	ORDER BY district;
END//
DELIMITER ;
CALL active_orders();


-- 8.3 Создать триггер на недопустимость добавления юзера без имени или фамилии

DROP TRIGGER IF EXISTS new_user_insert;
DELIMITER //
CREATE TRIGGER new_user_insert 
BEFORE INSERT ON users
FOR EACH ROW
BEGIN
	IF NEW.firstname = '' OR NEW.lastname = '' THEN
		SIGNAL SQLSTATE '45000' 
		SET MESSAGE_TEXT = 
			'No empty cells firstname or lastname allowed';
	END IF;
END//
DELIMITER ;

INSERT INTO users 
	(`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `sber_id_podpiska`) 
VALUES
('1', '', 'Schiller', 'daniel.fabiola@example.net', '6ba1e7328e95bf054a2fe1cf9ae0d46932680cf0', '941778', 'Есть подписка');
-- SQL Error [1644] [45000]: No empty cells firstname or lastname allowed



-- 8.4 Создать тригер на недопустимость внесения записи с нулевым количеством товара
DROP TRIGGER IF EXISTS check_quanity;
DELIMITER //
CREATE TRIGGER check_quanity 
BEFORE INSERT ON products_in_order
FOR EACH ROW
BEGIN
	IF NEW.product_quanity < 1 THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 
			'Количество шт. продукции должно быть больше 0';
	END IF;
END;
DELIMITER ;


INSERT INTO products_in_order
  (`order_id`, `product_name_id`, `product_category_id`, `product_quanity`, `courier_id`)
VALUES
('32', '22', '8', '0', '1'),
('32', '22', '8', '2', '1'),
('32', '22', '8', '3', '1');
