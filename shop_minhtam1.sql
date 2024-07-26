-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2024 at 11:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_minhtam1`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `pty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `customer_id`, `product_id`, `pty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 35, 3, 4000, NULL, NULL),
(2, 2, 40, 3, 4000, NULL, NULL),
(3, 3, 39, 1, 24000, NULL, NULL),
(4, 4, 42, 1, 2000, NULL, NULL),
(5, 5, 42, 1, 2000, NULL, NULL),
(6, 6, 39, 2, 24000, NULL, NULL),
(7, 7, 35, 3, 4000, NULL, NULL),
(8, 8, 42, 1, 2000, NULL, NULL),
(9, 9, 45, 1, 1000, NULL, NULL),
(10, 9, 46, 15, 2000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `email`, `content`, `created_at`, `updated_at`) VALUES
(1, 'tam', '0967856746', 'my dinh', 'nguyenminhtamqbh2017@gmail.com', 'aaaa', '2024-07-23 02:50:06', '2024-07-23 02:50:06'),
(2, 'tam', '0967856746', 'my dinh', 'admin@gmail.com', 'aa', '2024-07-23 03:32:34', '2024-07-23 03:32:34'),
(3, 'le', '0967856746', 'my dinh', 'nguyenminhtamqbh2017@gmail.com', '44', '2024-07-23 20:30:35', '2024-07-23 20:30:35'),
(4, 'le', '0967856746', 'my dinh', 'nguyenminhtamqbh2017@gmail.com', 'aa', '2024-07-23 21:09:24', '2024-07-23 21:09:24'),
(5, 'le', '0967856746', 'my dinh', 'nguyenminhtamqbh2017@gmail.com', 'aaa', '2024-07-23 21:38:42', '2024-07-23 21:38:42'),
(6, 'le', '0967856746', 'my dinh', 'nguyenminhtamqbh2017@gmail.com', 'aaaaa', '2024-07-23 21:41:10', '2024-07-23 21:41:10'),
(7, 'le', '0967856746', 'my dinh', 'nguyenminhtamqbh2017@gmail.com', 'aaaa', '2024-07-23 21:42:07', '2024-07-23 21:42:07'),
(8, 'le', '0967856746', 'my dinh', 'nguyenminhtamqbh2017@gmail.com', 'aaa', '2024-07-23 21:43:03', '2024-07-23 21:43:03'),
(9, 'tam', '0967856746', 'my dinh', 'nguyenminhtamqbh2017@gmail.com', 'aaa', '2024-07-23 22:44:19', '2024-07-23 22:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '1a07ca07-7907-457c-a0cc-e0297cd44771', 'database', 'default', '{\"uuid\":\"1a07ca07-7907-457c-a0cc-e0297cd44771\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:30:\\\"nguyenminhtamqbh2017@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-07-24 04:09:26.386282\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Class \'App\\Jobs\\OrderShipped\' not found in C:\\xampp\\htdocs\\e_shop\\app\\Jobs\\SendMail.php:35\nStack trace:\n#0 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#1 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#7 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#8 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#10 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#11 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#12 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#14 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(1040): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\e_shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2024-07-23 21:09:28'),
(2, '25e1a452-0dc0-4319-a82b-df03424b8e73', 'database', 'default', '{\"uuid\":\"25e1a452-0dc0-4319-a82b-df03424b8e73\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:30:\\\"nguyenminhtamqbh2017@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-07-24 04:38:44.609044\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Class \'App\\Jobs\\OrderShipped\' not found in C:\\xampp\\htdocs\\e_shop\\app\\Jobs\\SendMail.php:35\nStack trace:\n#0 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#1 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#7 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#8 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#10 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#11 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#12 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#14 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(1040): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\e_shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2024-07-23 21:38:45'),
(3, 'a5cc38ae-9a08-4c0e-a19a-9c7881355e38', 'database', 'default', '{\"uuid\":\"a5cc38ae-9a08-4c0e-a19a-9c7881355e38\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:30:\\\"nguyenminhtamqbh2017@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-07-24 04:41:12.850533\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Class \'App\\Jobs\\OrderShipped\' not found in C:\\xampp\\htdocs\\e_shop\\app\\Jobs\\SendMail.php:35\nStack trace:\n#0 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#1 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#7 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#8 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#10 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#11 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#12 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#14 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(1040): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\e_shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2024-07-23 21:41:13'),
(4, 'a46ecaa8-c209-4120-b7a1-005373b06a8e', 'database', 'default', '{\"uuid\":\"a46ecaa8-c209-4120-b7a1-005373b06a8e\",\"displayName\":\"App\\\\Jobs\\\\SendMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendMail\",\"command\":\"O:17:\\\"App\\\\Jobs\\\\SendMail\\\":11:{s:8:\\\"\\u0000*\\u0000email\\\";s:30:\\\"nguyenminhtamqbh2017@gmail.com\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2024-07-24 04:42:09.853504\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:3:\\\"UTC\\\";}s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'Error: Class \'App\\Jobs\\OrderShipped\' not found in C:\\xampp\\htdocs\\e_shop\\app\\Jobs\\SendMail.php:35\nStack trace:\n#0 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\SendMail->handle()\n#1 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#3 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#4 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#5 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#6 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendMail))\n#7 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#8 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#9 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(120): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendMail), false)\n#10 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendMail))\n#11 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendMail))\n#12 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#13 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendMail))\n#14 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#15 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(378): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#17 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(172): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#18 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(117): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(101): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#20 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#23 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#24 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(653): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#25 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#26 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Command\\Command.php(298): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#27 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(1040): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#29 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(301): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 C:\\xampp\\htdocs\\e_shop\\vendor\\symfony\\console\\Application.php(171): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 C:\\xampp\\htdocs\\e_shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 C:\\xampp\\htdocs\\e_shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 {main}', '2024-07-23 21:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `description`, `content`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Nước hoa nam', 0, 'Nước hoa nam', '<p>Nước hoa nam</p>', 1, '2024-07-11 20:51:14', '2024-07-13 02:35:57'),
(2, 'Giao án tham khảo', 0, 'Giao án tham khảo', '<p>Giao &aacute;n tham khảo</p>', 1, '2024-07-11 20:54:53', '2024-07-12 00:52:09'),
(5, 'Nước hoa giá rẻ', 1, 'Nước hoa giá rẻ', '<p>Nước hoa gi&aacute; rẻ</p>', 1, '2024-07-11 20:59:08', '2024-07-11 20:59:08'),
(6, 'Nước hoa tháng 7', 0, 'Nước hoa nam', '<p>Nước hoa nam</p>', 1, '2024-07-11 20:51:14', '2024-07-13 02:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_12_024231_create_menus_table', 2),
(6, '2024_07_12_081423_create_products_table', 3),
(7, '2024_07_12_082434_update_table_product', 4),
(9, '2024_07_16_170538_create_sliders_table', 5),
(10, '2024_07_23_040855_create_customers_table', 6),
(11, '2024_07_23_053337_create_carts_table', 6),
(12, '2024_07_23_102835_create_jobs_table', 7),
(13, '2024_07_25_103308_add_new_column_to_users_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `content`, `menu_id`, `price`, `price_sale`, `active`, `created_at`, `updated_at`, `thumb`) VALUES
(1, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(2, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(3, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(4, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(5, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(6, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(7, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(8, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(9, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(10, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(11, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(12, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(13, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(14, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(15, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(16, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(17, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(18, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(19, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(20, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(21, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(22, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(23, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(24, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(25, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(26, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(27, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(28, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(29, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(30, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(31, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(32, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(33, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(34, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p><strong>Nước hoa</strong>&nbsp;hay&nbsp;<strong>dầu thơm</strong>&nbsp;(tiếng Anh:&nbsp;<em>Perfume</em>,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Ph%C3%A1p\">tiếng Ph&aacute;p</a>:&nbsp;<em>parfum</em>) l&agrave; hỗn hợp của&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Tinh_d%E1%BA%A7u\">tinh dầu</a>&nbsp;thơm hoặc c&aacute;c&nbsp;<a href=\"https://vi.wikipedia.org/wiki/H%E1%BB%A3p_ch%E1%BA%A5t_th%C6%A1m\">hợp chất tạo m&ugrave;i thơm</a>,&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=Ch%E1%BA%A5t_h%C3%A3m_(n%C6%B0%E1%BB%9Bc_hoa)&amp;action=edit&amp;redlink=1\">chất h&atilde;m hương (lưu hương)</a>&nbsp;v&agrave;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Dung_m%C3%B4i\">dung m&ocirc;i</a>, thường ở dạng lỏng. Sử dụng với mục đ&iacute;ch tạo ra m&ugrave;i thơm cho cơ thể, cảm gi&aacute;c dễ chịu, sự quyến rũ giới t&iacute;nh hay đơn giản chỉ l&agrave; che giấu một m&ugrave;i kh&oacute; chịu n&agrave;o đ&oacute;.<a href=\"https://vi.wikipedia.org/wiki/N%C6%B0%E1%BB%9Bc_hoa#cite_note-1\">[1]</a></p>\r\n\r\n<p>C&aacute;c văn bản cổ v&agrave; c&aacute;c cuộc khai quật khảo cổ cho thấy việc sử dụng nước hoa trong một số nền văn minh tiền sử. Nước hoa hiện đại bắt đầu v&agrave;o cuối thế kỷ 19 với sự tổng hợp của c&aacute;c hợp chất tạo m&ugrave;i thơm thương mại như&nbsp;<a href=\"https://vi.wikipedia.org/w/index.php?title=Vanillin&amp;action=edit&amp;redlink=1\">vanillin</a>&nbsp;hoặc&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Coumarin\">coumarin</a>, cho ph&eacute;p tạo ra nước hoa c&oacute; m&ugrave;i m&agrave; trước đ&acirc;y kh&ocirc;ng thể đạt được nếu chỉ d&ugrave;ng c&aacute;c chất thơm tự nhi&ecirc;n.</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-18 20:21:05', '/storage/uploads/2024/07/15/banner-05.jpg'),
(35, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(36, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(37, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(38, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(39, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(40, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(41, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(42, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(43, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg'),
(44, 'Dior', 'Dior', '<p>Dior&nbsp;</p>', 1, 5000, 4000, 1, '2024-07-17 19:53:43', '2024-07-17 19:53:43', '/storage/uploads/2024/07/18/banner-04.jpg'),
(45, 'Nước hoa fake', 'Nước hoa fake', '<p>Nước hoa fake</p>', 5, 4000, 1000, 1, '2024-07-17 19:54:10', '2024-07-17 19:54:10', '/storage/uploads/2024/07/18/gallery-09.jpg'),
(46, 'Hot tháng 7', 'Hot tháng 7', '<p>Hot th&aacute;ng 7</p>', 6, 6000, 2000, 1, '2024-07-17 19:55:01', '2024-07-17 19:55:01', '/storage/uploads/2024/07/18/gallery-04.jpg'),
(47, 'Bộ sưu tập mùa hè', 'Bộ sưu tập mùa thu', '<p>Bộ sưu tập m&ugrave;a thu</p>', 2, 25000, 24000, 1, '2024-07-15 03:05:53', '2024-07-16 03:20:17', '/storage/uploads/2024/07/15/banner-05.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_by` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `url`, `thumb`, `sort_by`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm mùa hè', 'https://viblo.asia/followings', '/storage/uploads/2024/07/23/banner-04.jpg', 1, 1, '2024-07-23 02:49:19', '2024-07-23 02:49:19'),
(2, 'Sản phẩm mùa thu', 'https://viblo.asia/followings', '/storage/uploads/2024/07/23/banner-02.jpg', 1, 1, '2024-07-23 02:49:32', '2024-07-23 02:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'minhtam', 'nguyenminhtamqbh2017@gmail.com', NULL, '$2y$10$HXEOkSqNz8a/fgy7lqIhheMvyF3arn6soROzBt5OU7qYtttIfm3m2', 'si2XN1871e03Nxvtf7hIpCoagAYYL4R1VTfikRYa9YUcqXZqUhPRsGmn864j', NULL, NULL),
(5, 'HuynhAnh', 'admin@gmail.com', NULL, '$2y$10$ZF9xAt3j9T1WerxhnhyHw.RFf2GHFloeKjeTFBIXl4eE..GlOJ9oy', NULL, '2024-07-25 03:35:31', '2024-07-25 03:35:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
