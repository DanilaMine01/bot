-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Авг 22 2020 г., 11:22
-- Версия сервера: 5.7.31-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `telegram`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attack`
--

CREATE TABLE `attack` (
  `id` int(11) NOT NULL,
  `tg_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `tg_id` varchar(255) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `attack_limit` int(11) NOT NULL DEFAULT '2',
  `expire` int(255) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `tg_id`, `plan`, `time`, `attack_limit`, `expire`, `status`) VALUES
(1, '573857686', 'Owner', 99999, 1000, 1698087591, 'yes'),
(2, '1075977470', 'PLAN5', 3000, 4, 0, 'yes'),
(3, '916650222', 'Owner', 99999, 1000, 1600717826, 'yes'),
(4, '1270269201', 'PLAN5', 4300, 2, 0, 'yes'),
(5, '998709466', 'PLAN1', 300, 2, 0, 'yes'),
(6, '1223562867', 'PLAN4', 2400, 2, 0, 'yes'),
(7, '1140000397', 'Unknown', 0, 2, 0, 'no'),
(8, '1365433460', 'Unknown', 0, 2, 0, 'no'),
(9, '431707945', 'Unknown', 0, 2, 0, 'no'),
(10, '770207889', 'Unknown', 0, 2, 0, 'no'),
(11, '1093700504', 'Unknown', 0, 2, 0, 'no'),
(12, '1061425641', 'Unknown', 0, 2, 0, 'no'),
(13, '364958259', 'PLAN1.5', 360, 2, 0, 'yes'),
(14, '1240369578', 'Unknown', 0, 2, 0, 'no'),
(15, '808326111', 'Unknown', 0, 2, 0, 'no'),
(16, '544567914', 'Unknown', 0, 2, 0, 'no');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `attack`
--
ALTER TABLE `attack`
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
-- AUTO_INCREMENT для таблицы `attack`
--
ALTER TABLE `attack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
