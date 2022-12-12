-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 12 2022 г., 19:15
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `keyOrganization` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DateStart` date NOT NULL,
  `DateEnd` date NOT NULL,
  `idOrganization` int(11) NOT NULL,
  `isBlocked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `keys`
--

INSERT INTO `keys` (`id`, `keyOrganization`, `DateStart`, `DateEnd`, `idOrganization`, `isBlocked`) VALUES
(1, 'qwfqwfo23efwepf2ewfw', '2022-12-01', '2022-12-22', 1, 0),
(2, 'hhtrhrththugi5ngiugeung5', '2022-12-16', '2022-12-31', 1, 1),
(12, '1', '2022-12-01', '2022-12-23', 1, 0),
(13, 'dgfhjhjlkm;l,', '2022-02-11', '2022-12-11', 2, 1),
(15, 'âïàïðîë', '2022-12-11', '2022-12-11', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `organization`
--

CREATE TABLE `organization` (
  `id` int(11) NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `organization`
--

INSERT INTO `organization` (`id`, `name`) VALUES
(1, 'softacom'),
(2, 'issoft');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qwe` (`idOrganization`);

--
-- Индексы таблицы `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `organization`
--
ALTER TABLE `organization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `keys`
--
ALTER TABLE `keys`
  ADD CONSTRAINT `qwe` FOREIGN KEY (`idOrganization`) REFERENCES `organization` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
