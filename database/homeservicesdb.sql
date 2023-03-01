-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 12:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeservicesdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nyekef', 'nyekef@gmail.com', '1234567890', 'Just testing the contact form', '2023-01-25 09:18:18', '2023-01-25 09:18:18'),
(2, 'Anabel James', 'anabel@gmail.com', '1929384758', 'Anabel is trying to reach you, please respond', '2023-01-25 09:25:55', '2023-01-25 09:25:55');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_10_093946_create_sessions_table', 1),
(7, '2014_10_12_000000_create_users_table', 2),
(8, '2023_01_14_061917_create_service_categories_table', 3),
(9, '2023_01_17_075138_create_services_table', 4),
(10, '2023_01_21_052526_create_sliders_table', 5),
(11, '2023_01_24_124504_create_service_providers_table', 6),
(12, '2023_01_25_095619_create_contacts_table', 7);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tagline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `service_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `discount_type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inclusion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclusion` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `tagline`, `user_id`, `service_category_id`, `price`, `discount`, `discount_type`, `image`, `thumbnail`, `description`, `inclusion`, `exclusion`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 'est libero accusamus esse', 'est-libero-accusamus-esse', 'Aut facere alias.', NULL, 13, '20000.00', NULL, NULL, '1674080244.jpg', '1674080244.jpg', 'Ipsum qui et in voluptatem dicta. Qui aut in sit sed qui. Aut consequatur et maiores iure eos harum voluptatibus. Autem laboriosam blanditiis modi rerum temporibus cupiditate. Ea rerum dolore dolorum id. Omnis consequuntur aut non velit enim est. Et et fugiat voluptates omnis dolorum officiis a. Eos sed omnis numquam debitis sunt nam. Voluptatem sit impedit quisquam aut harum sit.', 'Sit sint eius.|Eos voluptatibus ut.|Aut aut minima.|Omnis aut.|Ipsum quisquam.', 'Aut quibusdam.|Enim soluta beatae.|Occaecati quod ex.|Aut repellat dolor.|Alias sed.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:23:42'),
(2, 'quia et minima natus', 'quia-et-minima-natus', 'Fugiat maiores quod.', NULL, 12, '40011.00', NULL, NULL, 'service_20.jpg', 'service_20.jpg', 'Nam explicabo et dicta qui ut impedit dolorem. Reiciendis quaerat accusamus ad est. Nihil odit ad nesciunt exercitationem quam recusandae quidem nulla. Dolor quibusdam architecto sunt vero omnis. Nostrum libero earum eos et. At autem minus amet hic et eos optio. Ut explicabo ex doloribus saepe voluptatem expedita est fugiat. At dolorum et dolorem accusantium omnis. Nam perspiciatis iusto illum expedita ducimus.', 'Dolores facere id.|Officiis itaque.|Suscipit aut quos.|Dolorem nihil nam.|Fuga omnis et totam.', 'Reiciendis eum aut.|Ipsum id nulla enim.|Optio quae aut.|Voluptas autem.|Totam et.', 1, 0, '2023-01-17 07:23:09', '2023-01-17 07:23:09'),
(3, 'et non autem tenetur', 'et-non-autem-tenetur', 'Molestiae commodi.', NULL, 6, '55044.00', '30.00', 'percent', 'service_4.jpg', 'service_4.jpg', 'Dolorem dolores similique commodi. Aut necessitatibus quas explicabo vel excepturi. Totam qui fuga molestias natus. Voluptas dignissimos enim cum omnis labore temporibus consequatur consequuntur. Asperiores odit voluptas nostrum officia qui. Impedit quasi accusamus quam delectus consectetur. Aut dolor nobis qui odit voluptas et. Totam esse impedit aperiam consequatur. Suscipit ut ducimus sapiente sequi. Non voluptatem nihil sed nihil in et aperiam. Aut et voluptatem iste voluptate pariatur.', 'In exercitationem.|Quod nisi nostrum.|Illum maiores ipsa.|Sapiente dolorem.|Fugit et labore.', 'Quo fugiat sequi et.|Ullam dolor.|Molestiae quam eos.|Velit aut.|Quia dicta sit.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:07:42'),
(4, 'consequatur consequatur esse aut', 'consequatur-consequatur-esse-aut', 'Quod eum non sit ut.', NULL, 12, '98052.00', NULL, NULL, 'service_15.jpg', 'service_15.jpg', 'Consequatur doloribus vel id expedita error dicta dolorem. Sint aperiam dicta nihil ea corporis. Assumenda enim dignissimos commodi voluptatem et. Consequuntur eveniet excepturi dolorem quia molestiae et rem. Autem delectus explicabo sit molestiae doloremque. Asperiores recusandae omnis eum ex quia aut non enim. Laboriosam culpa dolores dolore voluptatum et molestiae doloremque omnis.', 'Quis ullam sint.|Saepe sint et.|Illo rerum odio rem.|Nam repudiandae.|Optio quae ullam.', 'Omnis aut tempora.|Est sunt et commodi.|Aperiam minima.|Eveniet eum nemo.|Quo numquam ea.', 1, 0, '2023-01-17 07:23:09', '2023-01-17 07:23:09'),
(5, 'et iusto soluta veritatis', 'et-iusto-soluta-veritatis', 'Expedita est nobis.', NULL, 13, '14111.00', NULL, NULL, 'service_11.jpg', 'service_11.jpg', 'Magnam commodi nihil consequatur error animi. Modi labore voluptatem natus laborum autem. Ratione voluptatibus sequi ipsam quis ut amet possimus. Quo consequatur esse officiis et. Voluptas quam quasi incidunt deleniti. Et labore blanditiis minus dolore dolores autem dolores. Laborum qui ipsum vel distinctio minima distinctio. Rem consequatur sequi ea praesentium occaecati magni. Non facere sint nulla delectus in animi debitis.', 'Repudiandae eum.|Possimus laudantium.|Sunt eius quasi sit.|Deleniti non dolor.|Perferendis amet.', 'Ea nihil iste.|Autem tempora eius.|Tempora iste ullam.|Quas consequatur.|Harum tempora.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:24:21'),
(6, 'soluta nam consequatur et', 'soluta-nam-consequatur-et', 'Officiis amet.', NULL, 20, '63577.00', NULL, NULL, 'service_19.jpg', 'service_19.jpg', 'Sequi adipisci voluptatem eveniet quia cumque. Dicta in aut porro mollitia non. Reprehenderit nisi accusantium dolores qui qui eos voluptatem. Sint amet consectetur cupiditate quisquam accusamus nihil qui. Sed eum voluptatem suscipit blanditiis et fugit non. Soluta voluptatem fugiat asperiores rerum nam. Nulla commodi laborum qui id sapiente aspernatur enim.', 'Totam laborum.|Ipsa amet omnis.|Perferendis enim.|Qui modi officiis.|Et rem cupiditate.', 'Doloremque rerum.|Atque tempora.|Possimus illo et.|Quo fugit enim non.|Quae sunt est iure.', 1, 0, '2023-01-17 07:23:09', '2023-01-17 07:23:09'),
(7, 'voluptatem minus adipisci est', 'voluptatem-minus-adipisci-est', 'Dolore nisi.', NULL, 19, '40108.00', NULL, NULL, 'service_2.jpg', 'service_2.jpg', 'Sequi non voluptas mollitia suscipit. Rerum aut delectus praesentium porro libero. Quasi expedita qui voluptatem voluptatem. Ipsa facilis labore ratione voluptatum. Rem laborum suscipit et non magnam modi. Sit est at nemo omnis voluptatem iure nihil. Rerum et ea autem vel quo blanditiis sunt eos. Facere illum et ullam omnis quas tenetur omnis ipsum. Et aliquid aut repellat. Nihil tenetur excepturi vitae aliquam eveniet officia iusto.', 'Officia et sunt.|Culpa et aliquam.|A ut nesciunt et.|Est amet ex cumque.|Atque eum dicta sit.', 'Nam dolores.|Ipsa praesentium.|In porro iusto sed.|Excepturi occaecati.|Et non aut amet eum.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:11:37'),
(8, 'reiciendis consectetur itaque commodi', 'reiciendis-consectetur-itaque-commodi', 'Ab amet dolor id.', NULL, 7, '7452.00', NULL, NULL, 'service_16.jpg', 'service_16.jpg', 'Sed molestiae eius sunt eum corrupti. Possimus molestias dolor facere minus cum ea maxime maiores. Pariatur impedit aspernatur quasi maxime quis veniam. Repudiandae saepe sed voluptas ut esse voluptas. Ut vel et voluptatibus ut tenetur quia laborum. Eum voluptates amet non id et. Nostrum optio magni consequuntur et eaque repudiandae dicta. Dolorem et ut eos magni autem vel optio.', 'Aut corrupti quo.|Asperiores sed.|Nihil culpa placeat.|Et sed minima odio.|Rerum dolor iusto.', 'In qui accusantium.|Libero ut at eos.|Consequatur enim.|Quas optio.|Aut beatae nobis et.', 1, 0, '2023-01-17 07:23:09', '2023-01-17 07:23:09'),
(9, 'quasi iure nesciunt et', 'quasi-iure-nesciunt-et', 'Incidunt.', NULL, 6, '72795.00', NULL, NULL, 'service_12.jpg', 'service_12.jpg', 'Delectus ad id neque odio impedit quasi delectus. Dolore amet nihil voluptas. Odio autem suscipit eligendi maiores. Earum qui ratione sint consequuntur consequatur amet. Adipisci id et velit voluptas. Et cumque quis aut nesciunt. Deleniti cum velit tempora possimus voluptas consequatur et est. Velit totam sed eum sunt. Eaque est ipsam accusantium quod. Qui sunt dicta qui libero et quasi. Perferendis dicta optio itaque dolor ut.', 'Architecto.|Et minima ratione.|Ad dolore amet.|Quia et natus qui.|Nihil placeat ipsam.', 'Sed esse quis est.|Non repellat quia.|Ullam assumenda.|Qui autem quasi sit.|Culpa debitis.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:10:34'),
(10, 'soluta sed iste quod', 'soluta-sed-iste-quod', 'Nemo alias ut quia.', NULL, 11, '85072.00', NULL, NULL, 'service_14.jpg', 'service_14.jpg', 'Aliquid dolor laudantium laborum tempore quasi. Aut eum debitis dolore odit quod. Labore animi voluptatem quis ut nemo. Nostrum exercitationem et voluptatem qui delectus dolores consequatur. Incidunt minima cupiditate voluptas officiis ut. Ut provident veniam voluptatem. Dolor autem hic officia hic rerum. Sed ullam esse ad maxime ut. Laboriosam excepturi voluptatum est sapiente dolor voluptas.', 'Aperiam aliquid eos.|Amet occaecati modi.|Facere omnis.|Perferendis est.|Et occaecati.', 'Natus ut maxime.|Et beatae.|Deserunt voluptates.|Facilis aut.|Ut magnam autem.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:24:31'),
(11, 'qui voluptatum quis officia', 'qui-voluptatum-quis-officia', 'Maiores voluptate a.', NULL, 10, '18064.00', NULL, NULL, 'service_10.jpg', 'service_10.jpg', 'Libero assumenda eum voluptas unde possimus sint in. Eligendi eum consequuntur molestias accusamus fuga ipsa ullam. Voluptatum et laudantium aut sunt. Rem qui quisquam magni expedita. Eum totam sed dolores dolor eius velit. Esse amet perferendis nihil rerum. Numquam autem perspiciatis eveniet et quo illo aliquid eius.', 'Et qui nihil.|Qui id beatae.|Officia rem sed.|Qui nam et.|Quo vel voluptate.', 'Aut quam est maxime.|Impedit laudantium.|Minima autem nulla.|Ipsa illo voluptate.|Quidem quasi.', 1, 1, '2023-01-17 07:23:09', '2023-02-03 21:17:03'),
(12, 'a autem dolores alias', 'a-autem-dolores-alias', 'Dolorum ab.', NULL, 12, '40110.00', NULL, NULL, 'service_1.jpg', 'service_1.jpg', 'Voluptatem enim voluptatem et sed itaque dolores est aperiam. Eum maxime quos qui maiores similique. Officiis nostrum et laboriosam rerum ut saepe sint praesentium. Corrupti quibusdam nulla quos itaque repellat. Soluta asperiores maiores corrupti cupiditate aut in. Porro et sunt earum magni enim. Totam qui aut mollitia eveniet dolores totam aut. Amet quae nesciunt cum eaque ut reprehenderit est. Sunt eum consequatur itaque nihil velit. Fugit quis modi delectus autem voluptas temporibus.', 'Nesciunt dolor.|Est dolorem.|Occaecati laborum.|Ab voluptatum eius.|Praesentium eius et.', 'In rerum velit ut.|Et recusandae nam.|Laboriosam.|Animi neque enim.|Exercitationem non.', 1, 0, '2023-01-17 07:23:09', '2023-01-17 07:23:09'),
(14, 'ipsa deserunt atque id', 'ipsa-deserunt-atque-id', 'Corrupti eaque.', NULL, 17, '79008.00', NULL, NULL, 'service_9.jpg', 'service_9.jpg', 'Mollitia qui saepe dolorem quos dolorum a. Atque soluta voluptatibus sed ratione eveniet. Incidunt illo vero quis dolor est totam dolorum ut. Voluptatem tenetur libero dignissimos necessitatibus voluptas perspiciatis. Illo dolor ea eligendi assumenda qui. Et aut minima omnis officia et. Corporis ea deleniti veritatis totam qui aut sit. Numquam eum inventore aut accusantium consequatur sit ut eius. Dolore accusantium at quibusdam odio eligendi sed consequatur.', 'Optio ut eum minus.|Dolor eaque.|Fuga voluptas enim.|Nisi officiis vitae.|Possimus quas.', 'Omnis pariatur unde.|Harum ipsam atque.|Accusantium.|A optio architecto.|Rem voluptatem in.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:11:20'),
(15, 'officia dolor sit et', 'officia-dolor-sit-et', 'Ut ipsum quo.', NULL, 20, '88246.00', NULL, NULL, 'service_13.jpg', 'service_13.jpg', 'Quia deleniti maxime delectus quia sint autem deserunt. Aliquam voluptas totam doloribus consequatur soluta ex. Deleniti consequatur delectus et eaque et. Minima iusto provident est aliquid. Quae rerum nihil voluptates aspernatur veritatis dicta nisi. Blanditiis nemo sit vero aspernatur in. Sunt quos consequatur illum. Perspiciatis vel et deserunt totam. Modi nam voluptatum recusandae repellendus qui tempore tenetur eveniet. Eveniet eos quasi officia dolore.', 'Dolorem sunt aut et.|Est consequatur.|Rerum beatae sint.|Nisi dolore.|Iusto adipisci.', 'Fugiat debitis iure.|Fugiat suscipit.|Possimus ea quos.|Rerum et amet.|Molestias harum.', 1, 0, '2023-01-17 07:23:09', '2023-01-17 07:23:09'),
(17, 'fuga cumque non debitis', 'fuga-cumque-non-debitis', 'Omnis neque ea iste.', NULL, 9, '55361.00', NULL, NULL, 'service_17.jpg', 'service_17.jpg', 'Rerum magnam molestias et et tempora veniam. Accusantium aliquam omnis nulla voluptatem. Consequuntur expedita ad excepturi quia dignissimos. Maiores id maxime ipsum aut. Consequuntur minus voluptas qui omnis earum omnis autem neque. Quia ipsum voluptatem dolorum velit sed consequatur totam. Praesentium necessitatibus et est non quas vel ab. Dolore libero eum aspernatur quisquam adipisci nulla nemo.', 'Sapiente sed.|Voluptatem.|Ea quod iusto autem.|Expedita cupiditate.|Sunt repellat.', 'Rerum laudantium.|Similique hic.|Quisquam voluptatem.|Eius est sed.|Aliquam aliquam.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:15:18'),
(18, 'esse ab rerum saepe', 'esse-ab-rerum-saepe', 'Ipsa magnam eum et.', NULL, 14, '53073.00', NULL, NULL, 'service_6.jpg', 'service_6.jpg', 'Dignissimos vitae officiis placeat autem sit et. Architecto et voluptate occaecati quia magnam. Molestiae ducimus repudiandae aut odit voluptas qui assumenda. Enim omnis consequatur itaque eos. Qui occaecati vel error impedit. Ut est perferendis sunt explicabo suscipit rerum aspernatur. Excepturi et accusamus quaerat qui voluptates. Molestias sunt aspernatur culpa magni itaque quia. Consectetur ratione in eos possimus veniam accusantium.', 'Magnam optio libero.|Odit incidunt est.|Eveniet accusamus.|Quis cumque at.|Dicta quibusdam.', 'Omnis est rerum qui.|Occaecati rem.|Est dicta iure eum.|Dolorem incidunt.|Qui quia harum.', 1, 1, '2023-01-17 07:23:09', '2023-02-03 21:17:49'),
(19, 'rerum consequatur aspernatur dolores', 'rerum-consequatur-aspernatur-dolores', 'Ab nisi dolorem.', NULL, 6, '8347.00', NULL, NULL, 'service_8.jpg', 'service_8.jpg', 'Dolorem ad et iste et. Ipsa illo nesciunt ut. Saepe et sunt labore minima. Quae quas eos et possimus nisi dignissimos ducimus. Voluptatibus nam rerum cum temporibus saepe vero eligendi. Nisi aperiam eum eligendi architecto velit laudantium laborum eos. Eum beatae dicta est temporibus commodi. Aut quae dolorem laudantium nihil. Natus laboriosam animi itaque autem dolore harum. Similique doloremque nisi quasi.', 'Quas voluptatem.|Illo quisquam.|Rerum aut molestiae.|Iure nihil dicta.|Ratione ut in aut.', 'Voluptatibus.|Quia atque et.|Non veritatis.|Ullam ut blanditiis.|Rerum minima est.', 1, 1, '2023-01-17 07:23:09', '2023-02-03 21:17:28'),
(20, 'est veritatis sint ad', 'est-veritatis-sint-ad', 'Omnis perferendis.', NULL, 9, '66950.00', NULL, NULL, 'service_5.jpg', 'service_5.jpg', 'Minima aspernatur rerum recusandae hic consequatur non voluptates est. Quae veritatis molestiae nulla magnam natus. Earum sed laboriosam non est. Natus quidem vel beatae aut dignissimos impedit. At vitae quia sint qui non ut vero fugit. Quis omnis asperiores quisquam fugit. In quo explicabo earum exercitationem. Eum quibusdam repudiandae molestiae non incidunt aut velit nulla. Esse cumque fugit iusto laboriosam officiis. Ut culpa et numquam sed. Et non minima autem.', 'Harum modi corporis.|Officiis aspernatur.|Voluptatibus hic.|Commodi ipsum.|In suscipit dolorem.', 'Possimus.|Et non facere.|Animi ea fugiat.|Et voluptatem id.|Exercitationem.', 1, 1, '2023-01-17 07:23:09', '2023-01-20 14:15:26'),
(22, 'New Test Services', 'new-test-services', 'Tagline for new services', 7, 4, '11500.00', '10.00', 'percent', '1675461027.jpg', '1675461027.jpg', 'Main description for the new test service appears here now', 'Inclusion for the new test services', 'Inclusion for the new test services', 1, 0, '2023-02-02 00:08:14', '2023-02-03 21:11:33'),
(24, 'Phone Repairs ', 'phone-repairs', 'The services meant for mobile phone repairs ', 7, 11, '800.00', NULL, NULL, '1675461993.jpg', '1675461993.jpg', 'For phone repairing ', '', '', 1, 0, '2023-02-03 21:06:33', '2023-02-03 21:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `slug`, `image`, `featured`, `created_at`, `updated_at`) VALUES
(3, 'Plumbing', 'plumbing', '1521969409.png', 1, NULL, '2023-01-20 14:40:18'),
(4, 'Electrical', 'electrical', '1521969419.png', 0, NULL, NULL),
(5, 'Shower Filter', 'shower-filter', '1521969430.png', 1, NULL, '2023-01-20 14:40:26'),
(6, 'Home Cleaning', 'home-cleaning', '1521969446.png', 1, NULL, '2023-01-20 14:40:32'),
(7, 'Carpentry', 'carpentry', '1521969454.png', 0, NULL, NULL),
(8, 'Pest Control', 'pest-control', '1521969464.png', 1, NULL, '2023-01-20 14:40:39'),
(9, 'Chimney Hob', 'chimney-hob', '1521969490.png', 1, NULL, '2023-01-20 14:40:51'),
(10, 'Water Purifier', 'water-purifier', '1521972593.png', 0, NULL, NULL),
(11, 'Computer Repair', 'computer-repair', '1673879265.png', 0, NULL, '2023-01-16 13:27:45'),
(12, 'TV', 'tv', '1521969522.png', 1, NULL, '2023-01-20 14:40:57'),
(13, 'Refrigerator', 'refrigerator', '1521969536.png', 0, NULL, NULL),
(14, 'Geyser', 'geyser', '1521969558.png', 1, NULL, '2023-01-20 14:41:03'),
(15, 'Car', 'car', '1521969576.png', 0, NULL, NULL),
(16, 'Document', 'document', '1521974355.png', 1, NULL, '2023-01-20 14:41:10'),
(17, 'Movers & Packers', 'movers-packers', '1521969599.png', 1, NULL, '2023-01-20 14:41:16'),
(18, 'Home Automation', 'home-automation', '1521969622.png', 0, NULL, NULL),
(19, 'Laundry', 'laundry', '1521972624.png', 1, NULL, '2023-01-20 14:41:22'),
(20, 'Painting', 'painting', '1521972643.png', 1, NULL, '2023-01-20 14:41:29'),
(22, 'Tiling', 'tiling', '1675156585.jpg', 1, '2023-01-31 08:13:39', '2023-01-31 08:16:25');

-- --------------------------------------------------------

--
-- Table structure for table `service_providers`
--

CREATE TABLE `service_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_locations` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_providers`
--

INSERT INTO `service_providers` (`id`, `user_id`, `image`, `about`, `city`, `service_category_id`, `service_locations`, `created_at`, `updated_at`) VALUES
(3, 7, '1675276323.jpg', 'It is me, the service provider', 'Abuja', 4, 'Abuja and Port Harcourt', '2023-02-01 17:17:37', '2023-02-01 17:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('KQ5H2KElbfPxtQgDu4iOV1flhe5gNdHMl42pqYIJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM1BtUVNLYnJKeHhHdVRIUGlGcFZqbU01UHZOaTJ1SlR5c1FHUmpqQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkUVdZc1QzNzhkVVF6eWI4bVpDYnZpT0tjVWtBUzBTalFvR2s4eTN1aE5jejZyUm9udm9XbmkiO30=', 1675465973);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'First Slider', '1674281072.jpg', 1, '2023-01-21 05:04:32', '2023-01-21 05:04:32'),
(3, 'A New Slider', '1674283700.jpg', 1, '2023-01-21 05:36:52', '2023-01-21 05:48:20');

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
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CST',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$QWYsT378dUQzyb8mZCbviOKcUkAS0SjQoGk8y3uhNcz6rRonvoWni', NULL, NULL, NULL, 'ADM', NULL, '2023-01-13 20:54:40', '2023-01-13 20:54:40'),
(7, 'Service Provider', 'servicep@gmail.com', NULL, '$2y$10$AdvT35.NSn/bi6RdwNvrFOKjQwiNqB/Qli9wsR45h.JcatmP7ZLrK', NULL, NULL, NULL, 'SVP', '9506948573', '2023-02-01 17:17:37', '2023-02-01 17:17:37'),
(8, 'Customer', 'customer@gmail.com', NULL, '$2y$10$YH0LPnfyE.g.gktuqDWM9uELXz/ERKF/DlZaragZY7Vma8LJdmjSa', NULL, NULL, NULL, 'CST', '9485738475', '2023-02-01 18:22:06', '2023-02-01 18:22:06'),
(9, 'New user', 'newuser@gmail.com', NULL, '$2y$10$b5A/.VAZ6HvTBPEG0KJGGehG6jasaGMj1e4XsnI2P24MrMUSFhNX2', NULL, NULL, NULL, 'CST', '9485768394', '2023-02-01 18:23:30', '2023-02-01 18:23:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`),
  ADD KEY `services_service_category_id_foreign` (`service_category_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_categories_slug_index` (`slug`);

--
-- Indexes for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_providers_user_id_foreign` (`user_id`),
  ADD KEY `service_providers_service_category_id_foreign` (`service_category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_providers`
--
ALTER TABLE `service_providers`
  ADD CONSTRAINT `service_providers_service_category_id_foreign` FOREIGN KEY (`service_category_id`) REFERENCES `service_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
