-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 08 2022 г., 19:42
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `eshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int UNSIGNED NOT NULL COMMENT 'Уникальный идентификатор',
  `username` varchar(50) NOT NULL COMMENT 'Имя администратора',
  `password` varchar(100) NOT NULL COMMENT 'Пароль администратора',
  `auth_key` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `brand`
--

CREATE TABLE `brand` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `brand`
--

INSERT INTO `brand` (`id`, `name`, `content`, `keywords`, `description`, `image`) VALUES
(1, 'Miss Dior', 'Аромат Miss Dior, неизменно служивший обещанием счастья, сегодня предстает в новой потрясающей интерпретации, заключающей в себе целый океан разноцветных лепестков.', NULL, NULL, '6301d7fe0abccf950f10714e9ad88a53.webp'),
(2, 'JOY от Dior', 'JOY от Dior - это ода радости и жизни, выраженная в парфюмерной воде, яркой, как улыбка, и интенсивной парфюмерной воде, настоящем ольфакторном фейерверке.', NULL, NULL, '9d57fc7131abea87691f9e1b7dd0fb84.webp'),
(3, 'Dior Addict', 'Dior Addict – территория чувственности, новый вид соблазна, яркий и полный жизни аромат. Он воплощает желание веселиться, быть молодым и дерзким.', NULL, NULL, '2cbe69fe51c72ab717bfa6bae520439c.webp'),
(12, 'Christian Dior', 'Для нее, для него, для Вас... Коллекция ароматов, которые отражают Ваши чувства. Откройте для себя новые эмоции и поделитесь ими с теми, кто Вам дорог!', NULL, NULL, 'ed99fb35734e34072f2928c3b093f9ed.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int UNSIGNED NOT NULL COMMENT 'Уникальный идентификатор',
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Родительская категория',
  `name` varchar(255) NOT NULL COMMENT 'Наименование категории',
  `content` varchar(255) DEFAULT NULL COMMENT 'Описание категории',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'Мета-тег keywords',
  `description` varchar(255) DEFAULT NULL COMMENT 'Мета-тег description',
  `image` varchar(255) DEFAULT NULL COMMENT 'Имя файла изображения'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `content`, `keywords`, `description`, `image`) VALUES
(1, 0, 'Ароматы', 'Ароматы', 'Ароматы', 'Ароматы', '9489681af04c684d121a763f3bd3bb5a.jpg'),
(2, 0, 'Макияж', 'Макияж', 'Макияж', 'Макияж', '73749a697d066f25787650b7af25af02.webp'),
(3, 1, 'Чувственные', 'Чувственные', NULL, NULL, NULL),
(4, 1, 'Согревающие', 'Согревающие', NULL, NULL, NULL),
(6, 2, 'Лицо', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(7, 2, 'Глаза', 'Глаза', NULL, NULL, NULL),
(8, 2, 'Губы', 'Губы', NULL, NULL, NULL),
(15, 6, 'Тональные средства', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(16, 6, 'Маскирующие средства', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(17, 7, 'Туши для ресниц', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. A fugit maxime mollitia nesciunt perferendis reiciendis repellat sed.', NULL, NULL, NULL),
(18, 7, 'Тени для век', 'Тени для век', NULL, NULL, NULL),
(19, 8, 'Губные помады', 'Губные помады', NULL, NULL, NULL),
(20, 8, 'Блески для губ и пламперы', 'Блески для губ и пламперы', NULL, NULL, NULL),
(21, 0, 'Уход за кожей', 'Уход за кожей', 'Уход за кожей', 'Уход за кожей', 'e7b50614dd34c1c423888cfcb6f11f47.webp'),
(22, 21, 'Очищение', 'Очищение', NULL, NULL, NULL),
(23, 21, 'Лосьон', 'Лосьон', NULL, NULL, NULL),
(24, 6, 'Праймер и фиксирующий спрей', 'Праймер и фиксирующий спрей', NULL, NULL, NULL),
(25, 6, 'Румяна и бронзеры', 'Румяна и бронзеры', NULL, NULL, NULL),
(26, 6, 'Пудра', 'Пудра', NULL, NULL, NULL),
(27, 6, 'Кисти и аксессуары', 'Кисти и аксессуары', NULL, NULL, NULL),
(28, 7, 'Карандаши для глаз и лайнеры', 'Карандаши для глаз и лайнеры', NULL, NULL, NULL),
(29, 7, 'Средства для бровей', 'Средства для бровей', NULL, NULL, NULL),
(30, 8, 'Карандаши для губ', 'Карандаши для губ', NULL, NULL, NULL),
(31, 21, 'Кремы', 'Кремы', NULL, NULL, NULL),
(32, 21, 'Уход для губ и век', 'Уход для губ и век', NULL, NULL, NULL),
(34, 1, 'Цветочные', 'Цветочные', NULL, NULL, NULL),
(35, 1, 'Легкие Цветочные', 'Легкие Цветочные', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int UNSIGNED NOT NULL COMMENT 'Идентификатор заказа',
  `user_id` int NOT NULL DEFAULT '0' COMMENT 'Идентификатор пользователя',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT 'Имя и фамилия покупателя',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT 'Почта покупателя',
  `phone` varchar(50) NOT NULL DEFAULT '' COMMENT 'Телефон покупателя',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT 'Адрес доставки',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'Комментарий к заказу',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Сумма заказа',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Статус заказа',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата и время создания',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Дата и время обновления'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `comment`, `amount`, `status`, `created`, `updated`) VALUES
(2, 0, 'Андрей Семенов', 'semenov@mail.ru', '+7 (926) 765-43-21', 'Москва, улица Строителей, дом 5, кв.17', 'Комментарий к заказу', '1056.23', 4, '2019-08-07 13:57:53', '2019-08-30 09:02:56'),
(3, 0, 'Евгений Токмаков', 'evgeniy@mail.ru', '+7 (926) 555-55-55', 'Москва, Онежская улица, дом 11, кв.23', 'Комментарий к заказу', '2280.46', 2, '2019-08-07 16:36:06', '2019-08-28 06:59:35'),
(4, 0, 'Евгений Токмаков', 'evgeniy@mail.ru', '+7 (926) 555-55-55', 'Москва, Онежская улица, дом 11, кв.23', '2-ой подъезд, 4-ый этаж', '1056.23', 3, '2019-08-17 10:18:04', '2019-08-28 06:59:48'),
(5, 0, 'Евгений Токмаков', 'evgeniy@mail.ru', '+7 (926) 555-55-55', 'Москва, Онежская улица, дом 11, кв.23', '2-ой подъезд, 4-ый этаж', '1056.23', 0, '2019-08-17 10:19:55', '2019-08-30 06:48:51'),
(6, 0, 'Евгений Токмаков', 'evgeniy@mail.ru', '+7 (926) 555-55-55', 'Москва, Онежская улица, дом 11, кв.23', '2-ой подъезд, 4-ый этаж', '1056.23', 4, '2019-08-17 10:24:00', '2019-08-28 07:10:12'),
(7, 0, 'Сергей Иванов', 'ivanov@mail.ru', '+7 (926) 987-65-43', 'Москва, Флотская улица, дом 12, кв.72', '2-ой подъезд, 4-ый этаж', '2168.46', 1, '2019-08-17 10:28:47', '2019-08-30 06:48:01'),
(8, 0, 'Евгений Токмаков', 'tokmakov@example.com', '+7 (123) 456-78-90', 'г Москва, ул Онежская, д 123, кв 456', 'Какой-то комментарий к заказу', '2500.00', 0, '2021-11-19 10:43:44', '2021-11-19 07:43:44');

-- --------------------------------------------------------

--
-- Структура таблицы `order_item`
--

CREATE TABLE `order_item` (
  `id` int UNSIGNED NOT NULL COMMENT 'Идентификатор элемента',
  `order_id` int UNSIGNED NOT NULL COMMENT 'Идентификатор заказа',
  `product_id` int UNSIGNED NOT NULL COMMENT 'Идентификатор товара',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Наименование товара',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Цена товара',
  `quantity` smallint UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Количество в заказе',
  `cost` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Стоимость = Цена * Кол-во'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `name`, `price`, `quantity`, `cost`) VALUES
(1, 2, 1, 'Backstage Blender', '2300.00', 1, '2300.00'),
(2, 2, 2, 'Backstage Blender', '2300.00', 1, '2300.00'),
(3, 3, 1, 'Backstage Blender', '2300.00', 2, '2300.00'),
(4, 3, 2, 'Backstage Blender', '2300.00', 5, '2300.00'),
(5, 4, 1, 'Backstage Blender', '2300.00', 1, '2300.00'),
(6, 4, 2, 'Backstage Blender', '2300.00', 1, '2300.00'),
(7, 5, 1, 'Backstage Blender', '2300.00', 1, '2300.00'),
(8, 5, 2, 'Backstage Blender', '2300.00', 1, '2300.00'),
(9, 6, 1, 'Dioramour', '1500.00', 1, '1500.00'),
(10, 6, 2, 'Dioramour', '1500.00', 1, '1500.00'),
(11, 7, 1, 'Dioramour', '1500.00', 2, '1500.00'),
(12, 7, 2, 'Dioramour', '1500.00', 3, '1500.00'),
(13, 8, 10, 'Dioramour', '1500.00', 2, '1500.00'),
(14, 8, 11, 'Dioramour', '1500.00', 2, '1500.00');

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE `page` (
  `id` int UNSIGNED NOT NULL COMMENT 'Уникальный идентификатор',
  `parent_id` int UNSIGNED NOT NULL COMMENT 'Родительская страница',
  `name` varchar(100) NOT NULL COMMENT 'Заголовок страницы',
  `slug` varchar(100) NOT NULL COMMENT 'Для создания ссылки',
  `content` text COMMENT 'Содержимое страницы',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'Мета-тег keywords',
  `description` varchar(255) DEFAULT NULL COMMENT 'Мета-тег description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `parent_id`, `name`, `slug`, `content`, `keywords`, `description`) VALUES
(1, 0, 'Оплата', 'payment', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.'),
(2, 0, 'Доставка', 'delivery', '<p>&nbsp;</p>\r\n\r\n<p><strong>Бесплатная доставка для всех заказов</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Способы доставки:</strong></p>\r\n\r\n<ul>\r\n	<li>Доставка курьером (IML, DPD)</li>\r\n	<li>Самовывоз / ПВЗ (PickPoint)</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Сроки доставки:</strong></p>\r\n\r\n<p>Информацию о сроках доставки и возможности доставки в определенный регион Вы можете получить при обращении по телефону <a href=\"tel:8800557447\">8-800-550-74-47</a> c 07:30 до 23:00 по московскому времени, а также направив свой запрос на электронный адрес: <a href=\"mailto:dior@domain.com\">dior@domain.com</a>.<br />\r\nИнформацию о сроках доставки в постаматы PickPoint вы можете узнать на сайте при оформлении заказа.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>При размещении и подтверждении заказа до 14:00 сроки курьерской доставки:<br />\r\n- Доставка для Москвы (в пределах МКАД) осуществляется на следующий день;<br />\r\n- Доставка для Москвы (за пределами МКАД) и для Санкт-Петербурга 1-2 дня.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Возможные временные интервалы для доставки по Москве и Санкт-Петербургу в рабочие дни:</p>\r\n\r\n<p>09:00 - 18:00<br />\r\n09:00 - 14:00<br />\r\n14:00 - 18:00<br />\r\n18:00 - 21:00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', ''),
(3, 0, 'Вопрос-ответ', 'vopros-otvet', '<section>\r\n        <div class=\"container_accordion\">\r\n            <div class=\"accordion\">\r\n                <div class=\"accordion-item\" id=\"question1\">\r\n                    <a class=\"accordion-link\" href=\"#question1\">\r\n                        Могу ли я быть уверен(а) в оригинальности продукции?\r\n                    <i class=\"icon ion-md-add\"></i>\r\n                    <i class=\"icon ion-md-remove\"></i>\r\n                </a>\r\n                <div class=\"answer\">\r\n                    <p>\r\n                        Мы создали собственную 5-ти этапную процедуру верификации всех моделей, представленных в нашем магазине, по которой каждая сумка DIOR проверяется несколько раз нашими специалистами. Используя уникальный опыт и знания наших экспертов, мы сравниваем каждый товар с различными отраслевыми источниками: подлинным продуктом; официальными изображениями продукта; другими запатентованными процессами, используемыми ведущими компаниями.\r\n\r\n                    </p>\r\n                </div>\r\n                </div>\r\n                <div class=\"accordion-item\" id=\"question2\">\r\n                    <a class=\"accordion-link\" href=\"#question2\">\r\n                        Почему такие большие скидки?\r\n                    <i class=\"icon ion-md-add\"></i>\r\n                    <i class=\"icon ion-md-remove\"></i>\r\n                </a>\r\n                <div class=\"answer\">\r\n                    <p>\r\n                        Мы работаем прошлогодними коллекциями брендовых аутлетов Европы. За счет отсутствия оффлайн магазина, мы не несем издержки, связанные с арендой, предлагая нашим клиентам возможность приобретать товары по более выгодным ценам.\r\n\r\n                    </p>\r\n                </div>\r\n                </div>\r\n                <div class=\"accordion-item\" id=\"question3\">\r\n                    <a class=\"accordion-link\" href=\"#question3\">\r\n                        Как оформить заказ на сайте?\r\n                    <i class=\"icon ion-md-add\"></i>\r\n                    <i class=\"icon ion-md-remove\"></i>\r\n                </a>\r\n                <div class=\"answer\">\r\n                    <p>\r\n                        \r\n    Выберите нужный товар и его количество, затем нажмите кнопку «Купить».\r\n    Перейдите в раздел «Корзина» (Круглая иконка в правом углу экрана)\r\n    Укажите Ваши контактные данные (Имя, телефон), и оформите заказ\r\n    После оформления заказа наш менеджер свяжется с Вами для уточнения деталей заказа. (Модель товара, адрес доставки. и пр.)\r\n\r\n\r\n                    </p>\r\n                </div>\r\n                </div>\r\n                <div class=\"accordion-item\" id=\"question4\">\r\n                    <a class=\"accordion-link\" href=\"#question4\">\r\n                        Если товар мне не подошел?\r\n                    <i class=\"icon ion-md-add\"></i>\r\n                    <i class=\"icon ion-md-remove\"></i>\r\n                </a>\r\n                <div class=\"answer\">\r\n                    <p>\r\n                        Мы работаем согласно положениям Закона РФ №2300-1 от 07.02.1992 г. «О защите прав потребителей». Вы можете вернуть товар надлежащего качества в течение 14 дней, не считая день покупки.\r\n\r\n                    </p>\r\n                 \r\n                </div>\r\n                </div>\r\n                <div class=\"accordion-item\" id=\"question5\">\r\n                    <a class=\"accordion-link\" href=\"#question5\">\r\n                        Как и когда я могу получить заказ?\r\n                    <i class=\"icon ion-md-add\"></i>\r\n                    <i class=\"icon ion-md-remove\"></i>\r\n                </a>\r\n                <div class=\"answer\">\r\n                    <p>\r\n                        Если Вы проживаете в Москве, наш курьер доставит Вам заказ на любой удобный для Вас адрес в течении дня, либо на следующий день.\r\n\r\nЕсли Вы находитесь в регионе, доставка осуществляется компанией СДЭК до пункта выдачи в Вашем городе. Так же Вы можете дополнительно заказать услуги курьера СДЭК непосредственно до адреса Вашего проживания.\r\n\r\n                    </p>\r\n                 \r\n                </div>\r\n                </div>\r\n                <div class=\"accordion-item\" id=\"question6\">\r\n                    <a class=\"accordion-link\" href=\"#question6\">\r\n                        Могу ли я сделать возврат/обмен?\r\n                    <i class=\"icon ion-md-add\"></i>\r\n                    <i class=\"icon ion-md-remove\"></i>\r\n                </a>\r\n                <div class=\"answer\">\r\n                    <p>\r\n                        В течении 2-х недель Вы можете обменять либо вернуть любую модель из нашего каталога. Для этого необходимо иметь полный товарный комплект (сумка, коробка, пыльник, паспорт товара), также товар должен быть в первоначальном качестве.\r\n\r\n                    </p>\r\n                 \r\n                </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </section>', '', ''),
(6, 1, 'Первая дочерняя страница (оплата)', 'payment-first-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(7, 1, 'Вторая дочерняя страница (оплата)', 'payment-second-child', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium alias aliquam asperiores assumenda ea error esse eum, eveniet exercitationem itaque nulla odio quam quisquam quos similique, tempora velit, veritatis voluptatum.</p>\r\n', '', ''),
(8, 2, 'Условия доставки', 'usloviya-dostavki', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p>Доставка заказов осуществляется только по территории Российской Федерации.<br />\r\nКурьерская доставка производится в жилые и офисные помещения. Один заказ доставляется по одному адресу. Для отправки заказа по нескольким адресам, необходимо оформить отдельный заказ для каждого адреса. Заказ может быть вручен лично получателю или иному лицу, которое предъявит информацию о номере заказа. Кассовый чек направляется на электронный адрес, указанный при оформлении заказа.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>В случае курьерской доставки или получения заказа в пункте самовывоза Вам необходимо в присутствии представителя транспортной компании проверить целостность упаковки заказа.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>При обнаружении несоответствия внутреннего содержимого вашему заказу, а также при наличии брака, повреждения товара, необходимо направить претензию на <a href=\"mailto: dior@domain.com\"> dior@domain.com</a> с обязательным указанием темы &laquo;Претензия&raquo; в заголовке и указать номер заказа, ваши контактные данные и приложить фотографии.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>ВНИМАНИЕ! Частичный возврат товара заказа курьеру/ представителю ПВЗ невозможен.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Порядок подтверждения и получения заказа</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>После оформления и оплаты заказа, вам приходит письмо с подтверждением вашего заказа на указанный вами адрес электронной почты,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>После подтверждения Ваш заказ передается на наш склад,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>После получения заказа транспортной компанией к Вам приходит СМС уведомление по указанному номеру телефона, с уточнением даты, времени доставки и номером заказа.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Вы можете самостоятельно отследить статус заказа, через пункты меню в Личном Кабинете или в Колл-центре по телефону 8-800-550-74-47 c 07:30 до 23:00 по московскому времени.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', '', ''),
(10, 0, 'Контакты', 'contact', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus error id labore nihil placeat praesentium repellat suscipit! Beatae enim eum, hic magnam neque perspiciatis possimus rem rerum, soluta tempora ut.</p>\r\n', '', ''),
(13, 2, 'Условия возврата товара ', 'usloviya-vozvrata-tovara', '<p>&nbsp;</p>\r\n\r\n<p>Товар надлежащего качества&nbsp;возможно вернуть при соблюдении следующих условий:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>(1)&nbsp;с момента получения Товара не прошло 7 календарных дней,</li>\r\n	<li>(2) при этом Товар надлежащего качества должен быть не бывшим в употреблении, на Товаре отсутствуют следы использования, сохранился Товарный вид, не повреждена упаковка (в т.ч. слюда, целлофан, маркировка, ярлыки и т.д.),</li>\r\n	<li>(3) сохранены потребительские свойства Товара.<br />\r\n	&nbsp;</li>\r\n	<li>в противном случае он возврату не подлежит.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>При возврате Товара надлежащего качества подлежит возврату уплаченная стоимость Товара по Заказу за исключением расходов Продавца на доставку от Покупателя возвращенного Товара.<br />\r\n&nbsp;</p>\r\n\r\n<p>Возврат такого Товара производится по правилам возврата Товара ненадлежащего качества, описанным далее по тексту.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Если Вы получили&nbsp;<strong>Товар ненадлежащего качества</strong>&nbsp;(<em>под Товаром ненадлежащего качества подразумевается Товар в поврежденной, смятой упаковке, Товар с нарушенной слюдой, подтеками, на Товаре видны сколы, повреждения, осадок, измененный цвет и структура продукта, отсутствие более 1/3 продукции в банке)</em>, то такой Товар подлежит возврату с компенсацией оплаченной стоимости за Товар и расходов на возврат.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>В этом случае Вам необходимо:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>\r\n	<ul>\r\n		<li>Написать претензию на&nbsp;&nbsp;dior@domain.com &nbsp;с обязательным указанием темы &laquo;Претензия&raquo; в заголовке и приложением следующих документов:\r\n		<ul>\r\n			<li>(а) указать номер заказа</li>\r\n			<li>(б) контактные данные Покупателя</li>\r\n			<li>(в) обязательно приложить фотографии:</li>\r\n			<li>- транспортного короба со всеми этикетками и повреждениями (при наличии);</li>\r\n			<li>- фото поврежденного/не соответствующего заявленному Товару со штрих-кодом, стикером и бейч-кодом*</li>\r\n		</ul>\r\n		</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ваша претензия будет рассмотрена в течение 5 рабочих дней и вам будет направлен ответ с принятым решением относительно возврата товара.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Денежные средства, оплаченные за Товар, и почтовые расходы (только в случае возврата Товара ненадлежащего качества) на возврат будут возвращены на Ваш банковский расчетный счет в течение 10 дней с момента получения Заявления на возврат и возвращенного Товара Продавцом. Расходы на возврат Товара надлежащего качества несет Покупатель и Продавцом не возмещаются.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>При возврате Товара ненадлежащего качества необходимо вернуть Заказ в полном объеме и в полной комплектации в соответствии с составом Заказа, направленного Продавцом на электронную почту Покупателя при подтверждении Заказа (включая упаковку, пробные образцы, миниатюры, а также полноразмерные тестовые версии парфюмерно-косметической продукции и аксессуары, вложенные в Заказ, в качестве рекламных материалов).</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>*</strong> Бейч-код &mdash; это буквенно цифровой код, содержащий от 2 до 10 знаков, нанесенный производителем на как на упаковку товара, так и на сам продукт. Обычно расположен на дне товара и упаковки.</p>\r\n\r\n<p>&nbsp;** Частичный возврат невозможен, возврат принимается при наличии всех позиций заказа.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int UNSIGNED NOT NULL COMMENT 'Уникальный идентификатор',
  `category_id` int UNSIGNED NOT NULL COMMENT 'Родительская категория',
  `brand_id` int UNSIGNED NOT NULL COMMENT 'Идентификатор бренда',
  `name` varchar(255) NOT NULL COMMENT 'Наименование товара',
  `content` text COMMENT 'Описание товара',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'Цена товара',
  `keywords` varchar(255) DEFAULT NULL COMMENT 'Мета-тег keywords',
  `description` varchar(255) DEFAULT NULL COMMENT 'Мета-тег description',
  `image` varchar(255) DEFAULT NULL COMMENT 'Имя файла изображения',
  `hit` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Лидер продаж?',
  `new` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Новый товар?',
  `sale` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Распродажа?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `brand_id`, `name`, `content`, `price`, `keywords`, `description`, `image`, `hit`, `new`, `sale`) VALUES
(1, 21, 1, 'Увлажняющее молочко для тела ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '1000.00', NULL, NULL, '56a8b80948739ac71ad6a4f288972d4c.webp', 1, 1, 0),
(2, 1, 1, 'Парфюмерная вода Miss Dior', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '700.00', NULL, NULL, '8ec8c31feba172f6678f07ecfec89b7d.webp', 1, 1, 1),
(3, 1, 3, 'Интенсивная парфюмерная вода', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '620.00', NULL, NULL, 'e1471574d61b8dd73be8f02bcd36f861.webp', 0, 0, 0),
(4, 1, 2, 'Парфюмерная вода', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '800.00', NULL, NULL, 'e8b1f094b9b8d1225d7fe7cfae19cd26.webp', 0, 0, 0),
(5, 19, 3, 'Помада-бальзам Для Губ Rouge Dior', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '900.00', NULL, NULL, '80b9102e737b4c4af7f90e74fbcaf525.webp', 1, 0, 0),
(6, 21, 1, 'Очищающий гель для рук Miss Dior', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '500.00', NULL, NULL, '9f9291a6bf2fa29ebabe703cad55e94b.webp', 0, 0, 1),
(7, 1, 2, 'Парфюмерная вода', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '750.00', NULL, NULL, '83f4c0f8b411c6d63228eb0624637489.webp', 1, 0, 0),
(8, 31, 1, 'Крем для тела Miss Dior', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '950.00', NULL, NULL, '5d7db8d3330b70beafbc1408a17396d9.webp', 0, 1, 0),
(9, 1, 1, 'Парфюмированный дезодорант ', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '800.00', NULL, NULL, 'e72758ac997edda65f345c9c366dc479.webp', 0, 1, 1),
(10, 21, 2, 'Гель для душа', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '450.00', NULL, NULL, '09dc83271e54ab43f3e89d25fb76c76c.webp', 0, 0, 1),
(11, 21, 2, 'Увлажняющее молочко для тела', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '800.00', NULL, NULL, '1d67239da09f99db3f66d2eff1879d32.webp', 0, 1, 0),
(12, 1, 3, 'Парфюмерная вода', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab adipisci, alias consectetur, cumque debitis dolor error est eum fugiat fugit hic laborum magni nesciunt officia quidem quos recusandae tempore vel.</p>', '550.00', NULL, NULL, '150450950ab12ed7f96b0fc3007277a2.webp', 0, 1, 1),
(17, 1, 3, 'Туалетная вода', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>', '5000.00', NULL, NULL, '9b240bcdbba2142bb37933d52d81defc.webp', 1, 1, 1),
(18, 1, 3, 'Eau fraîche', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci, blanditiis consequuntur dolore ducimus error et explicabo illo labore magnam nobis odio, reiciendis sunt ullam voluptas voluptatum? Est exercitationem quidem veritatis.</p>', '6000.00', NULL, NULL, '904acd90b056d7317632eef8a51968c5.webp', 0, 1, 0),
(58, 4, 12, 'Balade Sauvage', NULL, '1100.00', NULL, NULL, 'b897cb746c863fc6dd4dd98f9c32a5dc.webp', 0, 0, 0),
(59, 4, 12, 'Tobacolor', NULL, '1100.00', NULL, NULL, '5177451e0cc856b8bcd241ae05160046.webp', 0, 0, 0),
(60, 4, 12, 'Ambre Nuit', NULL, '1100.00', NULL, NULL, 'f55c4934fdb07826ccb519aa31ccaa3d.webp', 0, 0, 0),
(61, 34, 12, 'La Colle Noire', NULL, '1200.00', NULL, NULL, '843e13a8a13b54ed3260f7a119370395.webp', 0, 0, 0),
(62, 34, 12, 'Grand Bal', NULL, '1200.00', NULL, NULL, '1a6a5f4db546dd73b0460074eb6fff0b.webp', 0, 0, 0),
(63, 34, 12, 'Jasmin Des Anges', NULL, '1200.00', NULL, NULL, 'b1140fbcb331fc57b7d16429f5176e76.webp', 0, 0, 0),
(64, 35, 12, 'Souffle De Soie', NULL, '1300.00', NULL, NULL, 'd81b2251b5edd0c3f3f95b2b8dc0b2db.webp', 0, 0, 0),
(65, 35, 12, 'Sakura', NULL, '1300.00', NULL, NULL, '7d08c617cc10639728cd5edf47dbb4d9.webp', 0, 0, 0),
(66, 35, 12, 'Thé Cachemire', NULL, '1300.00', NULL, NULL, '13d124fc749d2e212b2c61abd86cc8f2.jpg', 0, 0, 0),
(67, 35, 12, 'Rose Gipsy', NULL, '1300.00', NULL, NULL, '6a0658febbe3a947ef8bd7ab0e7fda8d.webp', 0, 0, 0),
(68, 34, 12, 'New Look 1947', NULL, '1200.00', NULL, NULL, '41b6a8ccd1cacc533dc9e644dd5aa0c1.webp', 0, 0, 0),
(69, 4, 12, 'Fève Délicieuse', NULL, '1100.00', NULL, NULL, 'd6aa53766cfb7d67aee1feb6e92cc778.webp', 0, 0, 0),
(70, 3, 12, 'Balade Sauvage', NULL, '1500.00', NULL, NULL, '5799fea2625abc8a586aa5d60c395eda.webp', 0, 0, 0),
(71, 3, 12, 'Dioramour', NULL, '1500.00', NULL, NULL, '85876c94e9f3c964832629ac00179dd6.webp', 0, 0, 0),
(72, 3, 12, 'Spice Blend', NULL, '1500.00', NULL, NULL, '43ef6f154f849f5c76b380086dac1220.webp', 0, 0, 0),
(73, 3, 12, 'Eden-Roc', NULL, '1500.00', NULL, NULL, '13b1690ed384c5e19e407f72efb7efe6.webp', 0, 0, 0),
(75, 26, 3, 'Рассыпчатая Пудра Diorskin Nude Air', NULL, '2100.00', NULL, NULL, '729a50c839f2e812cd5a4e9785d5933a.webp', 0, 0, 0),
(76, 26, 3, 'Diorskin Mineral Nude Matte', NULL, '2100.00', NULL, NULL, 'e9ad434c94098db001d8e91bc6ae17ac.webp', 0, 0, 0),
(77, 26, 3, 'Dior Forever Natural Bronze', NULL, '2100.00', NULL, NULL, '685b28db5fe924c72be4596b05bfc927.webp', 0, 0, 0),
(78, 26, 3, 'Forever Cushion Powder', NULL, '3100.00', NULL, NULL, 'e516ab56b4388885afac6f6fe823608e.webp', 0, 0, 0),
(79, 26, 3, 'Dior Forever Cushion Powder', NULL, '3100.00', NULL, NULL, 'c1a5dffdc4a43d0ed5dea5e5f22f968c.webp', 0, 0, 0),
(80, 25, 3, 'Diorskin Mineral Nude Bronze', NULL, '2600.00', NULL, NULL, '36f539f0d8c81e610d734aded1d67be3.webp', 0, 0, 0),
(81, 25, 3, 'Dior Stick Glow', NULL, '2600.00', NULL, NULL, 'a674242369762bc3b7dc34bb511c6e5e.webp', 0, 0, 0),
(82, 25, 3, 'Dior Forever Natural Bronze', NULL, '2600.00', NULL, NULL, '8cc0940554b59dd98eed36cfc5f4b335.webp', 0, 0, 0),
(83, 25, 3, 'Diorskin Mineral Nude Bronze', NULL, '2600.00', NULL, NULL, '0a95d9a70f086df7b244297915d0b1a7.jpg', 0, 0, 0),
(84, 27, 3, 'Dior Backstage', NULL, '2300.00', NULL, NULL, '5d2a3c4858e969308b5d57f1e4c51e85.webp', 0, 0, 0),
(85, 27, 3, 'Кисть-кабуки Dior Backstage N°17', NULL, '2300.00', NULL, NULL, '6e9731cf638274823aeaaf0e9a9e683e.webp', 0, 0, 0),
(86, 27, 3, 'Backstage Blender', NULL, '2300.00', NULL, NULL, 'ec95adb56509e5096a029bb82c222127.webp', 0, 0, 0),
(87, 27, 3, 'Кисть Dior Backstage N°11', NULL, '2300.00', NULL, NULL, 'b0940d7ccdb1d17868705c0b756c43f6.webp', 0, 0, 0),
(88, 27, 3, 'Кисть Dior Backstage N°12', NULL, '2300.00', NULL, NULL, '5affbbf9c7a37872225b05a31bd83be5.webp', 0, 0, 0),
(89, 24, 3, 'Dior Backstage Face & Body Primer', NULL, '2700.00', NULL, NULL, 'a718d7b1c4fbd76f812f1df1f72436ee.webp', 0, 0, 0),
(90, 24, 3, 'Dior Forever Skin Veil SPF 20', NULL, '2700.00', NULL, NULL, '731e14bcf3f820de4bcb317fc418b602.webp', 0, 0, 0),
(91, 24, 3, 'Dior Forever Perfect Fix', NULL, '2700.00', NULL, NULL, '152db7e619058469af93b725fd8563c7.webp', 0, 0, 0),
(92, 16, 3, 'Fix It', NULL, '2100.00', NULL, NULL, 'ea6f5db89b568c0550d0265d3a64a2af.webp', 0, 0, 0),
(93, 16, 3, 'Fix It Colour', NULL, '2100.00', NULL, NULL, '29bb0b76b06753384cf37ad120448562.webp', 0, 0, 0),
(94, 16, 3, 'Flash Luminizer', NULL, '2100.00', NULL, NULL, 'e47791983751af7efb8d7a06b39cd22e.webp', 0, 0, 0),
(95, 16, 3, 'Dior Forever Skin Correct', NULL, '2100.00', NULL, NULL, '8aa6b6c990c3c73e28f7dcc1c4db29ad.webp', 0, 0, 0),
(96, 17, 3, 'Diorshow', NULL, '3600.00', NULL, NULL, '0bba0c1db20882f144e5f7ec8d46cb33.webp', 0, 0, 0),
(97, 17, 3, 'Diorshow Waterproof', NULL, '3600.00', NULL, NULL, '0cc8308ff13c0cdde5ccebf0e219e978.webp', 0, 0, 0),
(98, 17, 3, 'Diorshow Iconic', NULL, '3600.00', NULL, NULL, '21cb8979f1d66ad70cd1ffda64dfa9d1.webp', 0, 0, 0),
(99, 17, 3, 'Diorshow Iconic Waterproof', NULL, '3600.00', NULL, NULL, '261fd294a552a39a6687471a442e18e4.webp', 0, 0, 0),
(100, 18, 3, 'Diorshow Cooling Stick', NULL, '4200.00', NULL, NULL, 'ba7c8a857c5a661b1d696fec4f16d2ed.webp', 0, 0, 0),
(101, 18, 3, 'Dior Backstage Eye Palette', NULL, '4200.00', NULL, NULL, 'bb35ac7fecc27a1fab9e3ee8232ea088.webp', 0, 0, 0),
(102, 18, 3, 'Diorshow Fusion Mono', NULL, '4200.00', NULL, NULL, 'c512c2a20f68edbf0ddf2036ba106318.webp', 0, 0, 0),
(103, 18, 3, 'Backstage Eye Prime', NULL, '4200.00', NULL, NULL, '88f5f7464dafeb7d9e03da1df97b3e5e.webp', 0, 0, 0),
(104, 28, 3, 'Eyeliner Waterproof', NULL, '2600.00', NULL, NULL, '2678b7bf66bcca58b3ae3ed6a74c4927.webp', 0, 0, 0),
(105, 28, 3, 'Diorshow Khôl', NULL, '2600.00', NULL, NULL, '204c704566805c5ce21d6df7aef2f33c.webp', 0, 0, 0),
(106, 28, 3, 'Подводка Diorshow On Stage', NULL, '2600.00', NULL, NULL, 'bfec85cb4d4b15b4f3f4606836cd5a2e.webp', 0, 0, 0),
(107, 28, 3, 'Diorshow Art Pen', NULL, '2600.00', NULL, NULL, 'c512a1a0615a61c549988229a07c15cf.webp', 0, 0, 0),
(108, 29, 3, 'Diorshow Pump \'N\' Brow', NULL, '2700.00', NULL, NULL, 'd35aff71881924d52f356568c1d80382.webp', 0, 0, 0),
(109, 29, 3, 'Diorshow Brow Styler', NULL, '2700.00', NULL, NULL, '881d74def2463b6121760e48fd73ff21.webp', 0, 0, 0),
(110, 29, 3, 'Diorshow Crayon Sourcils Poudre', NULL, '2700.00', NULL, NULL, '20fb71c1b6c4d2a14bbe8c2076dadd24.webp', 0, 0, 0),
(111, 29, 3, 'Тинт Для Бровей Diorshow All-day Brow Ink', NULL, '2700.00', NULL, NULL, '1390bb681d223ddf2d716262462ac3ed.webp', 0, 0, 0),
(112, 19, 3, 'Rouge Dior', NULL, '900.00', NULL, NULL, 'ae52b570cb3e0e4b1d4af014d254cac0.webp', 0, 0, 0),
(113, 19, 3, 'Помада Dior Addict', NULL, '800.00', NULL, NULL, '510e91c50a220fc2b243bc06b7036d9c.webp', 0, 0, 0),
(114, 19, 3, 'Сменный блок помады Dior Addict', NULL, '800.00', NULL, NULL, '89b74db880abee3a1e77399028b7fc9c.webp', 0, 0, 0),
(115, 19, 3, 'Dior Addict Stellar Halo Shine', NULL, '800.00', NULL, NULL, '67f4816989c0dddeaf492bfa3bb62b51.webp', 0, 0, 0),
(116, 19, 3, 'Rouge Dior Forever Liquid', NULL, '800.00', NULL, NULL, 'b615510c8b25ac41e846fac9bd466f34.webp', 0, 0, 0),
(117, 20, 3, 'Dior Addict Ultra-Gloss', NULL, '900.00', NULL, NULL, '693978b7efa511cf90f1b8b6fe1cf10e.webp', 0, 0, 0),
(118, 20, 3, 'Dior Addict Lip Glow Oil', NULL, '900.00', NULL, NULL, '8f9c9858a2c98ade70950be6038e3a0a.webp', 0, 0, 0),
(119, 20, 3, 'Dior Addict Lip Maximizer Serum', NULL, '900.00', NULL, NULL, 'b721c062dfa902e232c44233353849c1.webp', 0, 0, 0),
(120, 20, 3, 'Dior Addict Lip Maximizer - Diorsnow Garden', NULL, '900.00', NULL, NULL, 'ce4f19544940367a04186ddf52e64978.webp', 0, 0, 0),
(121, 30, 3, 'Rouge Dior Ink Lip Liner', NULL, '1000.00', NULL, NULL, 'a2a49614c8fca667c40b89513371885e.webp', 0, 0, 0),
(122, 30, 3, 'Dior Contour Universel', NULL, '1000.00', NULL, NULL, 'cb8358a38ab8863ffb6f5135df56db0d.webp', 0, 0, 0),
(123, 30, 3, 'Dior Contour', NULL, '1000.00', NULL, NULL, '7902dc4b50857af6ce171224b6798b80.webp', 0, 0, 0),
(124, 20, 3, 'Dior Addict Lip Maximizer', NULL, '900.00', NULL, NULL, 'b8f5ffa9dbe23c20badf9c931a8488d9.webp', 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL COMMENT 'Идентификатор пользователя',
  `email` varchar(50) NOT NULL COMMENT 'Адрес почты пользователя',
  `password` varchar(100) NOT NULL COMMENT 'Пароль пользователя'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'tokmakov.e@mail.ru', '$2y$13$eqnOmaUJzYEtFTHS64pw1eN05ZQXHo1chqZjG5bLk3M3i0oQoTXMG'),
(2, 'tokmakov.e@example.com', '$2y$13$lYwM.OOyUUCY2ku11Fnw9.p4nkfLTPu0pll0PVlxtNxcEX8iR51zG');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Уникальный идентификатор';

--
-- AUTO_INCREMENT для таблицы `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Уникальный идентификатор', AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор заказа', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор элемента', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `page`
--
ALTER TABLE `page`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Уникальный идентификатор', AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Уникальный идентификатор', AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор пользователя', AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
