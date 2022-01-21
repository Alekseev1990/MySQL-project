DROP DATABASE IF EXISTS my_project;
CREATE DATABASE my_project;
USE my_project;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    firstname VARCHAR(50) NOT NULL COMMENT 'Имя',
    lastname VARCHAR(50) NOT NULL COMMENT 'Фамилия',
    email VARCHAR(120) UNIQUE,
 	password_hash VARCHAR(100), 
	phone BIGINT UNSIGNED UNIQUE,
	sber_id_podpiska VARCHAR(50) NOT NULL COMMENT 'Sber подписка',
    INDEX users_firstname_lastname_idx(firstname, lastname)
);

INSERT INTO users 
	(`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `sber_id_podpiska`) 
VALUES
('1', 'Hillard', 'Schiller', 'daniel.fabiola@example.net', '6ba1e7328e95bf054a2fe1cf9ae0d46932680cf0', '941778', 'Есть подписка'),
('2', 'Keira', 'Nolan', 'oberbrunner.carlotta@example.net', '48591bc6b7d9b3d5d2d2701a793d977c9916d6ed', '946102', 'Нет подписки'),
('3', 'Onie', 'Gleason', 'jed.marquardt@example.org', '24cf173a9c6d10f58d915523112bac83b6a9a948', '1', 'Есть подписка'),
('4', 'Mariane', 'O\'Reilly', 'kara14@example.org', '5c20c2d81f8d4150315eed91b31d56a274a2fa1f', '851617', 'Нет подписки'),
('5', 'Emmanuelle', 'Roberts', 'ryan.vanessa@example.org', 'ce0c73e8309d7c0edf5be7b210ff2b649e251f39', '639', 'Нет подписки'),
('6', 'Moses', 'Ullrich', 'marvin.giovanny@example.org', '64f26cd01e816cf65a7d594943859e0a62dbf559', '0', 'Нет подписки'),
('7', 'Rowena', 'Nicolas', 'travon99@example.net', '303ba7e4955515d76809f42e969004cfd58fd383', '336', 'Нет подписки'),
('8', 'Rosalia', 'Carroll', 'broderick.robel@example.net', '866ccd67793e90f24d1ebb9b96d9e1f62c33ab71', '819578', 'Нет подписки'),
('9', 'Birdie', 'Rohan', 'kira.hilpert@example.org', '7154219cb86562b57ef2ce3905f80ecbb1750f13', '579964', 'Нет подписки'),
('10', 'Myrna', 'Schamberger', 'khackett@example.net', '6b603b8cea02fc7a5da3089b3bdf191e4bc45d05', '919510', 'Есть подписка'),
('11', 'Willa', 'Schulist', 'murphy.van@example.net', '9651fb9d15784579df4e9d57e5a3705815ffb0ee', '480114', 'Нет подписки'),
('12', 'Hanna', 'Frami', 'rrobel@example.org', 'af6a392a76c949c14a459a2ec7f2741cb0aa9687', '302926', 'Нет подписки'),
('13', 'Reese', 'Reilly', 'marcellus.roob@example.net', 'ba97a5e3b12262fcde75b794eb456c0698a774f6', '67', 'Есть подписка'),
('14', 'Lemuel', 'Treutel', 'von.chandler@example.com', 'd90a28a7b10b63b0b89ebc244e923e09c91f57db', '21', 'Нет подписки'),
('15', 'Haylie', 'Gottlieb', 'laufderhar@example.net', 'ec277c9ee1d9b764215b929b0ea350c03c77bd2f', '1143629719', 'Нет подписки'),
('16', 'Salvador', 'Skiles', 'adaline58@example.org', '713128f9252250576938e946a5f36f0c5f426121', '472', 'Есть подписка'),
('17', 'Lura', 'Cole', 'gladys58@example.net', '92eb42f5d6acfb34719ea3067f080fb90a526acd', '509', 'Нет подписки'),
('18', 'Toy', 'Koss', 'nola72@example.org', '5e9540796c3c936d3b91f7deb6117e13daf2a8d2', '448798', 'Есть подписка'),
('19', 'Aliyah', 'Beatty', 'fay.kelly@example.com', 'c9e1698ea26a4420abc0b2585c642b4f5105b579', '975291', 'Нет подписки'),
('20', 'Chase', 'Hamill', 'naomie.prosacco@example.com', 'b2aa2f7cc2a3ac39c343441d370d3dd0e6ae4437', '8054658353', 'Есть подписка'),
('21', 'Brennan', 'Abbott', 'yhauck@example.com', 'fee8b10bca03967b99feab2f3b3ddd819582d31a', '7057979441', 'Есть подписка'),
('22', 'Nels', 'Terry', 'stamm.estell@example.com', '177b80e674a857faabb616cb078521d00164de45', '989', 'Есть подписка'),
('23', 'Efren', 'Pfannerstill', 'gpouros@example.net', '246fc2fb43541e99d5e5a3fc4991a2c3c3f72b39', '6768902986', 'Нет подписки'),
('24', 'Amanda', 'Hand', 'carey18@example.com', '0bf1fe7f882821336c879ca82536118bc6da7f6d', '526810', 'Есть подписка'),
('25', 'Kendrick', 'Kunze', 'nyasia31@example.com', 'db2f860cde3265116ab3f3fa6fd57fa08a234f76', '142386', 'Есть подписка'),
('26', 'Kenton', 'Skiles', 'mabel04@example.org', '2a01808d4e27c849c732c3114cec43cc19e21b2e', '40665', 'Нет подписки'),
('27', 'Julian', 'Turner', 'obatz@example.com', 'b6362cafaf0b7e84aca20f30366c4caf4f198abb', '740', 'Есть подписка'),
('28', 'Leonor', 'Pagac', 'atorp@example.org', '59e7507cb5bf10e2e7a199b1c6bd42ce2ad8db22', '568144', 'Есть подписка'),
('29', 'Melyssa', 'Christiansen', 'mrosenbaum@example.net', '9e5093c88b14a100790e3a35dccfecf569ad0e01', '819571', 'Есть подписка'),
('30', 'Dustin', 'Lang', 'gterry@example.org', 'e3e69ef2ff8928a3ee89421a9288ff371df993fb', '625', 'Есть подписка'),
('31', 'Rachel', 'Ritchie', 'malvina.hyatt@example.net', '55b2f425b2928fbe9070d44f9a6a8ef70a084553', '989720', 'Нет подписки'),
('32', 'Abbey', 'Stark', 'mueller.hassan@example.org', '376747c0141f0658dd9166ad462a2a077a11bceb', '19', 'Нет подписки'),
('33', 'Lacy', 'Spinka', 'icie.beier@example.com', '8eaa59dba1eb87d6bd92ba36c1fbed69646576f2', '674086', 'Нет подписки'),
('34', 'Loren', 'Schinner', 'gerhold.barney@example.net', '42cacb35fc35d750eb9212c1509ff3ac4d1191ea', '66', 'Нет подписки'),
('35', 'Skye', 'Jast', 'ytromp@example.com', 'e786fc9f17b1a625075bbb02b6e29be173d1a117', '8937955419', 'Нет подписки'),
('36', 'Orland', 'Okuneva', 'kuhlman.estella@example.com', '7c09d9b4490fbe467fd0ad3c34151156b05cd081', '681', 'Нет подписки'),
('37', 'Alberto', 'Schmeler', 'turcotte.nolan@example.com', '31839d74ca672127f5a853b0e694e2efd7c24a9f', '5876090599', 'Есть подписка'),
('38', 'Abigail', 'Cremin', 'elta.waters@example.org', '325934e99ad9a1deb40c2bcbabb65dbe91d8e796', '337682', 'Нет подписки'),
('39', 'Jamarcus', 'Reichel', 'george.murray@example.com', 'e4128d772dc57252e592298c080069faf8eb923e', '188', 'Нет подписки'),
('40', 'Addison', 'McDermott', 'morris.hammes@example.com', '8ea4c512a4b278e63dacca23f7517193441c7230', '344', 'Нет подписки'),
('41', 'Johnson', 'Dicki', 'chaz.schimmel@example.net', '23835adaeced5dd2098d96fa1b212ffe7e9654d9', '31', 'Есть подписка'),
('42', 'Clemmie', 'Pouros', 'kali.hauck@example.com', '4a4fe55e695c6827a6391ca33fc2211bf09fcae1', '859', 'Нет подписки'),
('43', 'Doris', 'Jacobs', 'hauck.antwon@example.org', 'dae2ddc317e8a379991a8b26729f2e9dd26e9974', '5676528063', 'Нет подписки'),
('44', 'Marilou', 'Miller', 'koepp.eda@example.net', 'c89fe5ec140c9bd51acb9a5e3dc1d87b209f29b4', '681155', 'Нет подписки'),
('45', 'Alice', 'O\'Connell', 'umuller@example.com', '8f120ae06f2a1cd88e7ec193f045942a684393e2', '427317', 'Нет подписки'),
('46', 'Isobel', 'Gottlieb', 'wrunte@example.org', '6c7a1a26e16087fe14a29b202b5ad33468c2b033', '599052', 'Есть подписка'),
('47', 'Jamil', 'Hane', 'umorar@example.net', '27f96430ec2fcff30904d815f73a66b0b3711448', '583', 'Есть подписка'),
('48', 'Deion', 'Gutkowski', 'prenner@example.org', '8a5586336772ccea13a5d6f80cff92fe5c24fce9', '18', 'Нет подписки'),
('49', 'Idella', 'Bradtke', 'jharvey@example.com', '414c0eea31501089d95432c7c35c9bfb296ec0bf', '961275', 'Есть подписка'),
('50', 'Johnny', 'Hane', 'cristopher49@example.net', '8eb99007f50f797368f31007e66350415592a7d0', '4446644630', 'Есть подписка');


DROP TABLE IF EXISTS product_category; 
CREATE TABLE product_category (
	id SERIAL PRIMARY KEY, 
	product_category_name VARCHAR(255) NOT NULL
);	
	
INSERT INTO product_category
  (`product_category_name`)
VALUES
('готовая еда'),
('фрукты, овощи, орехи'),
('вода, соки, напитки'),
('молочные продукты, сыр'),
('яйца'),
('мясо, птица'),
('рыба, морепродукты, замароженные мрепродукты'),
('колбасы, сосиски, деликатесы'),
('хлеб, выпечка'),
('собственное производство, кулинария'),
('готовые блюда, полуфабрикаты'),
('чай, кофе, какао'),
('сладости, снеки'),
('макароны, крупы, мука');


DROP TABLE IF EXISTS dostavka; 
CREATE TABLE dostavka (
	id SERIAL PRIMARY KEY,
	dostavka_type VARCHAR(50)
);
		
INSERT INTO dostavka
  (`dostavka_type`)
VALUES
('доставка на автомобиле'),
('доставка пешая');

	
DROP TABLE IF EXISTS hometown; 
CREATE TABLE hometown (
	id SERIAL PRIMARY KEY,
	hometown_name VARCHAR(50)
);

INSERT INTO hometown
  (`hometown_name`)
VALUES
('Москва'),
('Санкт-Петербург');


DROP TABLE IF EXISTS district; 
CREATE TABLE district (
	id SERIAL PRIMARY KEY,
	district_name VARCHAR(50),
	town_id BIGINT UNSIGNED NOT null,
	FOREIGN key (town_id) REFERENCES hometown (id) ON DELETE RESTRICT ON UPDATE CASCADE
);	

INSERT INTO district
  (`district_name`, `town_id`)
VALUES
('Арбат', 1),
('Тверской', 1),
('Ленинский', 1),
('Московский', 2),
('Приморский', 2),
('Курортный', 2);


DROP TABLE IF EXISTS couriers; 
CREATE TABLE couriers (
	id SERIAL PRIMARY KEY , 
	courier_name VARCHAR(50),
	courier_lastname VARCHAR(50),
	dostavka_id BIGINT UNSIGNED NOT NULL,
	district_id BIGINT UNSIGNED NOT NULL,
	FOREIGN key (dostavka_id) REFERENCES dostavka (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (district_id) REFERENCES district (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

INSERT INTO couriers
  (`id`, `courier_name`, `courier_lastname`, `dostavka_id`, `district_id`)
VALUES
('1', 'Reuben', 'Nienow', 2, 5),
('2', 'Frederik', 'Upton', 2, 4),
('3', 'Unique', 'Windler', 2, 3),
('4', 'Norene', 'West', 1, 2),
('5', 'Frederick', 'Effertz', 1, 1),
('6', 'Victoria', 'Medhurst', 1, 6),
('7', 'Austyn', 'Braun', 1, 5),
('8', 'Jaida', 'Kilback', 1, 3),
('9', 'Mireya', 'Orn', 1, 1),
('10', 'Jordyn', 'Jerde', 1, 2),
('11', 'Thad', 'McDermott', 1, 4),
('12', 'Aiden', 'Runolfsdottir', 2, 6),
('13', 'Bernadette', 'Haag', 2, 1),
('14', 'Dedric', 'Stanton', 2, 2),
('15', 'Clare', 'Wolff', 2, 3),
('16', 'Lina', 'Macejkovic', 1, 4),
('17', 'Jerrell', 'Stanton', 2, 5),
('18', 'Golden', 'Wisozk', 1, 6),
('19', 'Elisa', 'Balistreri', 1, 1),
('20', 'Reed', 'Bogan', 1, 2);



DROP TABLE IF EXISTS products; 
CREATE TABLE products (
	id SERIAL PRIMARY KEY, 
	product_article BIGINT UNSIGNED NOT NULL UNIQUE,
	product_name VARCHAR(50) NOT NULL UNIQUE,
	product_category_id BIGINT UNSIGNED NOT NULL,
	description text COMMENT 'Описание',
	price INT UNSIGNED NOT NULL,
	INDEX (product_category_id),
	FOREIGN key (product_category_id) REFERENCES product_category (id) ON DELETE RESTRICT ON UPDATE CASCADE	
   ); 
   
INSERT INTO products
  (`id`, `product_article`, `product_name`, `product_category_id`, `description`, `price`)
VALUES
('1', '578385', 'блинчики готовые', '1', 'Est ab quam et. Corrupti aspernatur quisquam et reprehenderit mollitia. ', 110),
('2', '69913', 'нагетсы', '1', 'Voluptatum quis voluptatibus earum necessitatibus et autem unde.', 99),
('3', '357890', 'вареники', '1', 'Quo dicta temporibus qui praesentium. Id voluptatum similique sequi dolores enim.', 85),
('4', '2690', 'яблоки', '2', 'In nemo nihil necessitatibus sed eos consectetur fugit. Aperiam ex fugiat repudiandae.', 87),
('5', '8065', 'грецкий орех', '2', 'Tempora nesciunt at reprehenderit voluptate ratione ut quas.', 150),
('6', '267358', 'помидоры', '2', 'Et dolorum tenetur omnis exercitationem aut reiciendis eum. ', 89),
('7', '534251', 'аква минарале', '3', 'Qui deleniti dignissimos eos quia rem maiores.', 50),
('8', '7837', 'сок моя семья', '3', 'Error itaque cupiditate et maxime. ', 75),
('9', '8765', 'рэд булл', '3', 'Id minus vero et et non qui autem. Quae et qui et.', 115),
('10', '5678', 'молоко домик в деревне', '4', 'Ut magni iure ea rerum iste. Nam eveniet maxime sed iste velit quo.', 72),
('11', '9876', 'творог зерновой', '4', 'Fuga dicta deserunt voluptas animi. Sapiente vel enim sed eos perferendis.', 100),
('12', '469507', 'сыр российский', '4', 'Dicta laboriosam tempore porro quia quas veritatis distinctio.', 157),
('13', '9786', 'яйцо перепелиное', '5', 'Tempore harum quas recusandae accusamus corrupti distinctio itaque ut.', 105),
('14', '124567584', 'яйцо куриное с1', '5', 'Eum qui sit doloremque iure earum nemo nobis. Atque sunt odit quia.', 73),
('15', '4562', 'яйцо куриное с0', '5', 'Similique rem porro qui provident ab quia.', 95),
('16', '53236', 'куриная грудка', '6', 'Cumque alias illum perspiciatis nisi ea voluptatem dolorum.', 200),
('17', '75', 'говяжий фарш', '6', 'Eum eveniet sed qui et. Culpa voluptatem architecto praesentium.', 250),
('18', '980', 'грудка индейки', '6', 'Eos quos dolores dolorem esse. Rerum enim corporis tenetur consectetur.', 230),
('19', '468', 'палтус', '7', 'Et laboriosam sint ea aspernatur suscipit voluptate quam.', 240),
('20', '9257', 'креветки', '7', 'Et mollitia sed fugit sit dolor qui. ', 356),
('21', '1680', 'кальмары', '7', 'Possimus doloribus laudantium repellendus possimus dolorum quaerat.', 265),
('22', '79462', 'сосиски', '8', 'Ad qui sequi ipsum. Et ipsum et reiciendis et.', 104),
('23', '891', 'колбаса докторская', '8', 'Ea facere illo quam ullam non voluptatum.', 100),
('24', '1204', 'копченая колбаса', '8', 'Et accusamus molestiae sed iste ut. Adipisci nihil est quasi quo et.', 179),
('25', '258956', 'хлеб бородинский', '9', 'Doloribus omnis alias sapiente iste. Fugiat qui consectetur unde aut.', 42),
('26', '38691', 'булочка с малиной', '9', 'Consequuntur est sapiente maiores et. Voluptas omnis debitis est.', 24),
('27', '468952', 'тост с чесноком', '9', 'Unde ut voluptate nesciunt itaque numquam quisquam. Sed dolores voluptates excepturi.', 20),
('28', '132521', 'салат оливье', '10', 'Ut maiores voluptatem distinctio sint molestiae. Nam similique omnis nesciunt culpa.', 46),
('29', '263', 'салат селедка под шубой', '10', 'Rem voluptas suscipit dolores aut. Rerum et repudiandae ad error.',61),
('30', '53733', 'морковка по-корейски', '10', 'Eos minus esse recusandae ut possimus illum eum.',32),
('31', '23', 'манты', '11', 'In dolor aut odit aliquam autem officia. In aliquid similique eum.',55),
('32', '687062', 'котлеты домашние', '11', 'Et rerum similique optio perferendis sint.', 66),
('33', '98', 'картофель отварной', '11', 'Sequi reiciendis eveniet aut et repudiandae ratione ut.',40),
('34', '381', 'чай', '12', 'Eos totam vel facilis repellendus. Est voluptas quia beatae et.', 73),
('35', '597', 'кофе', '12', 'Iure excepturi ut officiis ducimus dignissimos consequatur architecto qui.', 115),
('36', '35857', 'какао', '12', 'Vitae nisi et est dolor cumque. Ea placeat vel consectetur.', 90),
('37', '52456', 'конфеты', '13', 'Tempora rem dolor quia incidunt odio veritatis nostrum minus.', 58),
('38', '8604', 'шоколад', '13', 'Rerum deleniti perspiciatis quis ea ducimus. Rerum autem dicta soluta soluta.', 39),
('39', '3', 'мармелад', '13', 'Ut hic similique eius sed quam magni. Sed voluptates et in ut ullam doloremque.', 44),
('40', '6876', 'макароны', '14', 'Distinctio asperiores soluta culpa eaque. Perspiciatis voluptatibus deleniti non dolores.',64),
('41', '3765', 'гречневая крупа', '14', 'Possimus totam eius qui iste consequuntur delectus.', 85),
('42', '7685', 'мука', '14', 'Vitae maiores libero qui ad. At et ut deserunt et.', 60);




DROP TABLE IF EXISTS products_in_order; 
CREATE TABLE products_in_order (
	id SERIAL,
	order_id BIGINT UNSIGNED NOT NULL,
	product_name_id BIGINT UNSIGNED NOT NULL,
	product_quanity INT UNSIGNED NOT NULL,
	product_category_id BIGINT UNSIGNED NOT NULL,
	courier_id BIGINT UNSIGNED NOT NULL,
	PRIMARY key (id, order_id),
    INDEX (product_category_id),
    INDEX (courier_id),
	FOREIGN key (product_name_id) REFERENCES products (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (product_category_id) REFERENCES product_category (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (courier_id) REFERENCES couriers (id) ON DELETE RESTRICT ON UPDATE CASCADE	
);	

INSERT INTO products_in_order
  (`order_id`, `product_name_id`, `product_category_id`, `product_quanity`, `courier_id`)
VALUES
('1', '22', '8', '2', '1'),
('1', '32', '11', '1', '1'),
('1', '1', '1', '3', '1'),
('2', '12', '4', '2', '2'),
('2', '41', '14', '4', '2'),
('3', '38', '13', '1', '3'),
('3', '22', '8', '1', '3'),
('3', '38', '13', '1', '3'),
('3', '29', '10', '1', '3'),
('4', '11', '4', '3', '4'),
('4', '1', '1', '2', '4'),
('4', '4', '2', '1', '4'),
('5', '8', '3', '5', '5'),
('5', '32', '11', '1', '5'),
('6', '33', '11', '2', '6'),
('7', '40', '14', '3', '7'),
('7', '42', '14', '2', '7'),
('8', '21', '7', '3', '8'),
('8', '1', '1', '3', '8'),
('8', '1', '1', '3', '8'),
('8', '24', '8', '2', '8'),
('8', '12', '4', '2', '8'),
('8', '18', '6', '1', '8'),
('9', '19', '7', '5', '9'),
('9', '20', '7', '2', '9'),
('10', '22', '8', '1', '10'),
('11', '29', '10', '2', '11'),
('12', '23', '8', '1', '12'),
('12', '36', '12', '1', '12'),
('12', '31', '11', '2', '12'),
('13', '9', '3', '3', '13'),
('13', '5', '2', '3', '13'),
('13', '34', '12', '3', '13'),
('14', '7', '3', '4', '14'),
('14', '1', '1', '2', '14'),
('15', '19', '7', '2', '15'),
('16', '42', '14', '2', '16'),
('16', '20', '7', '2', '16'),
('16', '23', '8', '1', '16'),
('16', '28', '10', '3', '16'),
('17', '29', '10', '3', '17'),
('17', '2', '1', '3', '17'),
('17', '1', '1', '2', '17'),
('17', '37', '13', '1', '17'),
('18', '35', '12', '2', '18'),
('18', '4', '2', '2', '18'),
('19', '21', '7', '2', '19'),
('19', '8', '3', '2', '19'),
('20', '15', '5', '1', '20'),
('21', '16', '6', '3', '1'),
('21', '9', '3', '3', '1'),
('21', '5', '2', '3', '1'),
('22', '6', '2', '1', '2'),
('22', '35', '12', '4', '2'),
('23', '38', '13', '4', '3'),
('23', '22', '8', '2', '3'),
('23', '15', '5', '1', '3'),
('24', '39', '13', '2', '4'),
('24', '33', '11', '1', '4'),
('25', '34', '12', '4', '5'),
('26', '28', '10', '2', '6'),
('26', '22', '8', '2', '6'),
('26', '19', '7', '3', '6'),
('26', '13', '5', '3', '6'),
('27', '17', '6', '2', '7'),
('27', '33', '11', '1', '7'),
('28', '4', '2', '2', '8'),
('28', '7', '3', '1', '8'),
('28', '11', '4', '3', '8'),
('28', '14', '5', '3', '8'),
('29', '18', '6', '3', '9'),
('29', '1', '1', '1', '9'),
('29', '17', '6', '2', '9'),
('30', '42', '14', '2', '10'),
('30', '25', '9', '2', '10'),
('30', '37', '13', '4', '10'),
('30', '31', '11', '1', '10'),
('30', '26', '9', '1', '10'),
('30', '18', '6', '1', '10');


DROP TABLE IF EXISTS type_of_order; 
CREATE TABLE type_of_order (
	id SERIAL PRIMARY KEY,
	order_type_name VARCHAR(50)
);

INSERT INTO type_of_order
  (`order_type_name`)
VALUES
('для себя'),
('для бизнеса');


DROP TABLE IF EXISTS status; 
CREATE TABLE status (
	id SERIAL PRIMARY KEY,
	status_name VARCHAR(50)
);

INSERT INTO status
  (`status_name`)
VALUES
('активный'),
('завершенный');


DROP TABLE IF EXISTS payment; 
CREATE TABLE payment (
	id SERIAL PRIMARY KEY,
	payment_type VARCHAR(50),
	INDEX (id)
);

INSERT INTO payment
  (`payment_type`)
VALUES
('картой курьеру'),
('картой онлайн'),
('бонусы спасибо'),
('sber pay');


DROP TABLE IF EXISTS market; 
CREATE TABLE market (
	id SERIAL PRIMARY KEY,
	market_name VARCHAR(50) 
);

INSERT INTO market
  (`market_name`)
VALUES
('Метро'),
('Ашан'),
('Гипер Глобус'),
('Лента');

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY key,
	user_id BIGINT UNSIGNED NOT NULL, 
	order_id BIGINT UNSIGNED NOT NULL unique, 
	status_id BIGINT UNSIGNED NOT NULL, 
	order_type_id BIGINT UNSIGNED NOT NULL,
	payment_id BIGINT UNSIGNED NOT NULL,
    summ_of_order BIGINT UNSIGNED NOT NULL,
    market_id BIGINT UNSIGNED NOT NULL,
	dostavka_id BIGINT UNSIGNED NOT NULL,
	hometown_id BIGINT UNSIGNED NOT NULL,
	district_id BIGINT UNSIGNED NOT NULL,
    created_at DATETIME DEFAULT NOW(),
    finish_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
    INDEX (user_id),
    INDEX (status_id),
    INDEX (payment_id),
	FOREIGN key (user_id) REFERENCES users (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (order_id) REFERENCES products_in_order (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (order_type_id) REFERENCES type_of_order (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (status_id) REFERENCES status (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (payment_id) REFERENCES payment (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (market_id) REFERENCES market (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (hometown_id) REFERENCES hometown (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (dostavka_id) REFERENCES dostavka (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (district_id) REFERENCES district (id) ON DELETE RESTRICT ON UPDATE CASCADE
);
    
INSERT INTO orders
  (`id`, `user_id`, `order_id`, `status_id`, `order_type_id`, `payment_id`, `summ_of_order`, `market_id`, `dostavka_id`, `hometown_id`, `district_id`, `created_at`, `finish_at`)
VALUES
('1', '1', '1', '2', '1', '4', '604', '3', '1', '2', '6', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('2', '1', '2', '2', '2', '4', '654', '4', '2', '2', '6', '2021-12-10 00:00:00', '2021-12-12 17:00:00'),
('3', '2', '3', '2', '2', '3', '243', '1', '1', '1', '3', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('4', '3', '4', '2', '2', '4', '607', '4', '1', '2', '5', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('5', '4', '5', '2', '2', '2', '441', '4', '1', '1', '1', '2021-12-10 00:00:00', '2021-12-13 17:00:00'),
('6', '4', '6', '2', '1', '2', '80', '3', '1', '1', '1', '2021-12-10 00:00:00', '2021-12-13 17:00:00'),
('7', '5', '7', '2', '2', '3', '312', '1', '1', '1', '3', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('8', '5', '8', '1', '2', '1', '2357', '3', '1', '1', '3', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('9', '5', '9', '2', '1', '3', '1912', '4', '2', '1', '3', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('10', '6', '10', '2', '2', '1', '104', '2', '2', '2', '5', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('11', '7', '11', '2', '2', '1', '122', '4', '2', '2', '4', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('12', '8', '12', '2', '1', '4', '300', '3', '1', '2', '6', '2021-12-10 00:00:00', '2021-12-12 17:00:00'),
('13', '9', '13', '2', '2', '1', '1014', '2', '2', '1', '3', '2021-12-10 00:00:00', '2021-12-14 17:00:00'),
('14', '10', '14', '2', '2', '3', '420', '4', '2', '2', '5', '2021-12-10 00:00:00', '2021-12-12 17:00:00'),
('15', '11', '15', '1', '1', '1', '480', '4', '2', '2', '4', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('16', '12', '16', '2', '2', '3', '1070', '3', '1', '1', '3', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('17', '13', '17', '2', '2', '1', '758', '3', '2', '1', '3', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('18', '13', '18', '1', '2', '2', '404', '4', '1', '1', '1', '2021-12-10 00:00:00', '2021-12-13 17:00:00'),
('19', '14', '19', '2', '1', '2', '680', '4', '2', '1', '2', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('20', '15', '20', '2', '1', '1', '95', '4', '1', '1', '2', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('21', '16', '21', '1', '1', '2', '1395', '2', '2', '2', '6', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('22', '17', '22', '2', '2', '4', '549', '2', '2', '2', '5', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('23', '18', '23', '1', '1', '2', '459', '3', '1', '2', '4', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('24', '18', '24', '2', '1', '4', '128', '1', '1', '1', '1', '2021-12-10 00:00:00', '2021-12-12 17:00:00'),
('25', '19', '25', '1', '2', '3', '292', '4', '1', '1', '2', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('26', '20', '26', '2', '2', '2', '1335', '1', '1', '1', '3', '2021-12-10 00:00:00', '2021-12-11 17:00:00'),
('27', '21', '27', '2', '1', '3', '540', '4', '1', '2', '5', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('28', '22', '28', '1', '2', '2', '743', '1', '2', '2', '6', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('29', '23', '29', '1', '2', '4', '1300', '1', '1', '2', '4', '2021-12-10 00:00:00', '2021-12-10 17:00:00'),
('30', '24', '30', '1', '2', '4', '745', '3', '1', '1', '1', '2021-12-10 00:00:00', '2021-12-10 17:00:00');


DROP TABLE IF EXISTS likes; 
CREATE TABLE likes (
	id SERIAL PRIMARY KEY, 
	user_id BIGINT UNSIGNED NOT NULL,  
	product_like_id BIGINT UNSIGNED NOT NULL,
	product_category_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN KEY (product_like_id) REFERENCES products (id) ON DELETE RESTRICT ON UPDATE CASCADE,
	FOREIGN key (product_category_id) REFERENCES product_category (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

INSERT INTO likes
  (`user_id`, `product_like_id`, `product_category_id`)
VALUES
('5', '40', '14'),
('5', '23', '8'),
('5', '42', '14'),
('6', '12', '4'),
('17', '32', '11'),
('17', '30', '10'),
('21', '26', '9'),
('27', '22', '8'),
('27', '31', '11'),
('27', '1', '1'),
('27', '5', '2'),
('27', '21', '7'),
('27', '11', '4'),
('30', '31', '11'),
('45', '31', '11'),
('45', '17', '6'),
('45', '39', '13'),
('45', '35', '12'),
('47', '21', '7'),
('48', '9', '3');


DROP TABLE IF EXISTS quality; 
CREATE TABLE quality (
	id SERIAL PRIMARY KEY,
	user_id BIGINT UNSIGNED NOT NULL,
	grade INT,
	comment text,
	FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE RESTRICT ON UPDATE CASCADE
);

INSERT INTO quality
  (`user_id`, `grade`, `comment`)
VALUES
('15', '5', 'Четкий сервис'),
('23', '5', 'Всем соетую'),
('25', '5', 'Приложение на 5!'),
('28', '4', 'Все хорошо, только до курьера не мог дозвониться'),
('29', '5', 'Отличное приложение'),
('30', '1', 'Приложение работает ужасно, все время зависает и выкидывает'),
('35', '5', ''),
('45', '5', 'Супер!'),
('38', '4', 'Обновите скидки. Пару товаров в чеке считаются непрвильно'),
('5', '5', '');	



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
