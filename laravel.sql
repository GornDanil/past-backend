-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 07 2022 г., 13:50
-- Версия сервера: 5.7.38
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(24, '2022_07_05_173831_user_table', 2),
(25, '2022_07_06_175150_create_pastes_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pastes`
--

CREATE TABLE `pastes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pastes`
--

INSERT INTO `pastes` (`id`, `title`, `message`, `expiration`, `access`, `lang`, `user`, `created_at`, `updated_at`) VALUES
(6, 'css', 'body {\r\n    background: red;\r\n}\r\n.title {\r\n    color: #FFF;\r\n}', '1', '1', 'css', '1', '2022-07-07 05:16:11', '2022-07-07 05:16:11'),
(7, 'javascript', 'public class DataTypes {\r\n\r\n public static void main(String[] args) {\r\n DataTypes app = new DataTypes();\r\n\r\n //int 4byte -2147483648 2147483648\r\n int i = 1;\r\n //short 2byte -32768 32767\r\n short s = 1;\r\n //long 8byte -9223372036854775808 -9223372036854775807\r\n long l = 1;\r\n //byte 1byte -128 до 127\r\n byte b = 1;\r\n //float 4byte +-3,40282347E+38F\r\n float f = 0.1f;', '3', '1', 'java', '1', '2022-07-07 06:43:54', '2022-07-07 06:43:54'),
(8, 'javasript', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '1', '1', 'javascript', '1', '2022-07-07 06:45:35', '2022-07-07 06:45:35'),
(9, 'ddsddf', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '1', '1', 'javascript', '1', '2022-07-07 06:45:47', '2022-07-07 06:45:47'),
(10, 'sdfdfd', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '1', '1', 'javascript', '1', '2022-07-07 06:46:33', '2022-07-07 06:46:33'),
(11, 'asdsadsad', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '1', '1', 'javascript', '1', '2022-07-07 06:46:39', '2022-07-07 06:46:39'),
(12, 'adsasdasd', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '1', '1', 'javascript', '1', '2022-07-07 06:46:45', '2022-07-07 06:46:45'),
(13, '4444', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '1', '1', 'javascript', '1', '2022-07-07 06:47:08', '2022-07-07 06:47:08'),
(14, '13125454', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '1', '1', 'javascript', '1', '2022-07-07 06:47:47', '2022-07-07 06:47:47'),
(15, '12124', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '7', '1', 'javascript', '1', '2022-07-07 06:47:56', '2022-07-07 06:47:56'),
(16, '141244', 'var oldUrl=document.location;\r\nvar MainUrl=\'\';\r\n\r\nfunction LoadMain(e0){\r\n e=e0||window.event;\r\n if(e){if(e.ctrlKey||e.shiftKey)return true;} // если нажата Ctrl или Shift, то загружать в отдельном окне\r\n\r\n if(e0 && e0.stopPropagation){e0.stopPropagation();e0.preventDefault();}       // для DOM-совместимых браузеров\r\n else window.event.cancelBubble=true; //для IE\r\n\r\n url=getEventTarget(e0);\r\n if(url.nodeName!=\'A\'&&url.parentNode)url=url.parentNode;\r\n\r\n if(url.href)url=url.href;\r\n LoadMainUrl(url);\r\n if(history.pushState)history.pushState(null, null, MainUrl);\r\n else window.location.hash=\'#\'+MainUrl;\r\n return false;\r\n}', '1', '1', 'javascript', '1', '2022-07-07 06:48:17', '2022-07-07 06:48:17');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `pastes`
--
ALTER TABLE `pastes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `pastes`
--
ALTER TABLE `pastes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
