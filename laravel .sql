-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 12 2022 г., 16:02
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
(25, 'Получаем гласные', 'def get_vowels(String):\r\n    return [each for each in String if each in \"aeiou\"]\r\nget_vowels(\"animal\") # [a, i, a]\r\nget_vowels(\"sky\") # []\r\nget_vowels(\"football\") # [o, o, a]', '4', '1', 'python', 'undefind', '2022-07-12 08:53:37', '2022-07-12 08:53:37'),
(26, 'Первая буква в верхнем регистре', 'def capitalize(String):\r\n    return String.title()\r\ncapitalize(\"shop\") # [Shop]\r\ncapitalize(\"python programming\") # [Python Programming]\r\ncapitalize(\"how are you!\") # [How Are You!]', '6', '1', 'python', 'undefind', '2022-07-12 08:53:59', '2022-07-12 08:53:59'),
(27, 'Печать строки N раз', 'n=5\r\nstring=\"Hello World \"\r\nprint(string * n)  #Hello World Hello World Hello World Hello World Hello World', '1', '2', 'python', 'undefind', '2022-07-12 08:54:20', '2022-07-12 08:54:20'),
(28, 'Объединяем два словаря', 'def merge(dic1,dic2):\r\n    dic3=dic1.copy()\r\n    dic3.update(dic2)\r\n    return dic3\r\ndic1={1:\"hello\", 2:\"world\"}\r\ndic2={3:\"Python\", 4:\"Programming\"}\r\nmerge(dic1,dic2) # {1: \'hello\', 2: \'world\', 3: \'Python\', 4: \'Programming\'}', '7', '1', 'python', 'undefind', '2022-07-12 08:55:54', '2022-07-12 08:55:54'),
(29, 'Вычисляем время выполнения', 'import time\r\nstart_time= time.time()\r\ndef fun():\r\n    a=2\r\n    b=3\r\n    c=a+b\r\nend_time= time.time()\r\nfun()\r\ntimetaken = end_time - start_time\r\nprint(\"Your program takes: \", timetaken) # 0.0345', '5', '1', 'python', 'undefind', '2022-07-12 08:56:18', '2022-07-12 08:56:18'),
(30, 'Обмен значений между переменными', 'a=3\r\nb=4\r\na, b = b, a\r\nprint(a, b) # a= 4, b =3', '4', '2', 'python', 'undefind', '2022-07-12 08:56:37', '2022-07-12 08:56:37'),
(31, 'Проверка дубликатов', 'def check_duplicate(lst):\r\n    return len(lst) != len(set(lst))\r\ncheck_duplicate([1,2,3,4,5,4,6]) # True\r\ncheck_duplicate([1,2,3]) # False\r\ncheck_duplicate([1,2,3,4,9]) # False', '5', '1', 'python', 'undefind', '2022-07-12 08:57:22', '2022-07-12 08:57:22'),
(32, 'Фильтрация значений False', 'def Filtering(lst):\r\n    return list(filter(None,lst))\r\nlst=[None,1,3,0,\"\",5,7]\r\nFiltering(lst) #[1, 3, 5, 7]', '4', '1', 'python', 'undefind', '2022-07-12 08:57:45', '2022-07-12 08:57:45'),
(33, 'Размер в байтах', 'def ByteSize(string):\r\n    return len(string.encode(\"utf8\"))\r\nByteSize(\"Python\") #6\r\nByteSize(\"Data\") #4', '5', '1', 'python', 'undefind', '2022-07-12 08:58:09', '2022-07-12 08:58:09'),
(34, 'Занятая память', 'import sys\r\nvar1=\"Python\"\r\nvar2=100\r\nvar3=True\r\nprint(sys.getsizeof(var1)) #55\r\nprint(sys.getsizeof(var2)) #28\r\nprint(sys.getsizeof(var3)) #28', '5', '1', 'python', 'undefind', '2022-07-12 08:58:27', '2022-07-12 08:58:27'),
(35, 'получение номера последней вставленной записи.', '<?php\r\nmysqli_query($con,\"INSERT INTO works (pupil,curator) VALUES (\'$ispname\', \'$rukname\')\"); \r\n$new_id = mysqli_insert_id($con);\r\necho $new_id;\r\n?>', '4', '1', 'php', 'undefind', '2022-07-12 08:59:51', '2022-07-12 08:59:51'),
(36, 'Считаем количество записей с mysqli_query', '<?php\r\nif ($result=mysqli_query($con,\"SELECT * FROM developments\"))  {\r\n  $rowcount=mysqli_num_rows($result);  \r\n}\r\necho $rowcount; //количество записей в таблице\r\n?>', '5', '1', 'php', 'undefind', '2022-07-12 09:00:16', '2022-07-12 09:00:16'),
(37, 'удалить дубликаты из строки', '<?php\r\n$string=\'984,984,984 tryrt\';\r\n$result=join(\',\', array_unique(preg_split(\'/[\\s,]+/\', $string)));\r\necho $result;\r\n?>', '4', '1', 'php', 'undefind', '2022-07-12 09:00:38', '2022-07-12 09:00:38'),
(38, 'Склонение слова по числам на PHP', '<?php    \r\nfunction sklonen($n,$s1,$s2,$s3, $b = false){\r\n    $m = $n % 10; $j = $n % 100;\r\n    if($b) $n = \'<b>\'.$n.\'</b>\';\r\n    if($m==0 || $m>=5 || ($j>=10 && $j<=20)) return $n.\' \'.$s3;\r\n    if($m>=2 && $m<=4) return  $n.\' \'.$s2;\r\n    return $n.\' \'.$s1;\r\n}\r\n \r\necho sklonen(652, \'диск\', \'диска\', \'дисков\');\r\n?>', '5', '1', 'php', 'puls300@yandex.ru', '2022-07-12 09:01:59', '2022-07-12 09:01:59'),
(39, 'Обрезка строки по словам', '<?php        \r\n    function cutString($str, $length) {\r\n \r\n$string = strip_tags($str);\r\n$string = substr($string, 0, $length);\r\n$string = rtrim($string, \"!,.\");\r\n$string = substr($string, 0, strrpos($string, \' \'));\r\n \r\n return $string;\r\n}\r\n?>', '6', '1', 'php', 'puls300@yandex.ru', '2022-07-12 09:02:31', '2022-07-12 09:02:31'),
(40, 'Месяца по русски', '<?php                \r\nfunction monname( $mon  )\r\n{\r\n$months = Array(1 => \'Января\', \'Февраля\', \'Марта\', \'Апреля\', \'Мая\', \'Июня\',\'Июля\', \'Августа\', \'Сентября\', \'Октября\', \'Ноября\', \'Декабря\');\r\n return  $months[intval($mon)];\r\n}\r\n \r\n \r\nfunction monnames( $mon  )\r\n{\r\n$months = Array(1 => \'Январь\', \'Февраль\', \'Март\', \'Апрель\', \'Май\', \'Июнь\',\'Июль\', \'Август\', \'Сентябрь\', \'Октябрь\', \'Ноябрь\', \'Декабрь\');\r\n return  $months[intval($mon)];\r\n}\r\n \r\n?>', '5', '3', 'php', 'puls300@yandex.ru', '2022-07-12 09:02:57', '2022-07-12 09:02:57'),
(41, 'Проверить, существует ли элемент', 'sub inarr {\r\n  grep {$_ == $_[0]} @{$_[1]}; # важно: для строк использовать eq\r\n}', '5', '1', 'perl', 'puls300@yandex.ru', '2022-07-12 09:15:04', '2022-07-12 09:15:04'),
(42, 'Удалить из массива @arr элементы, которые есть в массиве @skip.', 'my @rslt = grep {\r\n  my $t = $_;\r\n  ! grep { $_ == $t } @skip; # важно: для строк использовать eq\r\n} @arr;', '5', '3', 'perl', 'puls300@yandex.ru', '2022-07-12 09:16:17', '2022-07-12 09:16:17'),
(43, 'Скрипт замены строк в тексте.', 'while(<>) {\r\n  chomp;\r\n  last if($_ eq \"==end==\");\r\n  /^([^=]*)=(.*)$/ and $r{$1} = $2;\r\n}\r\n\r\n$d = join \'\', <>;\r\n$d =~ s/$_/$r{$_}/g for (keys %r);\r\nprint $d;', '4', '2', 'perl', 'puls300@yandex.ru', '2022-07-12 09:16:37', '2022-07-12 09:16:37'),
(44, 'Простой многопоточный обработчик.', '#!/usr/bin/perl\r\n\r\nuse strict;\r\nuse threads;\r\nuse threads::shared;\r\nuse List::Util qw/shuffle/;\r\nuse constant THREADS_NUM => 8;\r\n\r\nmy $cnt :shared = 0;\r\nmy @threads;\r\nmy @lines;\r\n\r\nwhile(<>) { chomp; push @lines, $_; }\r\n@lines = shuffle @lines;\r\npush @threads, threads->create(\\&thread_func, $_)\r\n  for(1..THREADS_NUM);\r\n$_->join for(@threads);\r\n\r\nsub thread_func {\r\n  my ($thid) = @_;\r\n  my $my_cnt;\r\n  while(1) {\r\n    { lock($cnt); $my_cnt = $cnt++; }\r\n    last if($my_cnt >= @lines);\r\n    parse_line($thid, $lines[$my_cnt]);\r\n  }\r\n}\r\n\r\nsub parse_line {\r\n  my ($thid, $line) = @_;\r\n  print \"thid = $thid, line = $line\\n\";\r\n  sleep(rand(3));\r\n}', '5', '3', 'perl', 'puls300@yandex.ru', '2022-07-12 09:28:30', '2022-07-12 09:28:30'),
(45, 'Работа с временными файлами', '#!/usr/bin/perl\r\n\r\n# работа с временными файлами в Perl\r\n# (c) Alexandr A Alexeev 2011 | http://eax.me/\r\n# подробности см в \'man File::Temp\'\r\n\r\nuse strict;\r\nuse File::Temp;\r\n\r\n# сгенерировать имя временного файла в заданном каталоге\r\n# с указанным префиксом\r\nmy $tmp_fname = File::Temp::tempnam(\"./tmp\", \"myprfx\");\r\nprint \"tmp_name = $tmp_fname\\n\";\r\n\r\n# получить имя временного файла в каталоге /tmp\r\nmy $tmp_fname2 = tmpnam();\r\nprint \"tmp_name = $tmp_fname2\\n\";\r\n\r\n# получить хэндл временного файла в каталоге /tmp\r\nmy $fh = tmpfile();\r\nclose $fh;\r\n\r\n# получить имя и хэндл временного файла\r\nmy ($th, $tname) = tmpnam();\r\nprint \"tname = $tname\\n\";\r\nclose $th;', '5', '3', 'perl', 'puls300@yandex.ru', '2022-07-12 09:28:57', '2022-07-12 09:28:57'),
(46, 'Вырезаем HTML теги + пример работы с юникодом:', 'use strict;\r\nuse utf8;\r\nuse HTML::Entities;\r\n\r\n# ...\r\nutf8::decode($_);\r\ns/<[^>]*>//g;\r\ndecode_entities($_);\r\nutf8::encode($_);', '7', '3', 'perl', 'puls300@yandex.ru', '2022-07-12 09:29:23', '2022-07-12 09:29:23'),
(47, 'Кроссплатформенное считывание файла в одну строку или в массив строк.', 'use File::Slurp;\r\n# ...\r\nmy $data = read_file($filename);\r\nmy @lines = read_file($filename);\r\n\r\n# удаляем символы новой строки\r\n@lines = map { chomp; $_; } @lines;', '5', '1', 'perl', 'puls300@yandex.ru', '2022-07-12 09:29:48', '2022-07-12 09:29:48'),
(48, 'Лямбда-выражения', 'Console.CancelKeyPress +=\r\n(sender, e) => {\r\nConsole.WriteLine(\"CTRL+C detected!\\n\");\r\ne.Cancel = true;\r\n};', '5', '3', 'csharp', 'puls300@yandex.ru', '2022-07-12 09:42:22', '2022-07-12 09:42:22'),
(49, 'Aliased generics', 'using ASimpleName = Dictionary<string, Dictionary<string, List>>;', '6', '2', 'csharp', 'puls300@yandex.ru', '2022-07-12 09:42:51', '2022-07-12 09:42:51');

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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'puls300@yandex.ru', '$2y$10$MBzh1XyqBaHPuSH8LxLbtuMJJGMTs0TXcHsk69ylKU22PwXKSCyy6', NULL, '2022-07-10 03:47:01', '2022-07-10 03:47:01');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
