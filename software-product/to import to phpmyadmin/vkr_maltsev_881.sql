-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 20 2022 г., 05:22
-- Версия сервера: 5.7.38
-- Версия PHP: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vkr_maltsev_881`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(100) UNSIGNED NOT NULL,
  `Наименование предприятия` varchar(100) NOT NULL,
  `ФИО клиента` varchar(100) NOT NULL,
  `Номер телефона` varchar(32) NOT NULL,
  `Адрес электронной почты` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `Наименование предприятия`, `ФИО клиента`, `Номер телефона`, `Адрес электронной почты`) VALUES
(1, 'Россия, г. Артем, Набережная ул., д. 9', 'Бакаринцева Клавдия Феоктистовна', '+7 (996) 845-46-30', 'klavdiya1932@rambler.ru'),
(2, 'Россия, г. Барнаул, Первомайская ул., д. 24', 'Попырин Тимофей Севастьянович', '+7 (927) 321-80-64', 'timofey1925@outlook.com'),
(3, 'Россия, г. Щёлково, Пионерская ул., д. 10', 'Волынкин Трофим Григорьевич', '+7 (973) 983-38-52', 'trofim4448@outlook.com'),
(4, 'Россия, г. Люберцы, Заводская ул., д. 14', 'Бессуднова Марьяна Прокопьевна', '+7 (942) 437-33-68', 'maryana6873@mail.ru'),
(5, 'Россия, г. Дзержинск, Победы ул., д. 7', 'Савенков Яков Ильич', '+7 (990) 839-38-67', 'yakov57@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE `info` (
  `id` int(100) UNSIGNED NOT NULL,
  `ФИО клиента` varchar(50) NOT NULL,
  `Дата принятия заказа` date NOT NULL,
  `Программа` varchar(255) NOT NULL,
  `Телефон` varchar(32) NOT NULL,
  `Адрес подразделения` varchar(100) NOT NULL,
  `Адрес электронной почты` varchar(50) NOT NULL,
  `Сообщение` text NOT NULL,
  `Оформление` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `ФИО клиента`, `Дата принятия заказа`, `Программа`, `Телефон`, `Адрес подразделения`, `Адрес электронной почты`, `Сообщение`, `Оформление`) VALUES
(1, 'Самарина Ника Валентиновна', '2022-06-21', 'Microsoft Office Home and Business 2021', '+7 (975) 873-30-25', 'Россия, г. Сергиев Посад, Мира ул., д. 19', 'nika.samarina@rambler.ru', '', 0),
(2, 'Маклакова Полина Макаровна', '2022-06-21', 'Microsoft 365 для семьи (family) по подписке', '+7 (982) 285-25-30', 'Россия, г. Бийск, Западная ул., д. 17', 'polina19081961@hotmail.com', '', 0),
(3, 'Алеев Леонид Панкратович', '2022-06-21', 'Microsoft 365 бизнес стандарт по подписке', '+7 (956) 603-70-91', 'Россия, г. Новомосковск, Трудовая ул., д. 25', 'leonid68@gmail.com', '', 0),
(4, 'Курсалин Савва Прохорович', '2022-06-21', 'Microsoft 365 персональный (personal) по подписке', '+7 (920) 311-61-87', 'Россия, г. Артем, Зеленый пер., д. 16', 'savva10071977@ya.ru', '', 0),
(5, 'Ярмолинская Татьяна Федотовна', '2022-06-21', 'Microsoft Access 2021', '+7 (932) 481-47-27', 'Россия, г. Волгодонск, Совхозная ул., д. 13', 'tatyana3216@outlook.com', '', 0),
(6, 'Булка Даниил Филиппович', '2022-06-21', 'Microsoft Excel 2021', '+7 (986) 194-81-82', 'Россия, г. Братск, Заречный пер., д. 16', 'daniil07041974@ya.ru', '', 0),
(7, 'Ямскова Мила Константиновна', '2022-06-21', 'Microsoft Exchange Online', '+7 (973) 396-92-45', 'Россия, г. Красноярск, Кирова ул., д. 19', 'mila7986@yandex.ru', '', 0),
(8, 'Кузиева Екатерина Григориевна', '2022-06-21', 'Microsoft Office 365 Business по подписке', '+7 (985) 956-61-19', 'Россия, г. Артем, Майская ул., д. 7', 'ekaterina06071982@mail.ru', '', 0),
(9, 'Касьянов Роман Игнатьевич', '2022-06-21', 'Microsoft Office 365 крупный бизнес (CSP)', '+7 (926) 889-31-14', 'Россия, г. Набережные Челны, Светлая ул., д. 8', 'roman9009@outlook.com', '', 0),
(10, 'Смирнов Гавриил Васильевич', '2022-06-21', 'Microsoft Office Home and Student 2019', '+7 (919) 308-18-76', 'Россия, г. Северодвинск, Вокзальная ул., д. 24', 'gavriil81@outlook.com', '', 0),
(11, 'Дунин-Барковская Афанасия Петровна', '2022-06-21', 'Microsoft Office Professional', '+7 (936) 457-59-66', 'Россия, г. Химки, Трудовая ул., д. 6', 'afanasiya7901@gmail.com', '', 0),
(12, 'Колотилова София Фадеевна', '2022-06-21', 'Microsoft Office Professional Plus 2021', '+7 (956) 765-37-56', 'Россия, г. Хасавюрт, Дорожная ул., д. 21', 'sofiya02061962@ya.ru', '', 0),
(13, 'Килина Ксения Марковна', '2022-06-21', 'Microsoft Office Standard 2021', '+7 (915) 968-75-44', 'Россия, г. Новороссийск, Сельская ул., д. 21', 'kseniya34@outlook.com', '', 0),
(14, 'Бутусов Ростислав Тимофеевич', '2022-06-21', 'Microsoft Outlook 2021', '+7 (981) 503-75-92', 'Россия, г. Бердск, Красноармейская ул., д. 20', 'rostislav09111968@rambler.ru', '', 0),
(15, 'Уксюзова Марианна Ильиновна', '2022-06-21', 'Microsoft Power BI', '+7 (915) 884-48-10', 'Россия, г. Волгоград, Парковая ул., д. 5', 'marianna1969@outlook.com', '', 0),
(16, 'Печкина Анастасия Емельяновна', '2022-06-21', 'Microsoft PowerPoint 2021', '+7 (935) 363-81-31', 'Россия, г. Каспийск, Центральная ул., д. 22', 'anastasiya.pechkina@ya.ru', '', 2),
(17, 'Щербатыха Марфа Макаровна', '2022-06-21', 'Microsoft Project 2021', '+7 (906) 313-78-25', 'Россия, г. Иркутск, Минская ул., д. 13', 'marfa.erbatyha@outlook.com', '', 2),
(18, 'Лассман Тарас Леонтьевич', '2022-06-21', 'Microsoft Project Online', '+7 (999) 404-55-87', 'Россия, г. Смоленск, Зеленая ул., д. 25', '+7 (999) 404-55-87', '', 2),
(19, 'Михалёв Константин Захарович', '2022-06-21', 'Microsoft Publisher 2021', '+7 (937) 930-33-60', 'Россия, г. Петропавловск-Камчатский, Хуторская ул., д. 15', 'konstantin.mihalev@yandex.ru', '', 2),
(20, 'Вотяков Николай Макарович', '2022-06-21', 'Microsoft Visio 2021', '+7 (906) 974-33-84', 'Россия, г. Нижневартовск, Новая ул., д. 10', 'nikolay.votyakov@ya.ru', '', 2),
(21, 'Изотов Георгий Нифонтович', '2022-06-21', 'Microsoft Word для Windows 10', '+7 (947) 485-29-10', 'Россия, г. Москва, Зеленая ул., д. 21', 'georgiy99@yandex.ru', '', 1),
(22, 'Кидин Венедикт Савванович', '2022-06-21', 'SVG Publish Visio Extension', '+7 (934) 239-14-49', 'Россия, г. Реутов, Хуторская ул., д. 13', 'venedikt35@mail.ru', '', 1),
(23, 'Гарф Екатерина Герасимовна', '2022-06-21', 'Visio Online', '+7 (977) 259-57-21', 'Россия, г. Саратов, Майская ул., д. 13', 'ekaterina.garf@mail.ru', '', 1),
(24, 'Ермолин Трофим Викторович', '2022-06-21', 'Microsoft Project Server 2019', '+7 (919) 931-32-99', 'Россия, г. Иркутск, Песчаная ул., д. 23', 'trofim15051978@mail.ru', '', 1),
(25, 'Шелагин Георгий Афанасьевич', '2022-06-21', 'Р7-Офис Профессиональный', '+7 (979) 871-41-44', 'Россия, г. Смоленск, Коммунистическая ул., д. 6', 'georgiy59@hotmail.com', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `progs`
--

CREATE TABLE `progs` (
  `id` int(100) UNSIGNED NOT NULL,
  `Программа` varchar(100) NOT NULL,
  `Количество` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `progs`
--

INSERT INTO `progs` (`id`, `Программа`, `Количество`) VALUES
(1, 'Microsoft Office Home and Business 2021', 848),
(2, 'Microsoft 365 для семьи (family) по подписке', 631),
(3, 'Microsoft 365 бизнес стандарт по подписке', 670),
(4, 'Microsoft 365 персональный (personal) по подписке', 511),
(5, 'Microsoft Access 2021', 966);

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `id` int(100) UNSIGNED NOT NULL,
  `ФИО сотрудника` varchar(100) NOT NULL,
  `Должность` varchar(100) NOT NULL,
  `Номер телефона` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`id`, `ФИО сотрудника`, `Должность`, `Номер телефона`) VALUES
(1, 'Ананьева Тамара Тамара', 'Администратор', '+7 (954) 181-20-68'),
(2, 'Кочерёжкин Петр Геннадьевич', 'Подчиненный', '+7 (964) 749-63-44'),
(3, 'Яблоков Иннокентий Антонович', 'Подчиненный', '+7 (999) 846-18-30'),
(4, 'Аксенова Клавдия Данииловна', 'Подчиненный', '+7 (950) 519-82-89'),
(5, 'Ревягин Павел Сергеевич', 'Подчиненный', '+7 (995) 484-15-33');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `progs`
--
ALTER TABLE `progs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `progs`
--
ALTER TABLE `progs`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
