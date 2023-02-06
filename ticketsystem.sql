-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 17, 2023 at 01:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `username`, `ticket_id`, `created_at`, `updated_at`) VALUES
(2, 'hiii', 'Palak', 6, '2023-01-16 09:59:47', '2023-01-16 09:59:47'),
(3, 'what is an issue?', 'Ishant', 5, '2023-01-16 10:00:51', '2023-01-16 10:00:51'),
(5, 'hellooo', 'Ishant', 4, '2023-01-16 11:46:28', '2023-01-16 11:46:28'),
(6, 'keep it', 'Palak', 14, '2023-01-16 12:14:57', '2023-01-16 12:14:57'),
(8, 'hiii', 'Palak', 27, '2023-01-17 04:48:43', '2023-01-17 04:48:43'),
(12, 'Check details', 'Gagan', 25, '2023-01-17 06:30:40', '2023-01-17 06:30:40'),
(19, 'hiii', 'Palak', 28, '2023-01-17 11:06:02', '2023-01-17 11:06:02'),
(20, 'Issue please', 'Ishant', 28, '2023-01-17 11:06:43', '2023-01-17 11:06:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, 'e7170b3c-d636-4c9f-9aa0-45b081dfd3a7', 'database', 'default', '{\"uuid\":\"e7170b3c-d636-4c9f-9aa0-45b081dfd3a7\",\"displayName\":\"App\\\\Jobs\\\\ticketcreatejob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ticketcreatejob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\ticketcreatejob\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-17 09:28:46.601081\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";}}\"}}', 'ErrorException: Attempt to read property \"name\" on null in /opt/lampp/htdocs/TicketSystem/storage/framework/views/353e56069d093a994dc00770cddfaf5b85efa68e.php:10\nStack trace:\n#0 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Foundation/Bootstrap/HandleExceptions.php(266): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError()\n#1 /opt/lampp/htdocs/TicketSystem/storage/framework/views/353e56069d093a994dc00770cddfaf5b85efa68e.php(10): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}()\n#2 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Filesystem/Filesystem.php(109): require(\'...\')\n#3 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Filesystem/Filesystem.php(110): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#4 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire()\n#5 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(70): Illuminate\\View\\Engines\\PhpEngine->evaluatePath()\n#6 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/View.php(152): Illuminate\\View\\Engines\\CompilerEngine->get()\n#7 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/View.php(135): Illuminate\\View\\View->getContents()\n#8 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/View.php(104): Illuminate\\View\\View->renderContents()\n#9 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Markdown.php(65): Illuminate\\View\\View->render()\n#10 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(334): Illuminate\\Mail\\Markdown->render()\n#11 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(304): Illuminate\\Mail\\Mailable->buildMarkdownView()\n#12 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(204): Illuminate\\Mail\\Mailable->buildView()\n#13 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#14 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(197): Illuminate\\Mail\\Mailable->withLocale()\n#15 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send()\n#16 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable()\n#17 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send()\n#18 /opt/lampp/htdocs/TicketSystem/app/Jobs/ticketcreatejob.php(45): Illuminate\\Mail\\PendingMail->send()\n#19 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\ticketcreatejob->handle()\n#20 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#21 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#22 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#23 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#24 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#25 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#26 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#28 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#29 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#30 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#31 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#32 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#33 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#34 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#35 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process()\n#36 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob()\n#37 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon()\n#38 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(129): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#39 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#40 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#41 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#42 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#43 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#44 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call()\n#45 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute()\n#46 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(151): Symfony\\Component\\Console\\Command\\Command->run()\n#47 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run()\n#48 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand()\n#49 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun()\n#50 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#51 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run()\n#52 /opt/lampp/htdocs/TicketSystem/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#53 {main}\n\nNext Illuminate\\View\\ViewException: Attempt to read property \"name\" on null (View: /opt/lampp/htdocs/TicketSystem/resources/views/mailview.blade.php) in /opt/lampp/htdocs/TicketSystem/storage/framework/views/353e56069d093a994dc00770cddfaf5b85efa68e.php:10\nStack trace:\n#0 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/Engines/PhpEngine.php(60): Illuminate\\View\\Engines\\CompilerEngine->handleViewException()\n#1 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/Engines/CompilerEngine.php(70): Illuminate\\View\\Engines\\PhpEngine->evaluatePath()\n#2 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/View.php(152): Illuminate\\View\\Engines\\CompilerEngine->get()\n#3 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/View.php(135): Illuminate\\View\\View->getContents()\n#4 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/View/View.php(104): Illuminate\\View\\View->renderContents()\n#5 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Markdown.php(65): Illuminate\\View\\View->render()\n#6 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(334): Illuminate\\Mail\\Markdown->render()\n#7 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(304): Illuminate\\Mail\\Mailable->buildMarkdownView()\n#8 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(204): Illuminate\\Mail\\Mailable->buildView()\n#9 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(197): Illuminate\\Mail\\Mailable->withLocale()\n#11 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send()\n#12 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable()\n#13 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send()\n#14 /opt/lampp/htdocs/TicketSystem/app/Jobs/ticketcreatejob.php(45): Illuminate\\Mail\\PendingMail->send()\n#15 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\ticketcreatejob->handle()\n#16 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#18 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#19 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#20 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#21 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#22 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#23 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#24 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#25 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#26 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#28 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#29 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#30 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process()\n#32 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob()\n#33 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon()\n#34 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(129): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#35 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#38 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#39 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#40 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call()\n#41 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute()\n#42 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(151): Symfony\\Component\\Console\\Command\\Command->run()\n#43 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run()\n#44 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand()\n#45 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun()\n#46 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#47 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run()\n#48 /opt/lampp/htdocs/TicketSystem/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#49 {main}', '2023-01-17 03:58:47'),
(2, 'fe3caa53-d46d-495a-ade9-5872687c1082', 'database', 'default', '{\"uuid\":\"fe3caa53-d46d-495a-ade9-5872687c1082\",\"displayName\":\"App\\\\Jobs\\\\ticketcreatejob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ticketcreatejob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\ticketcreatejob\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-17 12:01:41.461949\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";}}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Expected response code \"354\" but got code \"550\", with message \"550 5.7.0 Requested action not taken: too many emails per second\". in /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php:337\nStack trace:\n#0 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(201): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode()\n#1 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/EsmtpTransport.php(105): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand()\n#2 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(223): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand()\n#3 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend()\n#4 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send()\n#5 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(521): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send()\n#6 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(285): Illuminate\\Mail\\Mailer->sendSymfonyMessage()\n#7 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(204): Illuminate\\Mail\\Mailer->send()\n#8 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(197): Illuminate\\Mail\\Mailable->withLocale()\n#10 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send()\n#11 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable()\n#12 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send()\n#13 /opt/lampp/htdocs/TicketSystem/app/Jobs/ticketcreatejob.php(45): Illuminate\\Mail\\PendingMail->send()\n#14 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\ticketcreatejob->handle()\n#15 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#17 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#18 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#19 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#20 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#21 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#23 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#24 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#25 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#27 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#28 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#29 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process()\n#31 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob()\n#32 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon()\n#33 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(129): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#34 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#37 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#38 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#39 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call()\n#40 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute()\n#41 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(151): Symfony\\Component\\Console\\Command\\Command->run()\n#42 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run()\n#43 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand()\n#44 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun()\n#45 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#46 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run()\n#47 /opt/lampp/htdocs/TicketSystem/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 {main}', '2023-01-17 06:57:51'),
(3, 'e75cac99-8ec5-40d8-a636-67da13ff2bf4', 'database', 'default', '{\"uuid\":\"e75cac99-8ec5-40d8-a636-67da13ff2bf4\",\"displayName\":\"App\\\\Jobs\\\\ticketcreatejob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ticketcreatejob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\ticketcreatejob\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-17 12:28:09.586427\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";}}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Expected response code \"354\" but got code \"550\", with message \"550 5.7.0 Requested action not taken: too many emails per second\". in /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php:337\nStack trace:\n#0 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(201): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode()\n#1 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/EsmtpTransport.php(105): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand()\n#2 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(223): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand()\n#3 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend()\n#4 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send()\n#5 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(521): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send()\n#6 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(285): Illuminate\\Mail\\Mailer->sendSymfonyMessage()\n#7 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(204): Illuminate\\Mail\\Mailer->send()\n#8 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(197): Illuminate\\Mail\\Mailable->withLocale()\n#10 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send()\n#11 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable()\n#12 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send()\n#13 /opt/lampp/htdocs/TicketSystem/app/Jobs/ticketcreatejob.php(45): Illuminate\\Mail\\PendingMail->send()\n#14 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\ticketcreatejob->handle()\n#15 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#17 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#18 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#19 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#20 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#21 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#23 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#24 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#25 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#27 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#28 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#29 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process()\n#31 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob()\n#32 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon()\n#33 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(129): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#34 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#37 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#38 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#39 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call()\n#40 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute()\n#41 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(151): Symfony\\Component\\Console\\Command\\Command->run()\n#42 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run()\n#43 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand()\n#44 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun()\n#45 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#46 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run()\n#47 /opt/lampp/htdocs/TicketSystem/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 {main}', '2023-01-17 06:58:17'),
(4, '262185e2-388e-43d9-95ee-d2feb390efa3', 'database', 'default', '{\"uuid\":\"262185e2-388e-43d9-95ee-d2feb390efa3\",\"displayName\":\"App\\\\Jobs\\\\ticketcreatejob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ticketcreatejob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\ticketcreatejob\\\":1:{s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-17 15:42:26.862438\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:12:\\\"Asia\\/Kolkata\\\";}}\"}}', 'Symfony\\Component\\Mailer\\Exception\\TransportException: Expected response code \"354\" but got code \"550\", with message \"550 5.7.0 Requested action not taken: too many emails per second\". in /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php:337\nStack trace:\n#0 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(201): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->assertResponseCode()\n#1 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/EsmtpTransport.php(105): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->executeCommand()\n#2 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(223): Symfony\\Component\\Mailer\\Transport\\Smtp\\EsmtpTransport->executeCommand()\n#3 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/AbstractTransport.php(69): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->doSend()\n#4 /opt/lampp/htdocs/TicketSystem/vendor/symfony/mailer/Transport/Smtp/SmtpTransport.php(137): Symfony\\Component\\Mailer\\Transport\\AbstractTransport->send()\n#5 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(521): Symfony\\Component\\Mailer\\Transport\\Smtp\\SmtpTransport->send()\n#6 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(285): Illuminate\\Mail\\Mailer->sendSymfonyMessage()\n#7 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(204): Illuminate\\Mail\\Mailer->send()\n#8 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Support/Traits/Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#9 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailable.php(197): Illuminate\\Mail\\Mailable->withLocale()\n#10 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(307): Illuminate\\Mail\\Mailable->send()\n#11 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/Mailer.php(253): Illuminate\\Mail\\Mailer->sendMailable()\n#12 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Mail/PendingMail.php(124): Illuminate\\Mail\\Mailer->send()\n#13 /opt/lampp/htdocs/TicketSystem/app/Jobs/ticketcreatejob.php(45): Illuminate\\Mail\\PendingMail->send()\n#14 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\ticketcreatejob->handle()\n#15 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#16 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#17 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#18 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#19 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#20 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#21 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#23 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#24 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#25 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#26 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then()\n#27 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#28 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#29 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#30 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(375): Illuminate\\Queue\\Worker->process()\n#31 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(173): Illuminate\\Queue\\Worker->runJob()\n#32 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(146): Illuminate\\Queue\\Worker->daemon()\n#33 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(129): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#34 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#35 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#37 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#38 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Container/Container.php(663): Illuminate\\Container\\BoundMethod::call()\n#39 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(182): Illuminate\\Container\\Container->call()\n#40 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Command/Command.php(312): Illuminate\\Console\\Command->execute()\n#41 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Command.php(151): Symfony\\Component\\Console\\Command\\Command->run()\n#42 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(1022): Illuminate\\Console\\Command->run()\n#43 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand()\n#44 /opt/lampp/htdocs/TicketSystem/vendor/symfony/console/Application.php(168): Symfony\\Component\\Console\\Application->doRun()\n#45 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#46 /opt/lampp/htdocs/TicketSystem/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(155): Illuminate\\Console\\Application->run()\n#47 /opt/lampp/htdocs/TicketSystem/artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle()\n#48 {main}', '2023-01-17 10:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2014_10_12_000000_create_users_table', 1),
(13, '2014_10_12_100000_create_password_resets_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2023_01_14_095715_create_tickets_table', 1),
(17, '2023_01_15_230657_create_comments_table', 1),
(18, '2023_01_16_124529_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('In Progress','Completed') NOT NULL DEFAULT 'In Progress',
  `username` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `title`, `description`, `status`, `username`, `created_at`, `updated_at`) VALUES
(3, 'New Ticket', 'Check Email', 'In Progress', 'Palak', '2023-01-16 08:36:10', '2023-01-17 06:45:22'),
(4, 'Last Ticket', 'Mail testing', 'In Progress', 'Palak', '2023-01-16 09:22:13', '2023-01-16 09:22:13'),
(5, 'Last Ticket', 'Mail testing', 'Completed', 'Palak', '2023-01-16 09:23:13', '2023-01-16 10:04:18'),
(6, 'Last Ticket', 'Mail testing', 'In Progress', 'Palak', '2023-01-16 09:37:30', '2023-01-16 09:37:30'),
(14, 'Testing', 'EMail test', 'In Progress', 'Palak', '2023-01-16 12:03:25', '2023-01-16 12:03:25'),
(16, 'Testing', 'EMail test', 'In Progress', 'Palak', '2023-01-16 12:05:01', '2023-01-16 12:05:01'),
(17, 'Testing', 'EMail test', 'In Progress', 'Palak', '2023-01-16 12:05:33', '2023-01-16 12:05:33'),
(22, 'NEw one', 'Final testing', 'In Progress', 'Palak', '2023-01-16 12:11:23', '2023-01-16 12:11:23'),
(23, 'Project Discussion', 'At 9:50 with proper documentation', 'In Progress', 'Palak', '2023-01-17 03:26:22', '2023-01-17 03:26:22'),
(24, 'Review Meet', 'Please let me know your current work report', 'In Progress', 'Palak', '2023-01-17 03:36:00', '2023-01-17 03:36:00'),
(25, 'Schedule time', 'Current time table', 'In Progress', 'Palak', '2023-01-17 03:38:08', '2023-01-17 03:38:08'),
(26, 'Final Work Report', 'Proper Documentation is required', 'In Progress', 'Palak', '2023-01-17 03:55:34', '2023-01-17 03:55:34'),
(27, 'Testing', 'ABC', 'In Progress', 'Palak', '2023-01-17 03:58:45', '2023-01-17 03:58:45'),
(28, 'Final tets', 'iiii', 'Completed', 'Palak', '2023-01-17 04:03:35', '2023-01-17 04:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Palak', 'Admin', 'palakpalak684@gmail.com', NULL, '$2y$10$O9zR6UqQ9RgoleSpqPkmqukxQHkJoQkg3vNJwLwzgShCOhpRL.9KO', NULL, '2023-01-16 06:14:10', '2023-01-16 06:14:10'),
(2, 'Rajat', 'User', 'palakpalak23@gmail.com', NULL, '$2y$10$BmrDrh8CDnxL8VA5kxo43OR6Etv8QO444G2kQagQl3Tcp3OgAvefi', NULL, '2023-01-16 06:17:32', '2023-01-16 06:17:32'),
(3, 'Kumkum', 'User', 'krsbarora6@gmail.com', NULL, '$2y$10$HoDJT4y5koSfxgVeCXd/GevrqK7apjbBB8hfZEj1jecYMoltOMBri', NULL, '2023-01-16 06:19:09', '2023-01-16 06:19:09'),
(4, 'Smriti', 'User', 'mahajansmriti8@gmail.com', NULL, '$2y$10$33qsJ/AwvtT3/cXaqmyEmeSBy.2v0asgFKV3vUg5OhOakxMfijs3C', NULL, '2023-01-16 06:24:49', '2023-01-16 06:24:49'),
(5, 'Ishant', 'User', 'ishant@gmail.com', NULL, '$2y$10$L3EWBkqUOMY/6JxuYEA82uKzIfDTXBaaHv3rwrAlfwYSRPaPz9Cx.', NULL, '2023-01-16 06:36:38', '2023-01-16 06:36:38'),
(14, 'RA', 'Admin', 'ra@gmail.com', NULL, '$2y$10$9LApZJoWZP65VdUUxsyhGeo/g0xKfyPwOA6iZI7Ez/pX1HF4tjPLO', NULL, '2023-01-17 09:21:18', '2023-01-17 09:21:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_ticket_id_foreign` (`ticket_id`);

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
