-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 25 2019 г., 18:40
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bookshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id_author` int(11) NOT NULL,
  `fio_authors` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id_author`, `fio_authors`) VALUES
(3, 'asfasfasf'),
(4, 'qff'),
(5, 'qqqqq qqqqqqq'),
(6, 'sdgsgd'),
(7, 'Authors'),
(8, 'ty'),
(9, 'Стивен  Кинг'),
(10, 'а'),
(11, 'Стивен  Кинг'),
(12, 'Стивен Кинг'),
(13, 'Стивен Кинг'),
(14, 'Стивен Кинг'),
(15, 'Стивен Кинг');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id_book` int(11) NOT NULL,
  `name_book` varchar(255) NOT NULL,
  `id_section` int(11) DEFAULT NULL,
  `id_author` int(11) DEFAULT NULL,
  `id_provider` int(11) DEFAULT NULL,
  `id_publishing` int(11) DEFAULT NULL,
  `price` int(255) NOT NULL,
  `img` varchar(2000) NOT NULL,
  `desck` varchar(255) NOT NULL,
  `fdeck` varchar(255) NOT NULL,
  `fio_authors` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id_book`, `name_book`, `id_section`, `id_author`, `id_provider`, `id_publishing`, `price`, `img`, `desck`, `fdeck`, `fio_authors`) VALUES
(14, 'Как писать книги', NULL, NULL, NULL, NULL, 200, '6006833065.jpg', 'Книга', 'Как писать книги', 'Стивен Кинг'),
(15, 'Как писать книги', NULL, NULL, NULL, NULL, 200, '6006833065.jpg', 'Книга', 'Как писать книги', 'Стивен Кинг'),
(16, 'Как писать книги', NULL, NULL, NULL, NULL, 200, '6006833065.jpg', 'Книга', 'Как писать книги', 'Стивен Кинг'),
(17, 'Как писать книги', NULL, NULL, NULL, NULL, 200, '6006833065.jpg', 'Книга', 'Как писать книги', 'Стивен Кинг');

-- --------------------------------------------------------

--
-- Структура таблицы `buyers`
--

CREATE TABLE `buyers` (
  `id_buyer` int(11) NOT NULL,
  `fio` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_book` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `buyers`
--

INSERT INTO `buyers` (`id_buyer`, `fio`, `address`, `number`, `login`, `password`, `email`, `id_book`) VALUES
(17, 'asg', '', 23, 'ags', '$2y$10$jYaJuH0smCO2zIJHc.MmXe6ItJBQMnEszsr3slrdaHOO7IaADDJFm', 'dfyh@emal.ru', 8),
(18, 'aasf', '', 135, 'asf', '$2y$10$MuDS19CZwF3YJUFfPKp8W.WoMtF4i7NPwNi/1ya40eJNdbjv1R.5m', 'dfyh@emal.ru', 5),
(19, 'aasf', '', 135, 'f', '$2y$10$sqA6wefp1GuD/8z7/a1K8ehLeGt/HS7k5nTJz71BA2bAcEsypwsra', 'dfyh@emal.ru', 5),
(20, 'gg', '', 43, 'gg', '$2y$10$HmTjUv23WA4zmLvlAeSuaeXjN02PBeJSgoONuSmL23jLRcvt8bY7i', 'evvd@ff.ru', 10),
(21, 'а', '', 3, 'а', '$2y$10$65PzmtTSn0Eh7dFm8IOdce04AnyupRSnPRnXB4fOXKIrFX1yolZx2', 'dfyh@emal.ru', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `orderss`
--

CREATE TABLE `orderss` (
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orderss`
--

INSERT INTO `orderss` (`date`) VALUES
('2019-12-29');

-- --------------------------------------------------------

--
-- Структура таблицы `sections`
--

CREATE TABLE `sections` (
  `id_section` int(11) NOT NULL,
  `name_section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sections`
--

INSERT INTO `sections` (`id_section`, `name_section`) VALUES
(1, 'q'),
(2, 'afaf'),
(3, 'afaf'),
(4, 'afaf'),
(5, 'afaf'),
(6, 'afaf'),
(7, 'afaf'),
(8, 'afaf'),
(9, 'afaf'),
(10, 'shsh'),
(11, 'shsh'),
(12, 'shsh'),
(13, 'shsh'),
(14, '1'),
(15, 'qwer'),
(16, 'a'),
(17, 'e'),
(18, 'a'),
(19, 'q'),
(20, 'q'),
(21, 'Name_section'),
(22, 'fg'),
(23, 'Новинки'),
(24, 'Новинки'),
(25, 'Новинки'),
(26, 'Новинки'),
(27, 'Новинки'),
(28, 'Новинки'),
(29, 'Новинки');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id_author`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `id_section` (`id_section`,`id_author`,`id_provider`,`id_publishing`),
  ADD KEY `id_author` (`id_author`),
  ADD KEY `id_publishing` (`id_publishing`),
  ADD KEY `id_provider` (`id_provider`);

--
-- Индексы таблицы `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id_buyer`);

--
-- Индексы таблицы `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id_section`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id_buyer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `sections`
--
ALTER TABLE `sections`
  MODIFY `id_section` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id_author`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`id_publishing`) REFERENCES `publishing` (`id_publishing`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`id_provider`) REFERENCES `providers` (`id_provider`),
  ADD CONSTRAINT `books_ibfk_4` FOREIGN KEY (`id_section`) REFERENCES `sections` (`id_section`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
