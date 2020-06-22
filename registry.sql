-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 22 2020 г., 15:07
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
-- База данных: `registry`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `group_id`, `time`) VALUES
(1, 'hello@co.co', '12345', 'Ivan', NULL, '2020-06-20'),
(2, 'batman@mail.ru', '1234', 'batman', NULL, '2020-06-20'),
(3, 'superman@mail.ru', '$2y$10$wqrK0qATZMi.J3h80cbl0.hSOh.LBMQPXGC3Z5gqlaPbYXjTWOU4m', 'superman', NULL, '2020-06-20'),
(5, 'ter@co.co', '$2y$10$5CdYIpk/qyjSyeqEtffIcOU0Do1KtBpwXo3g0K/cFdO4liciPnHBC', 'Terminator', NULL, '2020-06-20'),
(6, 'ter2@co.co', '$2y$10$1wavlV.PoWDui3H7Mz1OBeURslKNlbQn8tdlIXda.lOoQeADTN7Z.', 'Terminator2', NULL, '2020-06-20'),
(7, 'ter3@co.co', '$2y$10$TiZ60UofS2A/ncZJizSaveEfeV520VzUGJN9hHw4AAHWHrQpxjK4K', 'Terminator3', NULL, '2020-06-20');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
