-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2021 at 10:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kubki-reklamowe`
--

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `voivodeship` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `admin_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`id`, `email`, `name`, `phone_number`, `website`, `street`, `city`, `postcode`, `voivodeship`, `enabled`, `admin_user_id`) VALUES
(1, 'biuro@moloh.pl', 'Moloh', '+48 71 798 13 88', 'http://www.moloh.pl', 'ul. Ułańska 48', 'Wrocław', '52-213', 'dolnoslaskie', 1, NULL),
(2, 'biuro@mega-media.com.pl', 'Mega-Media', '52 33 06 177', 'http://www.mega-media.com.pl', 'ul. Sienkiewicza 3', 'Świecie', '86-100', 'kujawsko-pomorskie', 1, NULL),
(3, 'biuro2@planetareklamy.eu', 'Planeta Reklamy', '+48 664 555 811', 'https://www.planetareklamy.eu', 'ul. Paryska 3/5', 'Łódź', '92-319', 'lodzkie', 1, NULL),
(4, 'biuro@awmarketing.eu', 'AW Marketing', '+48 693 876 929', 'http://www.awmarketing.eu', 'ul. Krokusowa 3', 'Łódź', '92-101', 'lodzkie', 0, NULL),
(5, 'agnieszka.warkocka@btlforms.com.pl', 'BTL Forms', '667 019 565', 'http://www.btlforms.com.pl', 'ul. Kołacińska 66', 'Warszawa', '03-171', 'mazowieckie', 1, NULL),
(6, 'darek.p@elwira.com.pl', 'Elwira', '22 622 90 81', 'https://www.elwira.com.pl', 'ul. Szara 14', 'Warszawa', '00-420', 'mazowieckie', 1, NULL),
(7, 'dnabywaniec@goldenberry.com.pl', 'Goldenberry Group', '+48 (22) 841 32 37', 'http://goldenberry.com.pl', 'ul. Transportowców 23', 'Warszawa', '02-858', 'mazowieckie', 1, NULL),
(8, 'maciej.wisniewski@imexgraf.pl', 'Imex Graf', '511 777 469', 'http://www.imexgraf.pl', 'ul. Jagiellońska 92', 'Warszawa', '00-992', 'mazowieckie', 0, NULL),
(9, 'aneta.kuch@ksr.com.pl', 'KSR', '22 59 64 300', 'http://www.krs.com.pl', 'ul. Jasna 1', 'Warszawa', '00-013', 'mazowieckie', 1, NULL),
(10, 'marek@sensumart.pl', 'Sensum Art.', '+48 22 616 07 22', 'https://sensumart.pl', 'ul. Grochowska 282/32', 'Warszawa', '03-841', 'mazowieckie', 1, NULL),
(11, 'marek.migda@silverbird.pl', 'Silverbird', '22 868 46 80', 'http://www.silverbird.pl', 'ul. Zagadki 21', 'Warszawa', '02-227', 'mazowieckie', 1, NULL),
(12, 'reklama@wiesta.pl', 'Wiesta', '22 724 00 65', 'http://www.wiesta.pl', 'ul. Orzeszkowej 4/6', 'Grodzisk Mazowiecki', '05-827', 'mazowieckie', 0, NULL),
(13, 'sara@prestige.soluma.pl', 'Prestige', '+48 530 936 003', 'https://www.prestige.soluma.pl', 'ul. Żurawia 13', 'Olsztyn', '11-041', 'warminsko-mazurskie', 1, NULL),
(14, 'biuro@tech-media.pl', 'Tech-Media', '22 122 13 00', 'https://www.tech-media.pl', 'ul. Złota 59', 'Warszawa', '00-120', 'mazowieckie', 1, NULL),
(15, 'b.nowakowski@tomascon.com.pl', 'Tomascon', '+48 (22) 824 40 88', 'http://www.tomascon.com.pl', 'ul. Racławicka 146', 'Warszawa', '02-117', 'mazowieckie', 1, NULL),
(16, 's.bac@medianord.pl', 'Media Nord', '58 781 51 01', 'http://www.medianord.pl', 'ul. Kotwiczna 24', 'Gdynia', '81-578', 'pomorskie', 1, NULL),
(17, 'fux@fux.pl', 'Fux', '(32) 273 18 60', 'http://www.fux.pl', 'ul. Bojkowska 37L', 'Gliwice', '44-100', 'slaskie', 1, NULL),
(18, 'pozytywnie@tubastudio.pl', 'Tubastudio', '512 125 550', 'https://www.tubastudio.pl', 'ul. Sławka 5/110', 'Katowice', '40-833', 'slaskie', 1, NULL),
(19, 'varius@varius.net.pl', 'Varius', '602 358 626', 'http://www.varius.net.pl', 'ul. Krakowska 201', 'Bielsko-Biała', '43-300', 'slaskie', 1, NULL),
(20, 'faktury@grupakarta.com', 'Grupa Karta', '61 22 33 250', 'http://www.grupakarta.pl', 'ul. Komunalna 5', 'Granowo', '62-066', 'wielkopolskie', 1, NULL),
(21, 'biuro@boragifts.pl', 'Bora', '', '', '', 'Warszawa', '', 'mazowieckie', 1, NULL),
(22, 'jacek@lemonart.com.pl', 'Lemon Art ', '', '', '', 'Poznań', '', 'wielkopolskie', 1, NULL),
(23, 'reklama@malamut.pl', 'Malamut', '', '', '', 'Warszawa', '', 'mazowieckie', 1, NULL),
(24, 'biuro@o2reklama.pl', 'O2', '', '', '', 'Leszno', '', 'wielkopolskie', 0, NULL),
(25, 'k.gajewska@papilliogroup.pl', 'Papillio', '', '', '', 'Zielona Góra', '', 'lubuskie', 1, NULL),
(26, 'b.lorych@pbspolska.pl', 'PBS Polska', '', '', '', 'Poznań', '', 'wielkopolskie', 1, NULL),
(28, 'sara@prestige.soluma.pl', 'Prestige', '', '', '', 'Warszawa', '', 'mazowieckie', 1, NULL),
(29, 'maciek@rewkom.com.pl', 'Rewkom', '', '', '', 'Lublin', '', 'lubelskie', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_block`
--

CREATE TABLE `bitbag_cms_block` (
  `id` int(11) NOT NULL,
  `code` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_block_channels`
--

CREATE TABLE `bitbag_cms_block_channels` (
  `block_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_block_products`
--

CREATE TABLE `bitbag_cms_block_products` (
  `block_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_block_sections`
--

CREATE TABLE `bitbag_cms_block_sections` (
  `block_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_block_translation`
--

CREATE TABLE `bitbag_cms_block_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `link` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_faq`
--

CREATE TABLE `bitbag_cms_faq` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_faq_channels`
--

CREATE TABLE `bitbag_cms_faq_channels` (
  `faq_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_faq_translation`
--

CREATE TABLE `bitbag_cms_faq_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `question` varchar(1500) COLLATE utf8_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_media`
--

CREATE TABLE `bitbag_cms_media` (
  `id` int(11) NOT NULL,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bitbag_cms_media`
--

INSERT INTO `bitbag_cms_media` (`id`, `code`, `type`, `path`, `mime_type`, `enabled`) VALUES
(48, 'dreampen', 'image', '/media/image/d1/b0/fa1178834e018fc72d889a76f9e9.png', 'image/png', 1),
(49, 'beoriginal', 'image', '/media/image/2a/ad/47b17a338eb8cd2a6ea1ccadca99.png', 'image/png', 1),
(50, 'adpen', 'image', '/media/image/38/34/0b085f9d2887f6a9a6dc76632204.png', 'image/png', 1),
(51, 'ritterpen', 'image', '/media/image/35/18/0b389f9e59b5cd104d505f93a940.png', 'image/png', 1),
(52, 'leccepen', 'image', '/media/image/17/03/1dde1dfe0125f2570632da30c182.png', 'image/png', 1),
(53, 'parker', 'image', '/media/image/85/49/e75a900461cc3f363974e374f0c5.png', 'image/png', 1),
(54, 'waterman', 'image', '/media/image/fa/1d/3dba903b2dadfb342002b2130189.png', 'image/png', 1),
(55, 'porceline', 'image', '/media/image/9f/3f/331ac73f4e7d70fa4e587b2452e9.png', 'image/png', 1),
(56, 'citron', 'image', '/media/image/9e/63/8786a14e921faa3cec84cd78a650.png', 'image/png', 1),
(57, 'upominki', 'image', '/media/image/5e/94/51626b004c02ba9192870e9a0fe6.png', 'image/png', 1),
(58, 'kando', 'image', '/media/image/6f/7a/370ce53f5dd89da74057ea35b4e3.png', 'image/png', 1),
(59, 'ies', 'image', '/media/image/93/82/b3541214a7219bd0ee1e96c0e099.png', 'image/png', 1),
(60, 'headwear', 'image', '/media/image/b5/85/7112024f4f59e5ffe70a6f3944dc.png', 'image/png', 1),
(61, 'awih', 'image', '/media/image/8d/b2/491b7e260e03ea45ae01b9891cf4.png', 'image/png', 1),
(62, 'thinkme', 'image', '/media/image/82/13/1fd1714639db481d1bbac00d8720.png', 'image/png', 1),
(63, 'notedeco', 'image', '/media/image/e7/5a/d552fb77368f89b2285f119c9660.png', 'image/png', 1),
(64, 'graph', 'image', '/media/image/63/50/9620e43d8f051ea280f6dd95b62d.png', 'image/png', 1),
(65, 'guapa', 'image', '/media/image/0a/9c/1c4dca78f56238c3770c066acc79.png', 'image/png', 1),
(66, 'about', 'image', '/media/image/64/ff/b9a3f6dfb16e9f1fff461f2dfac7.jpeg', 'image/jpeg', 1),
(67, 'about_image_1', 'image', '/media/image/b4/cf/33675baed77cf8525ecb71ae1dbe.jpeg', 'image/jpeg', 1),
(68, 'roll_up', 'image', '/media/image/ee/3e/34e3d20b982767dd34565ed99efb.jpeg', 'image/jpeg', 1),
(69, 'Chrysanthemum', 'image', '/media/image/96/e1/469a159ad08194c2382ca3d8fad9.jpeg', 'image/jpeg', 1),
(70, 'images', 'image', '/media/image/ad/99/d01cdc51e479403c17872638833b.jpeg', 'image/jpeg', 1),
(71, 'marketing_szeptany_zdalny_outsourcing', 'image', '/media/image/28/fa/fcd11e1cc41e57f076d38612aae3.jpeg', 'image/jpeg', 1),
(72, 'marketing_szeptany_estartupy', 'image', '/media/image/62/a0/5a08eb7ded138091f8b69a51460a.png', 'image/png', 1),
(73, 'marketing_szeptany_estartupy_image_1', 'image', '/media/image/da/6a/700fbca84563ca95a09e0692525b.png', 'image/png', 1),
(74, 'marketing_szeptany_estartupy_image_1_image_2', 'image', '/media/image/9c/b2/999be017906267ffefdd63e52f80.png', 'image/png', 1),
(75, 'marketing_szeptany_zdalny_outsourcing_image_1', 'image', '/media/image/1b/9e/9a6dbd854d04dcd6b4ffdb01332c.jpeg', 'image/jpeg', 1),
(76, 'marketing_szeptany_estartupy_image_1_image_2_image_3', 'image', '/media/image/1d/3d/d2dbd315d6c9a34ec1ac10f55ba6.png', 'image/png', 1),
(77, 'marketing_szeptany_estartupy_image_1_image_2_image_3_image_4', 'image', '/media/image/f4/c0/ad68c13336d9e8b11959bb6684f2.png', 'image/png', 1),
(78, 'marketing_szeptany_estartupy_image_1_image_2_image_3_image_4_image_5', 'image', '/media/image/08/f4/9ef1b7cfab7d970500b42b84de2a.png', 'image/png', 1),
(79, 'korzysci_z_marketingu_szeptanego', 'image', '/media/image/3d/3c/91f1f84a446b7f7908e4a9c1ba8f.png', 'image/png', 1),
(80, 'marketing_szeptany_estartupy_image_1_image_2_image_3_image_4_image_5_image_6', 'image', '/media/image/58/58/2839d7939f1a74052ba8f633fced.png', 'image/png', 1),
(81, 'marketing_szeptany_zdalny_outsourcing_image_1_image_2', 'image', '/media/image/46/79/b7537e8010a389919febd2d744e6.jpeg', 'image/jpeg', 1),
(82, 'bannertest', 'image', '/media/image/84/05/7972936d68e3bf509aae39da9a3e.jpeg', 'image/jpeg', 1),
(83, 'marketing_szeptany_estartupy_image_1_image_2_image_3_image_4_image_5_image_6_image_7', 'image', '/media/image/f1/80/433532f2209dd998b84868924ff3.png', 'image/png', 1),
(84, 'bannertest_image_1', 'image', '/media/image/39/0f/a9f1522c092988da7541b4fa3468.jpeg', 'image/jpeg', 1),
(85, 'marketing_szeptany_definicja', 'image', '/media/image/e7/07/4dbe105e2c83a05b6216a3881ec0.png', 'image/png', 1),
(86, '5465_530_0_1_5e86c187e7__marketing2', 'image', '/media/image/c1/f1/85d1477559eca8f4270c3585729d.jpeg', 'image/jpeg', 1),
(87, 'bannertest_image_1_image_2', 'image', '/media/image/69/c2/ab19b77bda8d37484cc5de35a587.jpeg', 'image/jpeg', 1),
(88, 'marketing_szeptany_estartupy_image_1_image_2_image_3_image_4_image_5_image_6_image_7_image_8', 'image', '/media/image/07/a5/7f4334bd84e7c8c8c56747f2ac83.png', 'image/png', 1),
(89, 'marketing_szeptany_zdalny_outsourcing_image_1_image_2_image_3', 'image', '/media/image/be/87/4f43169cc361f0b0812d1f25427e.jpeg', 'image/jpeg', 1),
(90, 'szepty', 'image', '/media/image/54/86/070165b5167576527598e2596c35.png', 'image/png', 1),
(91, 'marketing_szeptany_zdalny_outsourcing_image_1_image_2_image_3_image_4', 'image', '/media/image/4c/d8/df39c49603435a617a454bcc729a.jpeg', 'image/jpeg', 1),
(92, 'indeks', 'image', '/media/image/80/b8/ad040bebc017579c0b4a3cc3f232.png', 'image/png', 1),
(93, 'ważne', 'image', '/media/image/16/18/384f685ebc369a123bee5d65f6c2.png', 'image/png', 1),
(94, 'ważne_image_1', 'image', '/media/image/4e/28/b0cc998f087825c80a9d5a8302d7.png', 'image/png', 1),
(95, 'Bez tytułu', 'image', '/media/image/c5/c8/863b65cc79d68abfe5a2b74bb331.png', 'image/png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_media_channels`
--

CREATE TABLE `bitbag_cms_media_channels` (
  `block_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_media_products`
--

CREATE TABLE `bitbag_cms_media_products` (
  `media_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_media_sections`
--

CREATE TABLE `bitbag_cms_media_sections` (
  `media_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_media_translation`
--

CREATE TABLE `bitbag_cms_media_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `alt` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_page`
--

CREATE TABLE `bitbag_cms_page` (
  `id` int(11) NOT NULL,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bitbag_cms_page`
--

INSERT INTO `bitbag_cms_page` (`id`, `code`, `enabled`, `created_at`, `updated_at`) VALUES
(1, 'about', 1, '2019-01-04 10:40:33', '2019-01-04 10:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_page_channels`
--

CREATE TABLE `bitbag_cms_page_channels` (
  `page_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bitbag_cms_page_channels`
--

INSERT INTO `bitbag_cms_page_channels` (`page_id`, `channel_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_page_image`
--

CREATE TABLE `bitbag_cms_page_image` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_page_products`
--

CREATE TABLE `bitbag_cms_page_products` (
  `page_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_page_sections`
--

CREATE TABLE `bitbag_cms_page_sections` (
  `block_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_page_translation`
--

CREATE TABLE `bitbag_cms_page_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_when_linked` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_when_linked` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(5000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bitbag_cms_page_translation`
--

INSERT INTO `bitbag_cms_page_translation` (`id`, `translatable_id`, `slug`, `name`, `breadcrumb`, `name_when_linked`, `description_when_linked`, `meta_keywords`, `meta_description`, `content`, `locale`) VALUES
(1, 1, 'o-nas', 'O nas', 'O nas', NULL, NULL, NULL, NULL, '<p>&nbsp;&nbsp;&nbsp; Z dumą stwierdzamy, że niemal każdy nasz dzień zaczynamy od kubka. Pomaga nam on wypędzić spod powiek resztki snu. P&oacute;źniej, gdy praca wypełnia nas po brzegi, ukojenie znajdujemy zn&oacute;w w kubku. Daje chwilowe oderwanie od wiru spraw do załatwienia. Do obiadu serwujemy sobie kolejny kubek i na koniec pracy r&oacute;wnież kubek. A wiele z rzeczy pomiędzy kubkami też jest kubkami, bo kubki to nasza praca!</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.tech-media.pl/photos/oasis,butelka,ze,stali,nierdzewnej,540,ml.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Jesteśmy agencją reklamową, kt&oacute;ra od 2001 roku istnieje na rynku. Gdy zauważyliśmy, że tak dużym zainteresowaniem cieszą się kubki reklamowe, dla wygody naszych klient&oacute;w wyodrębniliśmy je spośr&oacute;d całej oferty gadżet&oacute;w reklamowych, tworząc to oto miejsce w sieci.<br />\r\nKubki, butelki czy bidony reklamowe, to tak szeroki temat, że m&oacute;gł stracić na wyrazistości w gąszczu innych produkt&oacute;w. Aby nikt nie przegapił potencjału naszych perełek, serwujemy je wprost pod wymagające oczy Gości na naszej stronie. W razie pytań, uwag czy wątpliwości &ndash; służymy pomocą!</p>\r\n\r\n<p>&nbsp;</p>', 'pl_PL');

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_section`
--

CREATE TABLE `bitbag_cms_section` (
  `id` int(11) NOT NULL,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitbag_cms_section_translation`
--

CREATE TABLE `bitbag_cms_section_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `content`, `date`) VALUES
(1, 'sad', 'asd', 'asd', 'Prośba o kontakt.', '2019-09-09 11:48:16'),
(2, 'dsadsa', 'asdsdadsa', 'qadasdsda', 'dsadasdsa', '2019-09-09 13:19:58'),
(3, 'super firma', '505505505', 'asd@asd.asd', 'witam chcialbym kupic komputer', '2019-09-09 13:30:26'),
(4, 'asd', 'asd', 'asd', 'Prośba o kontakt.', '2019-09-10 08:58:49'),
(5, 'sadsda', 'sdadsasda', 'sdasdasdasda', 'Prośba o kontakt.', '2019-09-10 09:01:16'),
(6, 'sad', 'asdassa', 'asd', 'Prośba o kontakt.', '2019-09-10 09:02:03'),
(7, 'asd', 'asd', 'asd', 'Prośba o kontakt.', '2019-09-10 09:05:01'),
(8, 'asd', 'asd', 'asd', 'Prośba o kontakt.', '2019-09-10 09:07:50'),
(9, 'asd', 'asd', 'asd', 'Prośba o kontakt.', '2019-09-10 09:09:52'),
(10, 'asd', 'asd', 'asd@asd.asd', 'Prośba o kontakt.', '2019-09-10 09:11:37'),
(11, 'mlekovita', '505550050', 'asd@asd.asd', 'witam chcialbym kupic krowe', '2019-09-10 09:44:00'),
(12, 'mlekovita', '505505505', 'asd@asd.asd', 'lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum', '2019-09-10 09:47:00'),
(13, 'mlekovita', '54040040', 'sad@SAasdsda.sadads', 'super fajnie witam panstwa', '2019-09-10 09:49:02'),
(14, 'asdsda', 'asdsda', 'asdsdadsa', 'sdadsasda', '2019-09-10 09:53:47'),
(15, 'Mlekovita', '505505505', 'asd@asd.asd', 'Witam chciałbym kupic kubek w ksztalcie krowy', '2019-09-10 09:56:27'),
(16, 'asd', '54040040', 'asd@asd.asd', 'sadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsasadsdasdadsasdasda sads asda sa  sda ds dsa', '2019-09-10 09:59:25'),
(17, 'Jan', '+48 250 250 250', 'jan@gmail.com', 'Prośba o kontakt.', '2019-09-10 10:01:39'),
(18, 'Mlekovita', '+48 250 250 250', 'kontakt@mlekovita.pl', 'Dziendobry chciałbym kupić fajny kubek', '2019-09-10 10:03:07'),
(19, 'Jan Kowalski', '505505505', 'asd@asd.asd', 'Prośba o kontakt.', '2019-09-10 10:11:34'),
(20, 'Mlekovita', '505505505', 'asd@asd.asd', 'Dzien dobry chcialbym kupic kubek', '2019-09-10 10:12:04'),
(21, 'PPpppp', '010102232', 'asdewq@wed.pl', 'Prośba o kontakt.', '2021-06-08 11:17:00'),
(22, 'fsdafad', '123123123', 'siema@example.com', 'Prośba o kontakt.', '2021-08-13 13:30:15'),
(23, 'fsdafad', '123123123', 'siema@example.com', 'wiadomość tu właśniej est wysyłąa aa niapoisdf mipojsd faionjsd fsdf sfd srfesddfsdsdsffdssdffdssd f', '2021-08-13 13:32:48'),
(24, 'fsdafad', '123123123', 'siema@example.com', 'Prośba o kontakt.', '2021-08-16 13:45:39'),
(25, 'fsdafad', '123123123', 'siema@example.com', 'Poproszę o kontaktz krową', '2021-08-16 13:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `taxon_id` int(11) DEFAULT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `taxon_id`, `configuration`) VALUES
(1, 18, 'a:2:{i:0;i:2;i:1;i:3;}');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `admin_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `email`, `name`, `enabled`, `admin_user_id`) VALUES
(1, 'mkostyla@happygifts.eu', 'Happy Gifts', 1, NULL),
(2, 'mlibera@dreampen.pl', 'Dream Pen', 1, NULL),
(3, 'julia.dolatowska@odblaski24.com.pl', 'Kando Plus', 0, NULL),
(4, 'maciej.poprawski@maxim.com.pl', 'Maxim Ceramics', 1, NULL),
(5, 'sylwia.roj@ritter-pen.pl', 'Ritter Pen', 1, NULL),
(6, 'm.malczynski@exitogroup.pl', 'Exito Group', 1, NULL),
(7, 'jj@notesy.pl', 'Notedeco', 1, NULL),
(8, 'm.owczarska@citron.pl', 'Citron Group', 1, NULL),
(9, 'ies@iespolska.pl', 'IES Polska', 0, NULL),
(10, 'marcin@headwear.com.pl', 'Headwear', 1, NULL),
(11, 'marketing@awih.com.pl', 'AWIH', 1, NULL),
(12, 'martyna.s@slodkieupominki.pl', 'Słodkie Upominki', 1, NULL),
(13, 'jacek@guapa.pl', 'Guapa', 1, NULL),
(14, 'magda@telegraph.com.pl', 'Telegraph', 1, NULL),
(15, 'biuro@prokres.pl', 'Newell Poland', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20170912085504'),
('20170913125128'),
('20171003103916'),
('20180102140039'),
('20190205101340'),
('20190205131744'),
('20190206092036'),
('20190208103243'),
('20190211134846'),
('20190212084718'),
('20190212124742'),
('20190214143231'),
('20190430101832'),
('20190430104406'),
('20190506085855'),
('20190906072052'),
('20190909094603'),
('20210728080811'),
('20210728094618'),
('20210729085900'),
('20210729104302'),
('20210729112047'),
('20210730071643'),
('20210802071908'),
('20210804080216'),
('20210804085708'),
('20210812090509'),
('20210812133024'),
('20210819070046'),
('20210915100010'),
('20210924064212'),
('20210924070943'),
('20210925111335'),
('20210927172123'),
('20210927172404'),
('20210927173639');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`product_id`, `tag_id`) VALUES
(1, 7),
(7, 7),
(7, 8),
(7, 9),
(7, 14),
(14, 7),
(31, 7),
(31, 8),
(31, 9),
(31, 14),
(31, 21),
(36, 7),
(36, 14);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_address`
--

CREATE TABLE `sylius_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_address`
--

INSERT INTO `sylius_address` (`id`, `customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `company`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`) VALUES
(1, 59, 'Jan', 'kowalski', '', '', '', '', '', '2019-09-12 14:25:19', '2019-09-12 14:25:19', 'PL', NULL, NULL),
(2, 59, 'Jan', 'kowalski', '', '', '', '', '', '2019-09-12 14:25:19', '2019-09-12 14:25:19', 'PL', NULL, NULL),
(3, 61, 'Anna', 'Dyńka', '', '', '', '', '', '2021-05-10 11:41:06', '2021-05-10 11:41:06', 'PL', NULL, NULL),
(4, 61, 'Anna', 'Dyńka', '', '', '', '', '', '2021-05-10 11:41:06', '2021-05-10 11:41:06', 'PL', NULL, NULL),
(5, 61, 'Anna', 'Dyńka', '', '', '', '', '', '2021-05-10 11:41:06', '2021-05-10 11:41:06', 'PL', NULL, NULL),
(6, 62, 'asdasd', '', '111222333', '', 'asdas', 'asdsad', '', '2021-07-12 10:32:33', '2021-07-12 10:32:33', 'PL', NULL, NULL),
(7, 62, 'asdasd', '', '111222333', '', 'asdas', 'asdsad', '', '2021-07-12 10:32:33', '2021-07-12 10:32:33', 'PL', NULL, NULL),
(8, 62, 'asdasd', '', '111222333', '', 'asdas', 'asdsad', '', '2021-07-12 10:32:33', '2021-07-12 10:32:33', 'PL', NULL, NULL),
(9, 62, 'asdf', '', '', '', '', '', '', '2021-07-12 11:43:52', '2021-07-12 11:43:52', 'PL', NULL, NULL),
(10, 62, 'asdf', '', '', '', '', '', '', '2021-07-12 11:43:52', '2021-07-12 11:43:52', 'PL', NULL, NULL),
(11, 62, 'asdf', '', '', '', '', '', '', '2021-07-12 12:05:36', '2021-07-12 12:05:36', 'PL', NULL, NULL),
(12, 62, 'asdf', '', '', '', '', '', '', '2021-07-12 12:05:36', '2021-07-12 12:05:36', 'PL', NULL, NULL),
(13, 62, 'SDFG', '', '', '', '', '', '', '2021-07-12 12:10:05', '2021-07-12 12:10:05', 'PL', NULL, NULL),
(14, 62, 'SDFG', '', '', '', '', '', '', '2021-07-12 12:10:05', '2021-07-12 12:10:05', 'PL', NULL, NULL),
(15, 62, 'a', '', '', '', '', '', '', '2021-07-12 12:11:02', '2021-07-12 12:11:02', 'PL', NULL, NULL),
(16, 62, 'a', '', '', '', '', '', '', '2021-07-12 12:11:02', '2021-07-12 12:11:02', 'PL', NULL, NULL),
(17, 62, 'lnkmki', '', '', '', '', '', '', '2021-07-12 12:14:17', '2021-07-12 12:14:17', 'PL', NULL, NULL),
(18, 62, 'lnkmki', '', '', '', '', '', '', '2021-07-12 12:14:17', '2021-07-12 12:14:17', 'PL', NULL, NULL),
(19, 62, 'njkg', '', '', '', '', '', '', '2021-07-12 12:17:25', '2021-07-12 12:17:25', 'PL', NULL, NULL),
(20, 62, 'njkg', '', '', '', '', '', '', '2021-07-12 12:17:25', '2021-07-12 12:17:25', 'PL', NULL, NULL),
(21, 62, 'Witam', '', '', '', '', '', '', '2021-07-16 10:55:01', '2021-07-16 10:55:01', 'PL', NULL, NULL),
(22, 62, 'Witam', '', '', '', '', '', '', '2021-07-16 10:55:01', '2021-07-16 10:55:01', 'PL', NULL, NULL),
(23, 63, 'dsfgdf', '', '', '', '', '', '', '2021-07-26 11:58:50', '2021-07-26 11:58:50', 'PL', NULL, NULL),
(24, 63, 'dsfgdf', '', '', '', '', '', '', '2021-07-26 11:58:50', '2021-07-26 11:58:50', 'PL', NULL, NULL),
(25, 63, 'dsfgdf', '', '', '', '', '', '', '2021-07-26 11:58:50', '2021-07-26 11:58:50', 'PL', NULL, NULL),
(26, 64, 'dgfhgdfgfd', '', '', '', '', '', '', '2021-07-26 12:00:22', '2021-07-26 12:00:22', 'PL', NULL, NULL),
(27, 64, 'dgfhgdfgfd', '', '', '', '', '', '', '2021-07-26 12:00:22', '2021-07-26 12:00:22', 'PL', NULL, NULL),
(28, 64, 'dgfhgdfgfd', '', '', '', '', '', '', '2021-07-26 12:00:22', '2021-07-26 12:00:22', 'PL', NULL, NULL),
(29, 62, 'dfgdf', '', '11222333', '', 'VAThole industries', 'Siedlce', '', '2021-07-26 12:08:43', '2021-07-26 12:08:43', 'PL', NULL, NULL),
(30, 62, 'dfgdf', '', '11222333', '', 'VAThole industries', 'Siedlce', '', '2021-07-26 12:08:43', '2021-07-26 12:08:43', 'PL', NULL, NULL),
(31, 67, 'Imie', 'i', '', '', '', '', '', '2021-07-28 15:25:28', '2021-07-28 15:25:28', 'PL', NULL, NULL),
(32, 67, 'Imie', 'i', '', '', '', '', '', '2021-07-28 15:25:28', '2021-07-28 15:25:28', 'PL', NULL, NULL),
(33, 67, 'Imie', 'i', '', '', '', '', '', '2021-07-28 15:25:28', '2021-07-28 15:25:28', 'PL', NULL, NULL),
(34, 64, 'dsfgdfs', '', '', '', '', '', '', '2021-07-29 10:42:52', '2021-07-29 10:42:53', 'PL', NULL, NULL),
(35, 64, 'dsfgdfs', '', '', '', '', '', '', '2021-07-29 10:42:52', '2021-07-29 10:42:53', 'PL', NULL, NULL),
(36, 68, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-11 15:20:58', '2021-08-11 15:20:58', 'PL', NULL, NULL),
(37, 68, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-11 15:20:58', '2021-08-11 15:20:58', 'PL', NULL, NULL),
(38, 68, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-11 15:20:58', '2021-08-11 15:20:58', 'PL', NULL, NULL),
(39, 69, 'ghfhfgfghhgf', '', '', '', '', '', '', '2021-08-11 15:26:58', '2021-08-11 15:26:58', 'PL', NULL, NULL),
(40, 69, 'ghfhfgfghhgf', '', '', '', '', '', '', '2021-08-11 15:26:58', '2021-08-11 15:26:58', 'PL', NULL, NULL),
(41, 69, 'ghfhfgfghhgf', '', '', '', '', '', '', '2021-08-11 15:26:58', '2021-08-11 15:26:58', 'PL', NULL, NULL),
(42, 70, 'gfgfgfhfgh', '', '', '', '', '', '', '2021-08-11 15:28:41', '2021-08-11 15:28:41', 'PL', NULL, NULL),
(43, 70, 'gfgfgfhfgh', '', '', '', '', '', '', '2021-08-11 15:28:41', '2021-08-11 15:28:41', 'PL', NULL, NULL),
(44, 70, 'gfgfgfhfgh', '', '', '', '', '', '', '2021-08-11 15:28:41', '2021-08-11 15:28:41', 'PL', NULL, NULL),
(45, 70, 'dgf', '', '', '', '', '', '', '2021-08-11 15:29:57', '2021-08-11 15:29:57', 'PL', NULL, NULL),
(46, 70, 'dgf', '', '', '', '', '', '', '2021-08-11 15:29:57', '2021-08-11 15:29:57', 'PL', NULL, NULL),
(47, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 08:56:59', '2021-08-12 08:56:59', 'PL', NULL, NULL),
(48, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 08:56:59', '2021-08-12 08:56:59', 'PL', NULL, NULL),
(49, 70, 'fggh', '', '', '', '', '', '', '2021-08-12 09:04:25', '2021-08-12 09:04:25', 'PL', NULL, NULL),
(50, 70, 'fggh', '', '', '', '', '', '', '2021-08-12 09:04:25', '2021-08-12 09:04:25', 'PL', NULL, NULL),
(51, 62, 'rweeeee', '', '', '', '', '', '', '2021-08-12 09:05:40', '2021-08-12 09:05:40', 'PL', NULL, NULL),
(52, 62, 'rweeeee', '', '', '', '', '', '', '2021-08-12 09:05:40', '2021-08-12 09:05:40', 'PL', NULL, NULL),
(53, 70, 'gcghjhjghjg', '', '', '', '', '', '', '2021-08-12 09:07:22', '2021-08-12 09:07:22', 'PL', NULL, NULL),
(54, 70, 'gcghjhjghjg', '', '', '', '', '', '', '2021-08-12 09:07:22', '2021-08-12 09:07:22', 'PL', NULL, NULL),
(55, 70, 'sdf', '', '', '', '', '', '', '2021-08-12 09:08:13', '2021-08-12 09:08:13', 'PL', NULL, NULL),
(56, 70, 'sdf', '', '', '', '', '', '', '2021-08-12 09:08:13', '2021-08-12 09:08:13', 'PL', NULL, NULL),
(57, 70, 'asdf', '', '', '', '', '', '', '2021-08-12 09:10:56', '2021-08-12 09:10:56', 'PL', NULL, NULL),
(58, 70, 'asdf', '', '', '', '', '', '', '2021-08-12 09:10:56', '2021-08-12 09:10:56', 'PL', NULL, NULL),
(59, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:11:51', '2021-08-12 09:11:51', 'PL', NULL, NULL),
(60, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:11:51', '2021-08-12 09:11:51', 'PL', NULL, NULL),
(61, 70, 'gdhhjgdghfg', '', '', '', '', '', '', '2021-08-12 09:15:33', '2021-08-12 09:15:33', 'PL', NULL, NULL),
(62, 70, 'gdhhjgdghfg', '', '', '', '', '', '', '2021-08-12 09:15:33', '2021-08-12 09:15:33', 'PL', NULL, NULL),
(63, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:17:12', '2021-08-12 09:17:12', 'PL', NULL, NULL),
(64, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:17:12', '2021-08-12 09:17:12', 'PL', NULL, NULL),
(65, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:20:09', '2021-08-12 09:20:09', 'PL', NULL, NULL),
(66, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:20:09', '2021-08-12 09:20:09', 'PL', NULL, NULL),
(67, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:21:39', '2021-08-12 09:21:39', 'PL', NULL, NULL),
(68, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:21:39', '2021-08-12 09:21:39', 'PL', NULL, NULL),
(69, 70, 'dsfgdfs', '', '', '', '', '', '', '2021-08-12 09:24:09', '2021-08-12 09:24:09', 'PL', NULL, NULL),
(70, 70, 'dsfgdfs', '', '', '', '', '', '', '2021-08-12 09:24:09', '2021-08-12 09:24:09', 'PL', NULL, NULL),
(71, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 09:30:16', '2021-08-12 09:30:17', 'PL', NULL, NULL),
(72, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 09:30:16', '2021-08-12 09:30:17', 'PL', NULL, NULL),
(73, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:31:08', '2021-08-12 09:31:08', 'PL', NULL, NULL),
(74, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:31:08', '2021-08-12 09:31:08', 'PL', NULL, NULL),
(75, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 09:32:10', '2021-08-12 09:32:10', 'PL', NULL, NULL),
(76, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 09:32:10', '2021-08-12 09:32:10', 'PL', NULL, NULL),
(77, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:35:24', '2021-08-12 09:35:24', 'PL', NULL, NULL),
(78, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:35:24', '2021-08-12 09:35:24', 'PL', NULL, NULL),
(79, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:37:37', '2021-08-12 09:37:37', 'PL', NULL, NULL),
(80, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:37:37', '2021-08-12 09:37:37', 'PL', NULL, NULL),
(81, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:39:10', '2021-08-12 09:39:10', 'PL', NULL, NULL),
(82, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:39:10', '2021-08-12 09:39:10', 'PL', NULL, NULL),
(83, 62, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:40:16', '2021-08-12 09:40:16', 'PL', NULL, NULL),
(84, 62, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:40:16', '2021-08-12 09:40:16', 'PL', NULL, NULL),
(85, 62, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:42:00', '2021-08-12 09:42:00', 'PL', NULL, NULL),
(86, 62, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:42:00', '2021-08-12 09:42:00', 'PL', NULL, NULL),
(87, 62, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:52:39', '2021-08-12 09:52:39', 'PL', NULL, NULL),
(88, 62, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:52:39', '2021-08-12 09:52:39', 'PL', NULL, NULL),
(89, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:59:54', '2021-08-12 09:59:54', 'PL', NULL, NULL),
(90, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 09:59:54', '2021-08-12 09:59:54', 'PL', NULL, NULL),
(91, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:01:39', '2021-08-12 10:01:39', 'PL', NULL, NULL),
(92, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:01:39', '2021-08-12 10:01:39', 'PL', NULL, NULL),
(93, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:05:46', '2021-08-12 10:05:46', 'PL', NULL, NULL),
(94, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:05:46', '2021-08-12 10:05:46', 'PL', NULL, NULL),
(95, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:07:55', '2021-08-12 10:07:55', 'PL', NULL, NULL),
(96, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:07:55', '2021-08-12 10:07:55', 'PL', NULL, NULL),
(97, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:11:25', '2021-08-12 10:11:25', 'PL', NULL, NULL),
(98, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:11:25', '2021-08-12 10:11:25', 'PL', NULL, NULL),
(99, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:13:06', '2021-08-12 10:13:06', 'PL', NULL, NULL),
(100, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:13:06', '2021-08-12 10:13:06', 'PL', NULL, NULL),
(101, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:14:53', '2021-08-12 10:14:53', 'PL', NULL, NULL),
(102, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:14:53', '2021-08-12 10:14:53', 'PL', NULL, NULL),
(103, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:16:00', '2021-08-12 10:16:00', 'PL', NULL, NULL),
(104, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:16:00', '2021-08-12 10:16:00', 'PL', NULL, NULL),
(105, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:17:57', '2021-08-12 10:17:57', 'PL', NULL, NULL),
(106, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:17:57', '2021-08-12 10:17:57', 'PL', NULL, NULL),
(107, 62, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 10:22:08', '2021-08-12 10:22:08', 'PL', NULL, NULL),
(108, 62, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 10:22:08', '2021-08-12 10:22:08', 'PL', NULL, NULL),
(109, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:27:05', '2021-08-12 10:27:05', 'PL', NULL, NULL),
(110, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:27:05', '2021-08-12 10:27:05', 'PL', NULL, NULL),
(111, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:28:41', '2021-08-12 10:28:41', 'PL', NULL, NULL),
(112, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:28:41', '2021-08-12 10:28:41', 'PL', NULL, NULL),
(113, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:32:26', '2021-08-12 10:32:26', 'PL', NULL, NULL),
(114, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:32:26', '2021-08-12 10:32:26', 'PL', NULL, NULL),
(115, 62, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:34:03', '2021-08-12 10:34:03', 'PL', NULL, NULL),
(116, 62, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:34:03', '2021-08-12 10:34:03', 'PL', NULL, NULL),
(117, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:35:39', '2021-08-12 10:35:39', 'PL', NULL, NULL),
(118, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:35:39', '2021-08-12 10:35:39', 'PL', NULL, NULL),
(119, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:38:52', '2021-08-12 10:38:52', 'PL', NULL, NULL),
(120, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:38:52', '2021-08-12 10:38:52', 'PL', NULL, NULL),
(121, 70, 'Szymon', 'Mlonek', '111222333', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 10:41:28', '2021-08-12 10:41:28', 'PL', NULL, NULL),
(122, 70, 'Szymon', 'Mlonek', '111222333', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 10:41:28', '2021-08-12 10:41:28', 'PL', NULL, NULL),
(123, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:43:10', '2021-08-12 10:43:10', 'PL', NULL, NULL),
(124, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 10:43:10', '2021-08-12 10:43:10', 'PL', NULL, NULL),
(125, 71, 'uky', '', '554', '', 'yukyuk', 'yukyuk', '', '2021-08-12 10:50:58', '2021-08-12 10:50:58', 'PL', NULL, NULL),
(126, 71, 'uky', '', '554', '', 'yukyuk', 'yukyuk', '', '2021-08-12 10:50:58', '2021-08-12 10:50:58', 'PL', NULL, NULL),
(127, 71, 'uky', '', '554', '', 'yukyuk', 'yukyuk', '', '2021-08-12 10:50:58', '2021-08-12 10:50:58', 'PL', NULL, NULL),
(128, 72, 'jkl.jk.j', '', '54635356', '', 'jkjj', 'ghjghjg', '', '2021-08-12 10:53:29', '2021-08-12 10:53:29', 'PL', NULL, NULL),
(129, 72, 'jkl.jk.j', '', '54635356', '', 'jkjj', 'ghjghjg', '', '2021-08-12 10:53:29', '2021-08-12 10:53:29', 'PL', NULL, NULL),
(130, 72, 'jkl.jk.j', '', '54635356', '', 'jkjj', 'ghjghjg', '', '2021-08-12 10:53:29', '2021-08-12 10:53:29', 'PL', NULL, NULL),
(131, 73, 'm', 'nm,', '6856', '', 'nm,nm,', 'nm,nm,n', '', '2021-08-12 10:55:35', '2021-08-12 10:55:36', 'PL', NULL, NULL),
(132, 73, 'm', 'nm,', '6856', '', 'nm,nm,', 'nm,nm,n', '', '2021-08-12 10:55:35', '2021-08-12 10:55:36', 'PL', NULL, NULL),
(133, 73, 'm', 'nm,', '6856', '', 'nm,nm,', 'nm,nm,n', '', '2021-08-12 10:55:35', '2021-08-12 10:55:36', 'PL', NULL, NULL),
(134, 74, 'uyuy', '', '757578', '', 'yuiyui', 'yuiyu', '', '2021-08-12 10:58:03', '2021-08-12 10:58:03', 'PL', NULL, NULL),
(135, 74, 'uyuy', '', '757578', '', 'yuiyui', 'yuiyu', '', '2021-08-12 10:58:03', '2021-08-12 10:58:03', 'PL', NULL, NULL),
(136, 74, 'uyuy', '', '757578', '', 'yuiyui', 'yuiyu', '', '2021-08-12 10:58:03', '2021-08-12 10:58:03', 'PL', NULL, NULL),
(137, 75, 'hjl,hlh', '', '535635', '', 'hjkhjk', 'hjkhjhk', '', '2021-08-12 10:59:26', '2021-08-12 10:59:26', 'PL', NULL, NULL),
(138, 75, 'hjl,hlh', '', '535635', '', 'hjkhjk', 'hjkhjhk', '', '2021-08-12 10:59:26', '2021-08-12 10:59:26', 'PL', NULL, NULL),
(139, 75, 'hjl,hlh', '', '535635', '', 'hjkhjk', 'hjkhjhk', '', '2021-08-12 10:59:26', '2021-08-12 10:59:26', 'PL', NULL, NULL),
(140, 76, 'rgdrgre', '', '5785', '', 'i76yui67', '67i67i', '', '2021-08-12 11:02:47', '2021-08-12 11:02:47', 'PL', NULL, NULL),
(141, 76, 'rgdrgre', '', '5785', '', 'i76yui67', '67i67i', '', '2021-08-12 11:02:47', '2021-08-12 11:02:47', 'PL', NULL, NULL),
(142, 76, 'rgdrgre', '', '5785', '', 'i76yui67', '67i67i', '', '2021-08-12 11:02:47', '2021-08-12 11:02:47', 'PL', NULL, NULL),
(143, 77, 'rytryrtyr', '', '', '', '', '', '', '2021-08-12 11:07:04', '2021-08-12 11:07:04', 'PL', NULL, NULL),
(144, 77, 'rytryrtyr', '', '', '', '', '', '', '2021-08-12 11:07:04', '2021-08-12 11:07:04', 'PL', NULL, NULL),
(145, 77, 'rytryrtyr', '', '', '', '', '', '', '2021-08-12 11:07:04', '2021-08-12 11:07:04', 'PL', NULL, NULL),
(146, 78, '78997897', '', '', '', '', '', '', '2021-08-12 11:09:21', '2021-08-12 11:09:21', 'PL', NULL, NULL),
(147, 78, '78997897', '', '', '', '', '', '', '2021-08-12 11:09:21', '2021-08-12 11:09:21', 'PL', NULL, NULL),
(148, 78, '78997897', '', '', '', '', '', '', '2021-08-12 11:09:21', '2021-08-12 11:09:21', 'PL', NULL, NULL),
(149, 79, 'ghmjghjg', '', '', '', 'ghjghj', 'gjggh', '', '2021-08-12 11:13:25', '2021-08-12 11:13:25', 'PL', NULL, NULL),
(150, 79, 'ghmjghjg', '', '', '', 'ghjghj', 'gjggh', '', '2021-08-12 11:13:25', '2021-08-12 11:13:25', 'PL', NULL, NULL),
(151, 79, 'ghmjghjg', '', '', '', 'ghjghj', 'gjggh', '', '2021-08-12 11:13:25', '2021-08-12 11:13:25', 'PL', NULL, NULL),
(152, 77, 'ertetr', '', '', '', '', '', '', '2021-08-12 11:14:38', '2021-08-12 11:14:38', 'PL', NULL, NULL),
(153, 77, 'ertetr', '', '', '', '', '', '', '2021-08-12 11:14:38', '2021-08-12 11:14:38', 'PL', NULL, NULL),
(154, 75, 'jhukujkh', '', '', '', '', '', '', '2021-08-12 11:17:07', '2021-08-12 11:17:08', 'PL', NULL, NULL),
(155, 75, 'jhukujkh', '', '', '', '', '', '', '2021-08-12 11:17:07', '2021-08-12 11:17:08', 'PL', NULL, NULL),
(156, 80, 'ghyjgh', '', '', '', '', '', '', '2021-08-12 11:18:31', '2021-08-12 11:18:31', 'PL', NULL, NULL),
(157, 80, 'ghyjgh', '', '', '', '', '', '', '2021-08-12 11:18:31', '2021-08-12 11:18:31', 'PL', NULL, NULL),
(158, 80, 'ghyjgh', '', '', '', '', '', '', '2021-08-12 11:18:31', '2021-08-12 11:18:31', 'PL', NULL, NULL),
(159, 72, 'dfhgf', '', '', '', '', '', '', '2021-08-12 11:20:03', '2021-08-12 11:20:03', 'PL', NULL, NULL),
(160, 72, 'dfhgf', '', '', '', '', '', '', '2021-08-12 11:20:03', '2021-08-12 11:20:03', 'PL', NULL, NULL),
(161, 72, 'fgdd', '', '', '', '', '', '', '2021-08-12 11:23:10', '2021-08-12 11:23:10', 'PL', NULL, NULL),
(162, 72, 'fgdd', '', '', '', '', '', '', '2021-08-12 11:23:10', '2021-08-12 11:23:10', 'PL', NULL, NULL),
(163, 72, 'dfd', '', '', '', '', '', '', '2021-08-12 11:24:30', '2021-08-12 11:24:30', 'PL', NULL, NULL),
(164, 72, 'dfd', '', '', '', '', '', '', '2021-08-12 11:24:30', '2021-08-12 11:24:30', 'PL', NULL, NULL),
(165, 71, 'uyjtyut', '', '', '', '', '', '', '2021-08-12 11:25:40', '2021-08-12 11:25:40', 'PL', NULL, NULL),
(166, 71, 'uyjtyut', '', '', '', '', '', '', '2021-08-12 11:25:40', '2021-08-12 11:25:40', 'PL', NULL, NULL),
(167, 74, 'uiyiyu', '', '', '', '', '', '', '2021-08-12 11:27:02', '2021-08-12 11:27:02', 'PL', NULL, NULL),
(168, 74, 'uiyiyu', '', '', '', '', '', '', '2021-08-12 11:27:02', '2021-08-12 11:27:02', 'PL', NULL, NULL),
(169, 74, 'uyiyi', '', '', '', '', '', '', '2021-08-12 11:32:28', '2021-08-12 11:32:28', 'PL', NULL, NULL),
(170, 74, 'uyiyi', '', '', '', '', '', '', '2021-08-12 11:32:28', '2021-08-12 11:32:28', 'PL', NULL, NULL),
(171, 81, 'iouio', '', '', '', '', '', '', '2021-08-12 11:34:28', '2021-08-12 11:34:28', 'PL', NULL, NULL),
(172, 81, 'iouio', '', '', '', '', '', '', '2021-08-12 11:34:28', '2021-08-12 11:34:28', 'PL', NULL, NULL),
(173, 81, 'iouio', '', '', '', '', '', '', '2021-08-12 11:34:28', '2021-08-12 11:34:28', 'PL', NULL, NULL),
(174, 62, '567567', '', '', '', '', '', '', '2021-08-12 11:35:40', '2021-08-12 11:35:40', 'PL', NULL, NULL),
(175, 62, '567567', '', '', '', '', '', '', '2021-08-12 11:35:40', '2021-08-12 11:35:40', 'PL', NULL, NULL),
(176, 72, '6565', '', '', '', '', '', '', '2021-08-12 11:38:53', '2021-08-12 11:38:53', 'PL', NULL, NULL),
(177, 72, '6565', '', '', '', '', '', '', '2021-08-12 11:38:53', '2021-08-12 11:38:53', 'PL', NULL, NULL),
(178, 71, 'tyujty', '', '', '', '', '', '', '2021-08-12 11:39:57', '2021-08-12 11:39:57', 'PL', NULL, NULL),
(179, 71, 'tyujty', '', '', '', '', '', '', '2021-08-12 11:39:57', '2021-08-12 11:39:57', 'PL', NULL, NULL),
(180, 71, 'tyujtytu', '', '', '', '', '', '', '2021-08-12 11:40:44', '2021-08-12 11:40:44', 'PL', NULL, NULL),
(181, 71, 'tyujtytu', '', '', '', '', '', '', '2021-08-12 11:40:44', '2021-08-12 11:40:44', 'PL', NULL, NULL),
(182, 82, 'rtyrt', '', '', '', '', '', '', '2021-08-12 11:44:12', '2021-08-12 11:44:12', 'PL', NULL, NULL),
(183, 82, 'rtyrt', '', '', '', '', '', '', '2021-08-12 11:44:12', '2021-08-12 11:44:12', 'PL', NULL, NULL),
(184, 82, 'rtyrt', '', '', '', '', '', '', '2021-08-12 11:44:12', '2021-08-12 11:44:12', 'PL', NULL, NULL),
(185, 72, 'dhdt', '', '', '', '', '', '', '2021-08-12 11:46:32', '2021-08-12 11:46:32', 'PL', NULL, NULL),
(186, 72, 'dhdt', '', '', '', '', '', '', '2021-08-12 11:46:32', '2021-08-12 11:46:32', 'PL', NULL, NULL),
(187, 69, '67867', '', '', '', '', '', '', '2021-08-12 11:48:25', '2021-08-12 11:48:25', 'PL', NULL, NULL),
(188, 69, '67867', '', '', '', '', '', '', '2021-08-12 11:48:25', '2021-08-12 11:48:25', 'PL', NULL, NULL),
(189, 69, 'gff', '', '', '', '', '', '', '2021-08-12 11:49:49', '2021-08-12 11:49:49', 'PL', NULL, NULL),
(190, 69, 'gff', '', '', '', '', '', '', '2021-08-12 11:49:49', '2021-08-12 11:49:49', 'PL', NULL, NULL),
(191, 83, 'uioui', '', '', '', '', '', '', '2021-08-12 11:51:02', '2021-08-12 11:51:02', 'PL', NULL, NULL),
(192, 83, 'uioui', '', '', '', '', '', '', '2021-08-12 11:51:02', '2021-08-12 11:51:02', 'PL', NULL, NULL),
(193, 83, 'uioui', '', '', '', '', '', '', '2021-08-12 11:51:02', '2021-08-12 11:51:02', 'PL', NULL, NULL),
(194, 80, 'gkg', '', '', '', '', '', '', '2021-08-12 11:53:46', '2021-08-12 11:53:46', 'PL', NULL, NULL),
(195, 80, 'gkg', '', '', '', '', '', '', '2021-08-12 11:53:46', '2021-08-12 11:53:46', 'PL', NULL, NULL),
(196, 84, 'vnvvbn', '', '', '', '', '', '', '2021-08-12 11:54:56', '2021-08-12 11:54:56', 'PL', NULL, NULL),
(197, 84, 'vnvvbn', '', '', '', '', '', '', '2021-08-12 11:54:56', '2021-08-12 11:54:56', 'PL', NULL, NULL),
(198, 84, 'vnvvbn', '', '', '', '', '', '', '2021-08-12 11:54:56', '2021-08-12 11:54:56', 'PL', NULL, NULL),
(199, 80, 'jghjg', '', '', '', '', '', '', '2021-08-12 11:56:33', '2021-08-12 11:56:33', 'PL', NULL, NULL),
(200, 80, 'jghjg', '', '', '', '', '', '', '2021-08-12 11:56:33', '2021-08-12 11:56:33', 'PL', NULL, NULL),
(201, 68, 'Jan', 'Kowalski', '748 545 545', '', 'Twoja firma', 'ul. Ciasa 71, 00-001, Warszawa', '', '2021-08-12 11:58:18', '2021-08-12 11:58:18', 'PL', NULL, NULL),
(202, 68, 'Jan', 'Kowalski', '748 545 545', '', 'Twoja firma', 'ul. Ciasa 71, 00-001, Warszawa', '', '2021-08-12 11:58:18', '2021-08-12 11:58:18', 'PL', NULL, NULL),
(203, 68, 'Jan', 'Kowalski', '748 545 545', '', '', '', '', '2021-08-12 11:59:28', '2021-08-12 11:59:28', 'PL', NULL, NULL),
(204, 68, 'Jan', 'Kowalski', '748 545 545', '', '', '', '', '2021-08-12 11:59:28', '2021-08-12 11:59:28', 'PL', NULL, NULL),
(205, 69, 'Jan', 'Kowalski', '5485748', '', 'sdgs', 'sfdfs, Warszawa', '', '2021-08-12 12:10:49', '2021-08-12 12:10:49', 'PL', NULL, NULL),
(206, 69, 'Jan', 'Kowalski', '5485748', '', 'sdgs', 'sfdfs, Warszawa', '', '2021-08-12 12:10:49', '2021-08-12 12:10:49', 'PL', NULL, NULL),
(207, 70, 'Szymon', 'Mlonek', '54635356', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:40:10', '2021-08-12 12:40:10', 'PL', NULL, NULL),
(208, 70, 'Szymon', 'Mlonek', '54635356', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:40:10', '2021-08-12 12:40:10', 'PL', NULL, NULL),
(209, 70, 'wdfsdafsadfsad', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:41:29', '2021-08-12 12:41:29', 'PL', NULL, NULL),
(210, 70, 'wdfsdafsadfsad', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:41:29', '2021-08-12 12:41:29', 'PL', NULL, NULL),
(211, 70, 'Jan', 'Kowalski', '535635', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:42:24', '2021-08-12 12:42:24', 'PL', NULL, NULL),
(212, 70, 'Jan', 'Kowalski', '535635', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:42:24', '2021-08-12 12:42:24', 'PL', NULL, NULL),
(213, 70, '677', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:47:58', '2021-08-12 12:47:58', 'PL', NULL, NULL),
(214, 70, '677', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:47:58', '2021-08-12 12:47:58', 'PL', NULL, NULL),
(215, 70, 'ghmjghjg', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:53:32', '2021-08-12 12:53:32', 'PL', NULL, NULL),
(216, 70, 'ghmjghjg', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 12:53:32', '2021-08-12 12:53:32', 'PL', NULL, NULL),
(217, 70, 'dfdfaokjfsda', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 13:11:42', '2021-08-12 13:11:42', 'PL', NULL, NULL),
(218, 70, 'dfdfaokjfsda', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 13:11:42', '2021-08-12 13:11:42', 'PL', NULL, NULL),
(219, 70, 'dfdfaokjfsda', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 13:12:49', '2021-08-12 13:12:49', 'PL', NULL, NULL),
(220, 70, 'dfdfaokjfsda', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 13:12:49', '2021-08-12 13:12:49', 'PL', NULL, NULL),
(221, 69, 'wdfsdafsadfsad', '', '', '', '78i778', 'Siedlce', '', '2021-08-12 13:17:34', '2021-08-12 13:17:34', 'PL', NULL, NULL),
(222, 69, 'wdfsdafsadfsad', '', '', '', '78i778', 'Siedlce', '', '2021-08-12 13:17:34', '2021-08-12 13:17:34', 'PL', NULL, NULL),
(223, 70, 'iouio', '', '', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 13:20:50', '2021-08-12 13:20:50', 'PL', NULL, NULL),
(224, 70, 'iouio', '', '', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 13:20:50', '2021-08-12 13:20:50', 'PL', NULL, NULL),
(225, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:22:12', '2021-08-12 13:22:12', 'PL', NULL, NULL),
(226, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:22:12', '2021-08-12 13:22:12', 'PL', NULL, NULL),
(227, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:24:19', '2021-08-12 13:24:19', 'PL', NULL, NULL),
(228, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:24:19', '2021-08-12 13:24:19', 'PL', NULL, NULL),
(229, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:27:55', '2021-08-12 13:27:55', 'PL', NULL, NULL),
(230, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:27:55', '2021-08-12 13:27:55', 'PL', NULL, NULL),
(231, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:34:16', '2021-08-12 13:34:16', 'PL', NULL, NULL),
(232, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:34:16', '2021-08-12 13:34:16', 'PL', NULL, NULL),
(233, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:36:49', '2021-08-12 13:36:49', 'PL', NULL, NULL),
(234, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:36:49', '2021-08-12 13:36:49', 'PL', NULL, NULL),
(235, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:38:09', '2021-08-12 13:38:09', 'PL', NULL, NULL),
(236, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:38:09', '2021-08-12 13:38:09', 'PL', NULL, NULL),
(237, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:39:51', '2021-08-12 13:39:51', 'PL', NULL, NULL),
(238, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:39:51', '2021-08-12 13:39:51', 'PL', NULL, NULL),
(239, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:44:11', '2021-08-12 13:44:11', 'PL', NULL, NULL),
(240, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 13:44:11', '2021-08-12 13:44:11', 'PL', NULL, NULL),
(241, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-12 13:59:35', '2021-08-12 13:59:35', 'PL', NULL, NULL),
(242, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-12 13:59:35', '2021-08-12 13:59:35', 'PL', NULL, NULL),
(243, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:06:18', '2021-08-12 14:06:18', 'PL', NULL, NULL),
(244, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:06:18', '2021-08-12 14:06:18', 'PL', NULL, NULL),
(245, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:07:11', '2021-08-12 14:07:11', 'PL', NULL, NULL),
(246, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:07:11', '2021-08-12 14:07:11', 'PL', NULL, NULL),
(247, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:08:39', '2021-08-12 14:08:39', 'PL', NULL, NULL),
(248, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:08:39', '2021-08-12 14:08:39', 'PL', NULL, NULL),
(249, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:10:15', '2021-08-12 14:10:15', 'PL', NULL, NULL),
(250, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:10:15', '2021-08-12 14:10:15', 'PL', NULL, NULL),
(251, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:14:19', '2021-08-12 14:14:19', 'PL', NULL, NULL),
(252, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:14:19', '2021-08-12 14:14:19', 'PL', NULL, NULL),
(253, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:15:47', '2021-08-12 14:15:47', 'PL', NULL, NULL),
(254, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:15:47', '2021-08-12 14:15:47', 'PL', NULL, NULL),
(255, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:17:27', '2021-08-12 14:17:27', 'PL', NULL, NULL),
(256, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:17:27', '2021-08-12 14:17:27', 'PL', NULL, NULL),
(257, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:25:59', '2021-08-12 14:25:59', 'PL', NULL, NULL),
(258, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:25:59', '2021-08-12 14:25:59', 'PL', NULL, NULL),
(259, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:28:56', '2021-08-12 14:28:56', 'PL', NULL, NULL),
(260, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:28:56', '2021-08-12 14:28:56', 'PL', NULL, NULL),
(261, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:29:55', '2021-08-12 14:29:55', 'PL', NULL, NULL),
(262, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:29:55', '2021-08-12 14:29:55', 'PL', NULL, NULL),
(263, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:31:14', '2021-08-12 14:31:14', 'PL', NULL, NULL),
(264, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:31:14', '2021-08-12 14:31:14', 'PL', NULL, NULL),
(265, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 14:33:19', '2021-08-12 14:33:19', 'PL', NULL, NULL),
(266, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 14:33:19', '2021-08-12 14:33:19', 'PL', NULL, NULL),
(267, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 14:35:52', '2021-08-12 14:35:52', 'PL', NULL, NULL),
(268, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 14:35:52', '2021-08-12 14:35:52', 'PL', NULL, NULL),
(269, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 14:36:45', '2021-08-12 14:36:45', 'PL', NULL, NULL),
(270, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 14:36:45', '2021-08-12 14:36:45', 'PL', NULL, NULL),
(271, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:37:14', '2021-08-12 14:37:14', 'PL', NULL, NULL),
(272, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:37:14', '2021-08-12 14:37:14', 'PL', NULL, NULL),
(273, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:39:23', '2021-08-12 14:39:23', 'PL', NULL, NULL),
(274, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:39:23', '2021-08-12 14:39:23', 'PL', NULL, NULL),
(275, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:41:20', '2021-08-12 14:41:20', 'PL', NULL, NULL),
(276, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:41:20', '2021-08-12 14:41:20', 'PL', NULL, NULL),
(277, 72, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:42:27', '2021-08-12 14:42:27', 'PL', NULL, NULL),
(278, 72, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:42:27', '2021-08-12 14:42:27', 'PL', NULL, NULL),
(279, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:47:14', '2021-08-12 14:47:14', 'PL', NULL, NULL),
(280, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 14:47:14', '2021-08-12 14:47:14', 'PL', NULL, NULL),
(281, 70, 'Jan', 'Kowalski', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:02:02', '2021-08-12 15:02:03', 'PL', NULL, NULL),
(282, 70, 'Jan', 'Kowalski', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:02:02', '2021-08-12 15:02:03', 'PL', NULL, NULL),
(283, 70, 'dfdfaokjfsda', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:05:37', '2021-08-12 15:05:37', 'PL', NULL, NULL),
(284, 70, 'dfdfaokjfsda', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:05:37', '2021-08-12 15:05:37', 'PL', NULL, NULL),
(285, 70, 'wdfsdafsadfsad', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:08:23', '2021-08-12 15:08:23', 'PL', NULL, NULL),
(286, 70, 'wdfsdafsadfsad', '', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:08:23', '2021-08-12 15:08:23', 'PL', NULL, NULL),
(287, 70, 'Jan', 'Kowalski', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:26:23', '2021-08-12 15:26:23', 'PL', NULL, NULL),
(288, 70, 'Jan', 'Kowalski', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:26:23', '2021-08-12 15:26:23', 'PL', NULL, NULL),
(289, 70, 'Jan', 'Kowalski', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:46:12', '2021-08-12 15:46:12', 'PL', NULL, NULL),
(290, 70, 'Jan', 'Kowalski', '748 545 545', '', 'VAThole industries', 'Siedlce', '', '2021-08-12 15:46:12', '2021-08-12 15:46:12', 'PL', NULL, NULL),
(291, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 15:49:03', '2021-08-12 15:49:03', 'PL', NULL, NULL),
(292, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 15:49:03', '2021-08-12 15:49:03', 'PL', NULL, NULL),
(293, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 15:50:03', '2021-08-12 15:50:03', 'PL', NULL, NULL),
(294, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 15:50:03', '2021-08-12 15:50:03', 'PL', NULL, NULL),
(295, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 15:51:07', '2021-08-12 15:51:07', 'PL', NULL, NULL),
(296, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 15:51:07', '2021-08-12 15:51:07', 'PL', NULL, NULL),
(297, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-12 15:51:50', '2021-08-12 15:51:50', 'PL', NULL, NULL),
(298, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-12 15:51:50', '2021-08-12 15:51:50', 'PL', NULL, NULL),
(299, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 15:52:20', '2021-08-12 15:52:20', 'PL', NULL, NULL),
(300, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 15:52:20', '2021-08-12 15:52:20', 'PL', NULL, NULL),
(301, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 15:55:16', '2021-08-12 15:55:16', 'PL', NULL, NULL),
(302, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 15:55:16', '2021-08-12 15:55:16', 'PL', NULL, NULL),
(303, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 15:58:11', '2021-08-12 15:58:11', 'PL', NULL, NULL),
(304, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-12 15:58:11', '2021-08-12 15:58:11', 'PL', NULL, NULL),
(305, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 16:02:16', '2021-08-12 16:02:16', 'PL', NULL, NULL),
(306, 72, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-12 16:02:16', '2021-08-12 16:02:16', 'PL', NULL, NULL),
(307, 72, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-12 16:03:55', '2021-08-12 16:03:55', 'PL', NULL, NULL),
(308, 72, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-12 16:03:55', '2021-08-12 16:03:55', 'PL', NULL, NULL),
(309, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 08:49:10', '2021-08-13 08:49:10', 'PL', NULL, NULL),
(310, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 08:49:10', '2021-08-13 08:49:10', 'PL', NULL, NULL),
(311, 72, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 08:52:08', '2021-08-13 08:52:08', 'PL', NULL, NULL),
(312, 72, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 08:52:08', '2021-08-13 08:52:08', 'PL', NULL, NULL),
(313, 70, 'asd', '', '', '', '', '', '', '2021-08-13 08:57:03', '2021-08-13 08:57:03', 'PL', NULL, NULL),
(314, 70, 'asd', '', '', '', '', '', '', '2021-08-13 08:57:03', '2021-08-13 08:57:03', 'PL', NULL, NULL),
(315, 85, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 09:16:12', '2021-08-13 09:16:12', 'PL', NULL, NULL),
(316, 85, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 09:16:12', '2021-08-13 09:16:12', 'PL', NULL, NULL),
(317, 85, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 09:16:12', '2021-08-13 09:16:12', 'PL', NULL, NULL),
(318, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 09:36:37', '2021-08-13 09:36:37', 'PL', NULL, NULL),
(319, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-13 09:36:37', '2021-08-13 09:36:37', 'PL', NULL, NULL),
(320, 64, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-13 09:37:19', '2021-08-13 09:37:19', 'PL', NULL, NULL),
(321, 64, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-13 09:37:19', '2021-08-13 09:37:19', 'PL', NULL, NULL),
(322, 69, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-13 09:44:59', '2021-08-13 09:44:59', 'PL', NULL, NULL),
(323, 69, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-13 09:44:59', '2021-08-13 09:44:59', 'PL', NULL, NULL),
(324, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-13 10:09:19', '2021-08-13 10:09:19', 'PL', NULL, NULL),
(325, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-13 10:09:19', '2021-08-13 10:09:19', 'PL', NULL, NULL),
(326, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-16 13:39:12', '2021-08-16 13:39:12', 'PL', NULL, NULL),
(327, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-16 13:39:12', '2021-08-16 13:39:12', 'PL', NULL, NULL),
(328, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 09:25:11', '2021-08-17 09:25:11', 'PL', NULL, NULL),
(329, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 09:25:11', '2021-08-17 09:25:11', 'PL', NULL, NULL),
(330, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-17 09:40:21', '2021-08-17 09:40:21', 'PL', NULL, NULL),
(331, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-17 09:40:21', '2021-08-17 09:40:21', 'PL', NULL, NULL),
(332, 70, 'Szymon', 'Mlonek', '', '', '', '', '', '2021-08-17 11:31:04', '2021-08-17 11:31:04', 'PL', NULL, NULL),
(333, 70, 'Szymon', 'Mlonek', '', '', '', '', '', '2021-08-17 11:31:04', '2021-08-17 11:31:04', 'PL', NULL, NULL),
(334, 86, 'sdfghj', '', '', '', '', '', '', '2021-08-17 13:01:11', '2021-08-17 13:01:11', 'PL', NULL, NULL),
(335, 86, 'sdfghj', '', '', '', '', '', '', '2021-08-17 13:01:11', '2021-08-17 13:01:11', 'PL', NULL, NULL),
(336, 86, 'sdfghj', '', '', '', '', '', '', '2021-08-17 13:01:11', '2021-08-17 13:01:11', 'PL', NULL, NULL),
(337, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 13:09:43', '2021-08-17 13:09:43', 'PL', NULL, NULL),
(338, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 13:09:43', '2021-08-17 13:09:43', 'PL', NULL, NULL),
(339, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 13:57:50', '2021-08-17 13:57:50', 'PL', NULL, NULL),
(340, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 13:57:50', '2021-08-17 13:57:50', 'PL', NULL, NULL),
(341, 70, 'bszvcx', '', '', '', '', '', '', '2021-08-17 14:59:02', '2021-08-17 14:59:02', 'PL', NULL, NULL),
(342, 70, 'bszvcx', '', '', '', '', '', '', '2021-08-17 14:59:02', '2021-08-17 14:59:02', 'PL', NULL, NULL),
(343, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 15:28:15', '2021-08-17 15:28:15', 'PL', NULL, NULL),
(344, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 15:28:15', '2021-08-17 15:28:15', 'PL', NULL, NULL),
(345, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 16:02:06', '2021-08-17 16:02:06', 'PL', NULL, NULL),
(346, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 16:02:06', '2021-08-17 16:02:06', 'PL', NULL, NULL),
(347, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-17 16:04:19', '2021-08-17 16:04:19', 'PL', NULL, NULL),
(348, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-17 16:04:19', '2021-08-17 16:04:19', 'PL', NULL, NULL),
(349, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 16:05:50', '2021-08-17 16:05:50', 'PL', NULL, NULL),
(350, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-17 16:05:50', '2021-08-17 16:05:50', 'PL', NULL, NULL),
(351, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-18 09:50:57', '2021-08-18 09:50:57', 'PL', NULL, NULL),
(352, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-18 09:50:57', '2021-08-18 09:50:57', 'PL', NULL, NULL),
(353, 72, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-18 09:56:27', '2021-08-18 09:56:27', 'PL', NULL, NULL),
(354, 72, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-18 09:56:27', '2021-08-18 09:56:27', 'PL', NULL, NULL),
(355, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-18 10:01:35', '2021-08-18 10:01:35', 'PL', NULL, NULL),
(356, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-18 10:01:35', '2021-08-18 10:01:35', 'PL', NULL, NULL),
(357, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-18 10:04:30', '2021-08-18 10:04:30', 'PL', NULL, NULL),
(358, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-18 10:04:30', '2021-08-18 10:04:30', 'PL', NULL, NULL),
(359, 72, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-18 10:07:05', '2021-08-18 10:07:05', 'PL', NULL, NULL),
(360, 72, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-18 10:07:05', '2021-08-18 10:07:05', 'PL', NULL, NULL),
(361, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-18 10:08:57', '2021-08-18 10:08:57', 'PL', NULL, NULL),
(362, 70, 'dfdfaokjfsda', '', '', '', '', '', '', '2021-08-18 10:08:57', '2021-08-18 10:08:57', 'PL', NULL, NULL),
(363, 87, 'mnvmnmhv', 'hjgf', '', '', '', '', '', '2021-08-18 14:14:38', '2021-08-18 14:14:38', 'PL', NULL, NULL),
(364, 87, 'mnvmnmhv', 'hjgf', '', '', '', '', '', '2021-08-18 14:14:38', '2021-08-18 14:14:38', 'PL', NULL, NULL),
(365, 87, 'mnvmnmhv', 'hjgf', '', '', '', '', '', '2021-08-18 14:14:38', '2021-08-18 14:14:38', 'PL', NULL, NULL),
(366, 88, 'hhdh', 'hdh', '', '', '', '', '', '2021-08-18 14:16:11', '2021-08-18 14:16:11', 'PL', NULL, NULL),
(367, 88, 'hhdh', 'hdh', '', '', '', '', '', '2021-08-18 14:16:11', '2021-08-18 14:16:11', 'PL', NULL, NULL),
(368, 88, 'hhdh', 'hdh', '', '', '', '', '', '2021-08-18 14:16:11', '2021-08-18 14:16:11', 'PL', NULL, NULL),
(369, 72, 'ghmjghjg', '', '', '', '', '', '', '2021-08-18 16:03:15', '2021-08-18 16:03:15', 'PL', NULL, NULL),
(370, 72, 'ghmjghjg', '', '', '', '', '', '', '2021-08-18 16:03:15', '2021-08-18 16:03:15', 'PL', NULL, NULL),
(371, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-18 16:04:53', '2021-08-18 16:04:53', 'PL', NULL, NULL),
(372, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-18 16:04:53', '2021-08-18 16:04:53', 'PL', NULL, NULL),
(373, 69, 'Szymon', 'Mlonek', '', '', '', '', '', '2021-08-18 16:09:29', '2021-08-18 16:09:29', 'PL', NULL, NULL),
(374, 69, 'Szymon', 'Mlonek', '', '', '', '', '', '2021-08-18 16:09:29', '2021-08-18 16:09:29', 'PL', NULL, NULL),
(375, 69, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-19 12:54:43', '2021-08-19 12:54:43', 'PL', NULL, NULL),
(376, 69, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-19 12:54:43', '2021-08-19 12:54:43', 'PL', NULL, NULL),
(377, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-19 12:55:47', '2021-08-19 12:55:47', 'PL', NULL, NULL),
(378, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-19 12:55:47', '2021-08-19 12:55:47', 'PL', NULL, NULL),
(379, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-19 12:57:19', '2021-08-19 12:57:19', 'PL', NULL, NULL),
(380, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-19 12:57:19', '2021-08-19 12:57:19', 'PL', NULL, NULL),
(381, 89, 'sadf', '', '', '', '', '', '', '2021-08-19 12:58:42', '2021-08-19 12:58:42', 'PL', NULL, NULL),
(382, 89, 'sadf', '', '', '', '', '', '', '2021-08-19 12:58:42', '2021-08-19 12:58:42', 'PL', NULL, NULL),
(383, 89, 'sadf', '', '', '', '', '', '', '2021-08-19 12:58:42', '2021-08-19 12:58:42', 'PL', NULL, NULL),
(384, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-19 13:02:01', '2021-08-19 13:02:01', 'PL', NULL, NULL),
(385, 70, 'wdfsdafsadfsad', '', '', '', '', '', '', '2021-08-19 13:02:01', '2021-08-19 13:02:01', 'PL', NULL, NULL),
(386, 80, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-19 15:46:54', '2021-08-19 15:46:54', 'PL', NULL, NULL),
(387, 80, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-19 15:46:54', '2021-08-19 15:46:54', 'PL', NULL, NULL),
(388, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-20 08:48:03', '2021-08-20 08:48:04', 'PL', NULL, NULL),
(389, 70, 'Jan', 'Kowalski', '', '', '', '', '', '2021-08-20 08:48:03', '2021-08-20 08:48:04', 'PL', NULL, NULL),
(390, 91, '', '', '', '', '', '', '', '2021-10-01 11:42:39', '2021-10-01 11:42:39', 'PL', NULL, NULL),
(391, 91, '', '', '', '', '', '', '', '2021-10-01 11:42:39', '2021-10-01 11:42:39', 'PL', NULL, NULL),
(392, 91, '', '', '', '', '', '', '', '2021-10-01 11:42:39', '2021-10-01 11:42:39', 'PL', NULL, NULL),
(393, 91, '', '', '', '', '', '', '', '2021-10-01 11:47:49', '2021-10-01 11:47:49', 'PL', NULL, NULL),
(394, 91, '', '', '', '', '', '', '', '2021-10-01 11:47:49', '2021-10-01 11:47:49', 'PL', NULL, NULL),
(395, 91, '', '', '', '', '', '', '', '2021-10-01 11:49:07', '2021-10-01 11:49:07', 'PL', NULL, NULL),
(396, 91, '', '', '', '', '', '', '', '2021-10-01 11:49:07', '2021-10-01 11:49:07', 'PL', NULL, NULL),
(397, 91, '', '', '', '', '', '', '', '2021-10-01 20:32:51', '2021-10-01 20:32:51', 'PL', NULL, NULL),
(398, 91, '', '', '', '', '', '', '', '2021-10-01 20:32:51', '2021-10-01 20:32:51', 'PL', NULL, NULL),
(399, 91, '', '', '', '', '', '', '', '2021-10-01 20:33:20', '2021-10-01 20:33:20', 'PL', NULL, NULL),
(400, 91, '', '', '', '', '', '', '', '2021-10-01 20:33:20', '2021-10-01 20:33:20', 'PL', NULL, NULL),
(401, 91, '', '', '', '', '', '', '', '2021-10-01 20:33:25', '2021-10-01 20:33:25', 'PL', NULL, NULL),
(402, 91, '', '', '', '', '', '', '', '2021-10-01 20:33:25', '2021-10-01 20:33:25', 'PL', NULL, NULL),
(403, 91, '', '', '', '', '', '', '', '2021-10-01 20:34:28', '2021-10-01 20:34:28', 'PL', NULL, NULL),
(404, 91, '', '', '', '', '', '', '', '2021-10-01 20:34:28', '2021-10-01 20:34:28', 'PL', NULL, NULL),
(405, 91, '', '', '', '', '', '', '', '2021-10-01 20:34:44', '2021-10-01 20:34:44', 'PL', NULL, NULL),
(406, 91, '', '', '', '', '', '', '', '2021-10-01 20:34:44', '2021-10-01 20:34:44', 'PL', NULL, NULL),
(407, 91, '', '', '', '', '', '', '', '2021-10-01 20:34:49', '2021-10-01 20:34:49', 'PL', NULL, NULL),
(408, 91, '', '', '', '', '', '', '', '2021-10-01 20:34:49', '2021-10-01 20:34:49', 'PL', NULL, NULL),
(409, 91, '', '', '', '', '', '', '', '2021-10-01 20:34:54', '2021-10-01 20:34:54', 'PL', NULL, NULL),
(410, 91, '', '', '', '', '', '', '', '2021-10-01 20:34:54', '2021-10-01 20:34:54', 'PL', NULL, NULL),
(411, 91, '', '', '', '', '', '', '', '2021-10-01 20:36:34', '2021-10-01 20:36:34', 'PL', NULL, NULL),
(412, 91, '', '', '', '', '', '', '', '2021-10-01 20:36:34', '2021-10-01 20:36:34', 'PL', NULL, NULL),
(413, 91, '', '', '', '', '', '', '', '2021-10-01 20:36:40', '2021-10-01 20:36:40', 'PL', NULL, NULL),
(414, 91, '', '', '', '', '', '', '', '2021-10-01 20:36:40', '2021-10-01 20:36:40', 'PL', NULL, NULL),
(415, 91, '', '', '', '', '', '', '', '2021-10-01 20:36:52', '2021-10-01 20:36:52', 'PL', NULL, NULL),
(416, 91, '', '', '', '', '', '', '', '2021-10-01 20:36:52', '2021-10-01 20:36:52', 'PL', NULL, NULL),
(417, 91, '', '', '', '', '', '', '', '2021-10-01 20:41:01', '2021-10-01 20:41:01', 'PL', NULL, NULL),
(418, 91, '', '', '', '', '', '', '', '2021-10-01 20:41:01', '2021-10-01 20:41:01', 'PL', NULL, NULL),
(419, 91, '', '', '', '', '', '', '', '2021-10-01 20:42:41', '2021-10-01 20:42:42', 'PL', NULL, NULL),
(420, 91, '', '', '', '', '', '', '', '2021-10-01 20:42:41', '2021-10-01 20:42:42', 'PL', NULL, NULL),
(421, 91, '', '', '', '', '', '', '', '2021-10-01 20:44:30', '2021-10-01 20:44:31', 'PL', NULL, NULL),
(422, 91, '', '', '', '', '', '', '', '2021-10-01 20:44:30', '2021-10-01 20:44:31', 'PL', NULL, NULL),
(423, 91, '', '', '', '', '', '', '', '2021-10-01 20:49:11', '2021-10-01 20:49:11', 'PL', NULL, NULL),
(424, 91, '', '', '', '', '', '', '', '2021-10-01 20:49:11', '2021-10-01 20:49:11', 'PL', NULL, NULL),
(425, 91, '', '', '', '', '', '', '', '2021-10-01 20:51:33', '2021-10-01 20:51:33', 'PL', NULL, NULL),
(426, 91, '', '', '', '', '', '', '', '2021-10-01 20:51:33', '2021-10-01 20:51:33', 'PL', NULL, NULL),
(427, 91, '', '', '', '', '', '', '', '2021-10-01 20:52:17', '2021-10-01 20:52:17', 'PL', NULL, NULL),
(428, 91, '', '', '', '', '', '', '', '2021-10-01 20:52:17', '2021-10-01 20:52:17', 'PL', NULL, NULL),
(429, 91, '', '', '', '', '', '', '', '2021-10-01 20:52:53', '2021-10-01 20:52:53', 'PL', NULL, NULL),
(430, 91, '', '', '', '', '', '', '', '2021-10-01 20:52:53', '2021-10-01 20:52:53', 'PL', NULL, NULL),
(431, 91, '', '', '', '', '', '', '', '2021-10-01 20:52:57', '2021-10-01 20:52:57', 'PL', NULL, NULL),
(432, 91, '', '', '', '', '', '', '', '2021-10-01 20:52:57', '2021-10-01 20:52:57', 'PL', NULL, NULL),
(433, 91, '', '', '', '', '', '', '', '2021-10-01 20:58:32', '2021-10-01 20:58:32', 'PL', NULL, NULL),
(434, 91, '', '', '', '', '', '', '', '2021-10-01 20:58:32', '2021-10-01 20:58:32', 'PL', NULL, NULL),
(435, 91, '', '', '', '', '', '', '', '2021-10-01 21:12:47', '2021-10-01 21:12:47', 'PL', NULL, NULL),
(436, 91, '', '', '', '', '', '', '', '2021-10-01 21:12:47', '2021-10-01 21:12:47', 'PL', NULL, NULL),
(437, 91, '', '', '', '', '', '', '', '2021-10-01 21:22:51', '2021-10-01 21:22:51', 'PL', NULL, NULL),
(438, 91, '', '', '', '', '', '', '', '2021-10-01 21:22:51', '2021-10-01 21:22:51', 'PL', NULL, NULL),
(439, 91, '', '', '', '', '', '', '', '2021-10-01 21:23:15', '2021-10-01 21:23:15', 'PL', NULL, NULL),
(440, 91, '', '', '', '', '', '', '', '2021-10-01 21:23:15', '2021-10-01 21:23:15', 'PL', NULL, NULL);
INSERT INTO `sylius_address` (`id`, `customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `company`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`) VALUES
(441, 91, '', '', '', '', '', '', '', '2021-10-01 21:23:24', '2021-10-01 21:23:24', 'PL', NULL, NULL),
(442, 91, '', '', '', '', '', '', '', '2021-10-01 21:23:24', '2021-10-01 21:23:24', 'PL', NULL, NULL),
(443, 91, '', '', '', '', '', '', '', '2021-10-05 17:11:38', '2021-10-05 17:11:38', 'PL', NULL, NULL),
(444, 91, '', '', '', '', '', '', '', '2021-10-05 17:11:38', '2021-10-05 17:11:38', 'PL', NULL, NULL),
(445, 91, '', '', '', '', '', '', '', '2021-10-05 17:18:28', '2021-10-05 17:18:28', 'PL', NULL, NULL),
(446, 91, '', '', '', '', '', '', '', '2021-10-05 17:18:28', '2021-10-05 17:18:28', 'PL', NULL, NULL),
(447, 91, '', '', '', '', '', '', '', '2021-10-05 17:18:36', '2021-10-05 17:18:36', 'PL', NULL, NULL),
(448, 91, '', '', '', '', '', '', '', '2021-10-05 17:18:36', '2021-10-05 17:18:36', 'PL', NULL, NULL),
(449, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 17:21:39', '2021-10-05 17:21:39', 'PL', NULL, NULL),
(450, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 17:21:39', '2021-10-05 17:21:39', 'PL', NULL, NULL),
(451, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 17:21:39', '2021-10-05 17:21:39', 'PL', NULL, NULL),
(452, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 17:26:02', '2021-10-05 17:26:02', 'PL', NULL, NULL),
(453, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 17:26:02', '2021-10-05 17:26:02', 'PL', NULL, NULL),
(454, 90, 'adsf', '', '123123123', '', 'agfddagfagf', 'agfdgfad', '', '2021-10-05 17:30:36', '2021-10-05 17:30:36', 'PL', NULL, NULL),
(455, 90, 'adsf', '', '123123123', '', 'agfddagfagf', 'agfdgfad', '', '2021-10-05 17:30:36', '2021-10-05 17:30:36', 'PL', NULL, NULL),
(456, 90, 'adfs', 'sadsad', '123123123', '', 'sdfd', 'fdsdfdsf', '', '2021-10-05 17:32:48', '2021-10-05 17:32:48', 'PL', NULL, NULL),
(457, 90, 'adfs', 'sadsad', '123123123', '', 'sdfd', 'fdsdfdsf', '', '2021-10-05 17:32:48', '2021-10-05 17:32:48', 'PL', NULL, NULL),
(458, 62, 'adfs', '', '123123123', '', 'sdfd', 'fdsdfdsf', '', '2021-10-05 17:37:42', '2021-10-05 17:37:42', 'PL', NULL, NULL),
(459, 62, 'adfs', '', '123123123', '', 'sdfd', 'fdsdfdsf', '', '2021-10-05 17:37:42', '2021-10-05 17:37:42', 'PL', NULL, NULL),
(460, 62, 'adfs', '', '', '', '', '', '', '2021-10-05 17:53:55', '2021-10-05 17:53:55', 'PL', NULL, NULL),
(461, 62, 'adfs', '', '', '', '', '', '', '2021-10-05 17:53:55', '2021-10-05 17:53:55', 'PL', NULL, NULL),
(462, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 17:58:28', '2021-10-05 17:58:28', 'PL', NULL, NULL),
(463, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 17:58:28', '2021-10-05 17:58:28', 'PL', NULL, NULL),
(464, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:02:16', '2021-10-05 18:02:16', 'PL', NULL, NULL),
(465, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:02:16', '2021-10-05 18:02:16', 'PL', NULL, NULL),
(466, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:03:49', '2021-10-05 18:03:49', 'PL', NULL, NULL),
(467, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:03:49', '2021-10-05 18:03:49', 'PL', NULL, NULL),
(468, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:05:39', '2021-10-05 18:05:40', 'PL', NULL, NULL),
(469, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:05:39', '2021-10-05 18:05:40', 'PL', NULL, NULL),
(470, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:08:29', '2021-10-05 18:08:29', 'PL', NULL, NULL),
(471, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:08:29', '2021-10-05 18:08:29', 'PL', NULL, NULL),
(472, 90, 'adfs', 'sadsad', '123123123', '', 'agfddagfagf', 'agfdgfad', '', '2021-10-05 18:09:53', '2021-10-05 18:09:53', 'PL', NULL, NULL),
(473, 90, 'adfs', 'sadsad', '123123123', '', 'agfddagfagf', 'agfdgfad', '', '2021-10-05 18:09:53', '2021-10-05 18:09:53', 'PL', NULL, NULL),
(474, 62, 'adfs', '', '', '', '', '', '', '2021-10-05 18:10:59', '2021-10-05 18:10:59', 'PL', NULL, NULL),
(475, 62, 'adfs', '', '', '', '', '', '', '2021-10-05 18:10:59', '2021-10-05 18:10:59', 'PL', NULL, NULL),
(476, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:13:12', '2021-10-05 18:13:12', 'PL', NULL, NULL),
(477, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:13:12', '2021-10-05 18:13:12', 'PL', NULL, NULL),
(478, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:14:21', '2021-10-05 18:14:21', 'PL', NULL, NULL),
(479, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:14:21', '2021-10-05 18:14:21', 'PL', NULL, NULL),
(480, 62, 'adfs', '', '', '', '', '', '', '2021-10-05 18:15:56', '2021-10-05 18:15:56', 'PL', NULL, NULL),
(481, 62, 'adfs', '', '', '', '', '', '', '2021-10-05 18:15:56', '2021-10-05 18:15:56', 'PL', NULL, NULL),
(482, 90, 'adfs', '', '', '', '', '', '', '2021-10-05 18:17:13', '2021-10-05 18:17:13', 'PL', NULL, NULL),
(483, 90, 'adfs', '', '', '', '', '', '', '2021-10-05 18:17:13', '2021-10-05 18:17:13', 'PL', NULL, NULL),
(484, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:17:52', '2021-10-05 18:17:52', 'PL', NULL, NULL),
(485, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:17:52', '2021-10-05 18:17:52', 'PL', NULL, NULL),
(486, 90, 'adsf', '', '', '', '', '', '', '2021-10-05 18:20:40', '2021-10-05 18:20:40', 'PL', NULL, NULL),
(487, 90, 'adsf', '', '', '', '', '', '', '2021-10-05 18:20:40', '2021-10-05 18:20:40', 'PL', NULL, NULL),
(488, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:22:13', '2021-10-05 18:22:13', 'PL', NULL, NULL),
(489, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:22:13', '2021-10-05 18:22:13', 'PL', NULL, NULL),
(490, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:27:41', '2021-10-05 18:27:41', 'PL', NULL, NULL),
(491, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:27:41', '2021-10-05 18:27:41', 'PL', NULL, NULL),
(492, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:35:36', '2021-10-05 18:35:36', 'PL', NULL, NULL),
(493, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:35:36', '2021-10-05 18:35:36', 'PL', NULL, NULL),
(494, 90, 'adfs', 'sadsad', '123123123', '', '', '', '', '2021-10-05 18:51:02', '2021-10-05 18:51:02', 'PL', NULL, NULL),
(495, 90, 'adfs', 'sadsad', '123123123', '', '', '', '', '2021-10-05 18:51:02', '2021-10-05 18:51:02', 'PL', NULL, NULL),
(496, 62, 'adfs', '', '', '', '', '', '', '2021-10-05 18:52:30', '2021-10-05 18:52:30', 'PL', NULL, NULL),
(497, 62, 'adfs', '', '', '', '', '', '', '2021-10-05 18:52:30', '2021-10-05 18:52:30', 'PL', NULL, NULL),
(498, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:52:50', '2021-10-05 18:52:50', 'PL', NULL, NULL),
(499, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:52:50', '2021-10-05 18:52:50', 'PL', NULL, NULL),
(500, 90, 'adfs', '', '', '', '', '', '', '2021-10-05 18:53:50', '2021-10-05 18:53:50', 'PL', NULL, NULL),
(501, 90, 'adfs', '', '', '', '', '', '', '2021-10-05 18:53:50', '2021-10-05 18:53:50', 'PL', NULL, NULL),
(502, 90, 'adfs', '', '', '', '', '', '', '2021-10-05 18:55:25', '2021-10-05 18:55:26', 'PL', NULL, NULL),
(503, 90, 'adfs', '', '', '', '', '', '', '2021-10-05 18:55:25', '2021-10-05 18:55:26', 'PL', NULL, NULL),
(504, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:58:13', '2021-10-05 18:58:13', 'PL', NULL, NULL),
(505, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 18:58:13', '2021-10-05 18:58:13', 'PL', NULL, NULL),
(506, 90, 'adsf', '', '', '', '', '', '', '2021-10-05 19:00:59', '2021-10-05 19:00:59', 'PL', NULL, NULL),
(507, 90, 'adsf', '', '', '', '', '', '', '2021-10-05 19:00:59', '2021-10-05 19:00:59', 'PL', NULL, NULL),
(508, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:03:07', '2021-10-05 19:03:07', 'PL', NULL, NULL),
(509, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:03:07', '2021-10-05 19:03:07', 'PL', NULL, NULL),
(510, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:03:59', '2021-10-05 19:03:59', 'PL', NULL, NULL),
(511, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:03:59', '2021-10-05 19:03:59', 'PL', NULL, NULL),
(512, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:06:26', '2021-10-05 19:06:26', 'PL', NULL, NULL),
(513, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:06:26', '2021-10-05 19:06:26', 'PL', NULL, NULL),
(514, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:07:06', '2021-10-05 19:07:06', 'PL', NULL, NULL),
(515, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:07:06', '2021-10-05 19:07:06', 'PL', NULL, NULL),
(516, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:14:58', '2021-10-05 19:14:58', 'PL', NULL, NULL),
(517, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-05 19:14:58', '2021-10-05 19:14:58', 'PL', NULL, NULL),
(518, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:23:50', '2021-10-06 18:23:50', 'PL', NULL, NULL),
(519, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:23:50', '2021-10-06 18:23:50', 'PL', NULL, NULL),
(520, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:25:30', '2021-10-06 18:25:30', 'PL', NULL, NULL),
(521, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:25:30', '2021-10-06 18:25:30', 'PL', NULL, NULL),
(522, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:26:39', '2021-10-06 18:26:39', 'PL', NULL, NULL),
(523, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:26:39', '2021-10-06 18:26:39', 'PL', NULL, NULL),
(524, 90, 'adfs', '', '', '', '', '', '', '2021-10-06 18:27:38', '2021-10-06 18:27:38', 'PL', NULL, NULL),
(525, 90, 'adfs', '', '', '', '', '', '', '2021-10-06 18:27:38', '2021-10-06 18:27:38', 'PL', NULL, NULL),
(526, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:29:28', '2021-10-06 18:29:28', 'PL', NULL, NULL),
(527, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:29:28', '2021-10-06 18:29:28', 'PL', NULL, NULL),
(528, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:32:01', '2021-10-06 18:32:01', 'PL', NULL, NULL),
(529, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:32:01', '2021-10-06 18:32:01', 'PL', NULL, NULL),
(530, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:33:27', '2021-10-06 18:33:27', 'PL', NULL, NULL),
(531, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:33:27', '2021-10-06 18:33:27', 'PL', NULL, NULL),
(532, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:35:46', '2021-10-06 18:35:46', 'PL', NULL, NULL),
(533, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:35:46', '2021-10-06 18:35:46', 'PL', NULL, NULL),
(534, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:36:31', '2021-10-06 18:36:31', 'PL', NULL, NULL),
(535, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:36:31', '2021-10-06 18:36:31', 'PL', NULL, NULL),
(536, 90, 'adfs', '', '', '', '', '', '', '2021-10-06 18:41:03', '2021-10-06 18:41:03', 'PL', NULL, NULL),
(537, 90, 'adfs', '', '', '', '', '', '', '2021-10-06 18:41:03', '2021-10-06 18:41:03', 'PL', NULL, NULL),
(538, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:42:48', '2021-10-06 18:42:48', 'PL', NULL, NULL),
(539, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:42:48', '2021-10-06 18:42:48', 'PL', NULL, NULL),
(540, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:45:15', '2021-10-06 18:45:15', 'PL', NULL, NULL),
(541, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:45:15', '2021-10-06 18:45:15', 'PL', NULL, NULL),
(542, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:50:54', '2021-10-06 18:50:54', 'PL', NULL, NULL),
(543, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:50:54', '2021-10-06 18:50:54', 'PL', NULL, NULL),
(544, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:58:53', '2021-10-06 18:58:53', 'PL', NULL, NULL),
(545, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 18:58:53', '2021-10-06 18:58:53', 'PL', NULL, NULL),
(546, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:01:01', '2021-10-06 19:01:01', 'PL', NULL, NULL),
(547, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:01:01', '2021-10-06 19:01:01', 'PL', NULL, NULL),
(548, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:02:44', '2021-10-06 19:02:44', 'PL', NULL, NULL),
(549, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:02:44', '2021-10-06 19:02:44', 'PL', NULL, NULL),
(550, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:07:32', '2021-10-06 19:07:32', 'PL', NULL, NULL),
(551, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:07:32', '2021-10-06 19:07:32', 'PL', NULL, NULL),
(552, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:08:29', '2021-10-06 19:08:29', 'PL', NULL, NULL),
(553, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:08:29', '2021-10-06 19:08:29', 'PL', NULL, NULL),
(554, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:09:31', '2021-10-06 19:09:31', 'PL', NULL, NULL),
(555, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 19:09:31', '2021-10-06 19:09:31', 'PL', NULL, NULL),
(556, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 20:15:00', '2021-10-06 20:15:00', 'PL', NULL, NULL),
(557, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 20:15:00', '2021-10-06 20:15:00', 'PL', NULL, NULL),
(558, 90, 'adfs', '', '', '', '', '', '', '2021-10-06 20:34:24', '2021-10-06 20:34:24', 'PL', NULL, NULL),
(559, 90, 'adfs', '', '', '', '', '', '', '2021-10-06 20:34:24', '2021-10-06 20:34:24', 'PL', NULL, NULL),
(560, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 20:45:18', '2021-10-06 20:45:18', 'PL', NULL, NULL),
(561, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 20:45:18', '2021-10-06 20:45:18', 'PL', NULL, NULL),
(562, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 20:46:58', '2021-10-06 20:46:58', 'PL', NULL, NULL),
(563, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 20:46:58', '2021-10-06 20:46:58', 'PL', NULL, NULL),
(564, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:06:10', '2021-10-06 21:06:10', 'PL', NULL, NULL),
(565, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:06:10', '2021-10-06 21:06:10', 'PL', NULL, NULL),
(566, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:10:05', '2021-10-06 21:10:05', 'PL', NULL, NULL),
(567, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:10:05', '2021-10-06 21:10:05', 'PL', NULL, NULL),
(568, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:16:12', '2021-10-06 21:16:12', 'PL', NULL, NULL),
(569, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:16:12', '2021-10-06 21:16:12', 'PL', NULL, NULL),
(570, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:17:42', '2021-10-06 21:17:42', 'PL', NULL, NULL),
(571, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:17:42', '2021-10-06 21:17:42', 'PL', NULL, NULL),
(572, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:29:09', '2021-10-06 21:29:09', 'PL', NULL, NULL),
(573, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:29:09', '2021-10-06 21:29:09', 'PL', NULL, NULL),
(574, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:32:38', '2021-10-06 21:32:38', 'PL', NULL, NULL),
(575, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:32:38', '2021-10-06 21:32:38', 'PL', NULL, NULL),
(576, 90, 'adfs', '', '123123123', '', '', '', '', '2021-10-06 21:46:57', '2021-10-06 21:46:57', 'PL', NULL, NULL),
(577, 90, 'adfs', '', '123123123', '', '', '', '', '2021-10-06 21:46:57', '2021-10-06 21:46:57', 'PL', NULL, NULL),
(578, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:48:39', '2021-10-06 21:48:39', 'PL', NULL, NULL),
(579, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:48:39', '2021-10-06 21:48:39', 'PL', NULL, NULL),
(580, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:54:34', '2021-10-06 21:54:34', 'PL', NULL, NULL),
(581, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:54:34', '2021-10-06 21:54:34', 'PL', NULL, NULL),
(582, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:55:54', '2021-10-06 21:55:54', 'PL', NULL, NULL),
(583, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:55:54', '2021-10-06 21:55:54', 'PL', NULL, NULL),
(584, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:59:53', '2021-10-06 21:59:53', 'PL', NULL, NULL),
(585, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 21:59:53', '2021-10-06 21:59:53', 'PL', NULL, NULL),
(586, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:03:30', '2021-10-06 22:03:30', 'PL', NULL, NULL),
(587, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:03:30', '2021-10-06 22:03:30', 'PL', NULL, NULL),
(588, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:06:37', '2021-10-06 22:06:37', 'PL', NULL, NULL),
(589, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:06:37', '2021-10-06 22:06:37', 'PL', NULL, NULL),
(590, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:07:46', '2021-10-06 22:07:46', 'PL', NULL, NULL),
(591, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:07:46', '2021-10-06 22:07:46', 'PL', NULL, NULL),
(592, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:13:24', '2021-10-06 22:13:24', 'PL', NULL, NULL),
(593, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:13:24', '2021-10-06 22:13:24', 'PL', NULL, NULL),
(594, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:18:53', '2021-10-06 22:18:53', 'PL', NULL, NULL),
(595, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:18:53', '2021-10-06 22:18:53', 'PL', NULL, NULL),
(596, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:22:01', '2021-10-06 22:22:01', 'PL', NULL, NULL),
(597, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-06 22:22:01', '2021-10-06 22:22:01', 'PL', NULL, NULL),
(598, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:26:21', '2021-10-07 10:26:21', 'PL', NULL, NULL),
(599, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:26:21', '2021-10-07 10:26:21', 'PL', NULL, NULL),
(600, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:27:58', '2021-10-07 10:27:58', 'PL', NULL, NULL),
(601, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:27:58', '2021-10-07 10:27:58', 'PL', NULL, NULL),
(602, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:29:11', '2021-10-07 10:29:11', 'PL', NULL, NULL),
(603, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:29:11', '2021-10-07 10:29:11', 'PL', NULL, NULL),
(604, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:31:51', '2021-10-07 10:31:51', 'PL', NULL, NULL),
(605, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:31:51', '2021-10-07 10:31:51', 'PL', NULL, NULL),
(606, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:35:01', '2021-10-07 10:35:01', 'PL', NULL, NULL),
(607, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:35:01', '2021-10-07 10:35:01', 'PL', NULL, NULL),
(608, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:36:01', '2021-10-07 10:36:01', 'PL', NULL, NULL),
(609, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:36:01', '2021-10-07 10:36:01', 'PL', NULL, NULL),
(610, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:47:09', '2021-10-07 10:47:09', 'PL', NULL, NULL),
(611, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:47:09', '2021-10-07 10:47:09', 'PL', NULL, NULL),
(612, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:50:05', '2021-10-07 10:50:05', 'PL', NULL, NULL),
(613, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 10:50:05', '2021-10-07 10:50:05', 'PL', NULL, NULL),
(614, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:03:48', '2021-10-07 11:03:48', 'PL', NULL, NULL),
(615, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:03:48', '2021-10-07 11:03:48', 'PL', NULL, NULL),
(616, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:04:44', '2021-10-07 11:04:44', 'PL', NULL, NULL),
(617, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:04:44', '2021-10-07 11:04:44', 'PL', NULL, NULL),
(618, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:06:58', '2021-10-07 11:06:58', 'PL', NULL, NULL),
(619, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:06:58', '2021-10-07 11:06:58', 'PL', NULL, NULL),
(620, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:08:07', '2021-10-07 11:08:07', 'PL', NULL, NULL),
(621, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:08:07', '2021-10-07 11:08:07', 'PL', NULL, NULL),
(622, 62, 'adfs', 'sadsad', '123123123', '', 'agfddagfagf', 'agfdgfad', '', '2021-10-07 11:08:48', '2021-10-07 11:08:48', 'PL', NULL, NULL),
(623, 62, 'adfs', 'sadsad', '123123123', '', 'agfddagfagf', 'agfdgfad', '', '2021-10-07 11:08:48', '2021-10-07 11:08:48', 'PL', NULL, NULL),
(624, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:10:42', '2021-10-07 11:10:42', 'PL', NULL, NULL),
(625, 62, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:10:42', '2021-10-07 11:10:42', 'PL', NULL, NULL),
(626, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:13:02', '2021-10-07 11:13:02', 'PL', NULL, NULL),
(627, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:13:02', '2021-10-07 11:13:02', 'PL', NULL, NULL),
(628, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:15:17', '2021-10-07 11:15:17', 'PL', NULL, NULL),
(629, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:15:17', '2021-10-07 11:15:17', 'PL', NULL, NULL),
(630, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:16:17', '2021-10-07 11:16:17', 'PL', NULL, NULL),
(631, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:16:17', '2021-10-07 11:16:17', 'PL', NULL, NULL),
(632, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:20:01', '2021-10-07 11:20:01', 'PL', NULL, NULL),
(633, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:20:01', '2021-10-07 11:20:01', 'PL', NULL, NULL),
(634, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:21:27', '2021-10-07 11:21:27', 'PL', NULL, NULL),
(635, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:21:27', '2021-10-07 11:21:27', 'PL', NULL, NULL),
(636, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:43:35', '2021-10-07 11:43:35', 'PL', NULL, NULL),
(637, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:43:35', '2021-10-07 11:43:35', 'PL', NULL, NULL),
(638, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:46:49', '2021-10-07 11:46:50', 'PL', NULL, NULL),
(639, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:46:49', '2021-10-07 11:46:50', 'PL', NULL, NULL),
(640, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:52:24', '2021-10-07 11:52:24', 'PL', NULL, NULL),
(641, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:52:24', '2021-10-07 11:52:24', 'PL', NULL, NULL),
(642, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:55:29', '2021-10-07 11:55:29', 'PL', NULL, NULL),
(643, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:55:29', '2021-10-07 11:55:29', 'PL', NULL, NULL),
(644, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:56:38', '2021-10-07 11:56:39', 'PL', NULL, NULL),
(645, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:56:38', '2021-10-07 11:56:39', 'PL', NULL, NULL),
(646, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:58:05', '2021-10-07 11:58:05', 'PL', NULL, NULL),
(647, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 11:58:05', '2021-10-07 11:58:05', 'PL', NULL, NULL),
(648, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:04:37', '2021-10-07 12:04:37', 'PL', NULL, NULL),
(649, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:04:37', '2021-10-07 12:04:37', 'PL', NULL, NULL),
(650, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:05:33', '2021-10-07 12:05:33', 'PL', NULL, NULL),
(651, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:05:33', '2021-10-07 12:05:33', 'PL', NULL, NULL),
(652, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:07:47', '2021-10-07 12:07:47', 'PL', NULL, NULL),
(653, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:07:47', '2021-10-07 12:07:47', 'PL', NULL, NULL),
(654, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:17:00', '2021-10-07 12:17:00', 'PL', NULL, NULL),
(655, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:17:00', '2021-10-07 12:17:00', 'PL', NULL, NULL),
(656, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:18:51', '2021-10-07 12:18:51', 'PL', NULL, NULL),
(657, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:18:51', '2021-10-07 12:18:51', 'PL', NULL, NULL),
(658, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:21:01', '2021-10-07 12:21:01', 'PL', NULL, NULL),
(659, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:21:01', '2021-10-07 12:21:01', 'PL', NULL, NULL),
(660, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:47:49', '2021-10-07 12:47:49', 'PL', NULL, NULL),
(661, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:47:49', '2021-10-07 12:47:49', 'PL', NULL, NULL),
(662, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:51:10', '2021-10-07 12:51:10', 'PL', NULL, NULL),
(663, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:51:10', '2021-10-07 12:51:10', 'PL', NULL, NULL),
(664, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:52:39', '2021-10-07 12:52:39', 'PL', NULL, NULL),
(665, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:52:39', '2021-10-07 12:52:39', 'PL', NULL, NULL),
(666, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:54:48', '2021-10-07 12:54:48', 'PL', NULL, NULL),
(667, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:54:48', '2021-10-07 12:54:48', 'PL', NULL, NULL),
(668, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:59:05', '2021-10-07 12:59:05', 'PL', NULL, NULL),
(669, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:59:05', '2021-10-07 12:59:05', 'PL', NULL, NULL),
(670, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:59:58', '2021-10-07 12:59:58', 'PL', NULL, NULL),
(671, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 12:59:58', '2021-10-07 12:59:58', 'PL', NULL, NULL),
(672, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 13:02:20', '2021-10-07 13:02:20', 'PL', NULL, NULL),
(673, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 13:02:20', '2021-10-07 13:02:20', 'PL', NULL, NULL),
(674, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 13:05:13', '2021-10-07 13:05:13', 'PL', NULL, NULL),
(675, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 13:05:13', '2021-10-07 13:05:13', 'PL', NULL, NULL),
(676, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 13:07:11', '2021-10-07 13:07:11', 'PL', NULL, NULL),
(677, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 13:07:11', '2021-10-07 13:07:11', 'PL', NULL, NULL),
(678, 90, 'Szymon', 'Mlonek', '745223585', '', 'Mobbyn', 'Warszawa', '', '2021-10-07 13:11:21', '2021-10-07 13:11:21', 'PL', NULL, NULL),
(679, 90, 'Szymon', 'Mlonek', '745223585', '', 'Mobbyn', 'Warszawa', '', '2021-10-07 13:11:21', '2021-10-07 13:11:21', 'PL', NULL, NULL),
(680, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 13:39:46', '2021-10-07 13:39:46', 'PL', NULL, NULL),
(681, 90, 'adfs', 'sadsad', '', '', '', '', '', '2021-10-07 13:39:46', '2021-10-07 13:39:46', 'PL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_address_log_entries`
--

CREATE TABLE `sylius_address_log_entries` (
  `id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_address_log_entries`
--

INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(1, 'create', '2019-09-12 14:25:19', '1', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(2, 'create', '2019-09-12 14:25:19', '2', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(3, 'create', '2021-05-10 11:41:06', '3', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Anna\";s:8:\"lastName\";s:6:\"Dyńka\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(4, 'create', '2021-05-10 11:41:06', '4', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Anna\";s:8:\"lastName\";s:6:\"Dyńka\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(5, 'create', '2021-05-10 11:41:06', '5', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Anna\";s:8:\"lastName\";s:6:\"Dyńka\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(6, 'create', '2021-07-12 10:32:33', '6', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"asdasd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"111222333\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:5:\"asdas\";s:4:\"city\";s:6:\"asdsad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(7, 'create', '2021-07-12 10:32:33', '7', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"asdasd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"111222333\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:5:\"asdas\";s:4:\"city\";s:6:\"asdsad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(8, 'create', '2021-07-12 10:32:33', '8', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"asdasd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"111222333\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:5:\"asdas\";s:4:\"city\";s:6:\"asdsad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(9, 'create', '2021-07-12 11:43:52', '9', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"asdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(10, 'create', '2021-07-12 11:43:52', '10', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"asdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(11, 'create', '2021-07-12 12:05:36', '11', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"asdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(12, 'create', '2021-07-12 12:05:36', '12', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"asdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(13, 'create', '2021-07-12 12:10:05', '13', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"SDFG\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(14, 'create', '2021-07-12 12:10:05', '14', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"SDFG\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(15, 'create', '2021-07-12 12:11:02', '15', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:1:\"a\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(16, 'create', '2021-07-12 12:11:02', '16', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:1:\"a\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(17, 'create', '2021-07-12 12:14:17', '17', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"lnkmki\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(18, 'create', '2021-07-12 12:14:17', '18', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"lnkmki\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(19, 'create', '2021-07-12 12:17:25', '19', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"njkg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(20, 'create', '2021-07-12 12:17:25', '20', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"njkg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(21, 'create', '2021-07-16 10:55:01', '21', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Witam\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(22, 'create', '2021-07-16 10:55:01', '22', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Witam\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(23, 'create', '2021-07-26 11:58:50', '23', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"dsfgdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(24, 'create', '2021-07-26 11:58:50', '24', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"dsfgdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(25, 'create', '2021-07-26 11:58:50', '25', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"dsfgdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(26, 'create', '2021-07-26 12:00:22', '26', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:10:\"dgfhgdfgfd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(27, 'create', '2021-07-26 12:00:22', '27', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:10:\"dgfhgdfgfd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(28, 'create', '2021-07-26 12:00:22', '28', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:10:\"dgfhgdfgfd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(29, 'create', '2021-07-26 12:08:43', '29', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"dfgdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:8:\"11222333\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(30, 'create', '2021-07-26 12:08:43', '30', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"dfgdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:8:\"11222333\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(31, 'create', '2021-07-28 15:25:28', '31', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Imie\";s:8:\"lastName\";s:1:\"i\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(32, 'create', '2021-07-28 15:25:28', '32', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Imie\";s:8:\"lastName\";s:1:\"i\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(33, 'create', '2021-07-28 15:25:28', '33', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Imie\";s:8:\"lastName\";s:1:\"i\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(34, 'create', '2021-07-29 10:42:53', '34', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"dsfgdfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(35, 'create', '2021-07-29 10:42:53', '35', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"dsfgdfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(36, 'create', '2021-08-11 15:20:58', '36', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(37, 'create', '2021-08-11 15:20:58', '37', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(38, 'create', '2021-08-11 15:20:58', '38', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(39, 'create', '2021-08-11 15:26:58', '39', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"ghfhfgfghhgf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(40, 'create', '2021-08-11 15:26:58', '40', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"ghfhfgfghhgf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(41, 'create', '2021-08-11 15:26:58', '41', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"ghfhfgfghhgf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(42, 'create', '2021-08-11 15:28:41', '42', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:10:\"gfgfgfhfgh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(43, 'create', '2021-08-11 15:28:41', '43', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:10:\"gfgfgfhfgh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(44, 'create', '2021-08-11 15:28:41', '44', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:10:\"gfgfgfhfgh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(45, 'create', '2021-08-11 15:29:57', '45', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"dgf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(46, 'create', '2021-08-11 15:29:57', '46', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"dgf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(47, 'create', '2021-08-12 08:56:59', '47', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(48, 'create', '2021-08-12 08:56:59', '48', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(49, 'create', '2021-08-12 09:04:25', '49', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"fggh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(50, 'create', '2021-08-12 09:04:25', '50', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"fggh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(51, 'create', '2021-08-12 09:05:40', '51', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"rweeeee\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(52, 'create', '2021-08-12 09:05:40', '52', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"rweeeee\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(53, 'create', '2021-08-12 09:07:22', '53', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:11:\"gcghjhjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(54, 'create', '2021-08-12 09:07:22', '54', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:11:\"gcghjhjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(55, 'create', '2021-08-12 09:08:13', '55', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"sdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(56, 'create', '2021-08-12 09:08:13', '56', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"sdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(57, 'create', '2021-08-12 09:10:56', '57', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"asdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(58, 'create', '2021-08-12 09:10:56', '58', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"asdf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(59, 'create', '2021-08-12 09:11:51', '59', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(60, 'create', '2021-08-12 09:11:51', '60', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(61, 'create', '2021-08-12 09:15:33', '61', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:11:\"gdhhjgdghfg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(62, 'create', '2021-08-12 09:15:33', '62', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:11:\"gdhhjgdghfg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(63, 'create', '2021-08-12 09:17:12', '63', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(64, 'create', '2021-08-12 09:17:12', '64', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(65, 'create', '2021-08-12 09:20:09', '65', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(66, 'create', '2021-08-12 09:20:09', '66', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(67, 'create', '2021-08-12 09:21:39', '67', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(68, 'create', '2021-08-12 09:21:39', '68', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(69, 'create', '2021-08-12 09:24:09', '69', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"dsfgdfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(70, 'create', '2021-08-12 09:24:09', '70', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"dsfgdfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(71, 'create', '2021-08-12 09:30:17', '71', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(72, 'create', '2021-08-12 09:30:17', '72', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(73, 'create', '2021-08-12 09:31:08', '73', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(74, 'create', '2021-08-12 09:31:08', '74', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(75, 'create', '2021-08-12 09:32:10', '75', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(76, 'create', '2021-08-12 09:32:10', '76', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(77, 'create', '2021-08-12 09:35:24', '77', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(78, 'create', '2021-08-12 09:35:24', '78', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(79, 'create', '2021-08-12 09:37:37', '79', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(80, 'create', '2021-08-12 09:37:37', '80', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(81, 'create', '2021-08-12 09:39:10', '81', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(82, 'create', '2021-08-12 09:39:10', '82', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(83, 'create', '2021-08-12 09:40:16', '83', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(84, 'create', '2021-08-12 09:40:16', '84', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(85, 'create', '2021-08-12 09:42:00', '85', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(86, 'create', '2021-08-12 09:42:00', '86', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(87, 'create', '2021-08-12 09:52:39', '87', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(88, 'create', '2021-08-12 09:52:39', '88', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(89, 'create', '2021-08-12 09:59:54', '89', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(90, 'create', '2021-08-12 09:59:54', '90', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(91, 'create', '2021-08-12 10:01:39', '91', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(92, 'create', '2021-08-12 10:01:39', '92', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(93, 'create', '2021-08-12 10:05:46', '93', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(94, 'create', '2021-08-12 10:05:46', '94', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(95, 'create', '2021-08-12 10:07:55', '95', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(96, 'create', '2021-08-12 10:07:55', '96', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(97, 'create', '2021-08-12 10:11:25', '97', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(98, 'create', '2021-08-12 10:11:25', '98', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(99, 'create', '2021-08-12 10:13:06', '99', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(100, 'create', '2021-08-12 10:13:06', '100', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(101, 'create', '2021-08-12 10:14:53', '101', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(102, 'create', '2021-08-12 10:14:53', '102', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(103, 'create', '2021-08-12 10:16:00', '103', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(104, 'create', '2021-08-12 10:16:00', '104', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(105, 'create', '2021-08-12 10:17:57', '105', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(106, 'create', '2021-08-12 10:17:57', '106', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(107, 'create', '2021-08-12 10:22:08', '107', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(108, 'create', '2021-08-12 10:22:08', '108', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(109, 'create', '2021-08-12 10:27:05', '109', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(110, 'create', '2021-08-12 10:27:05', '110', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(111, 'create', '2021-08-12 10:28:41', '111', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(112, 'create', '2021-08-12 10:28:41', '112', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(113, 'create', '2021-08-12 10:32:26', '113', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(114, 'create', '2021-08-12 10:32:26', '114', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(115, 'create', '2021-08-12 10:34:03', '115', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(116, 'create', '2021-08-12 10:34:03', '116', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(117, 'create', '2021-08-12 10:35:39', '117', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(118, 'create', '2021-08-12 10:35:39', '118', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(119, 'create', '2021-08-12 10:38:52', '119', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(120, 'create', '2021-08-12 10:38:52', '120', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(121, 'create', '2021-08-12 10:41:28', '121', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:9:\"111222333\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(122, 'create', '2021-08-12 10:41:28', '122', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:9:\"111222333\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(123, 'create', '2021-08-12 10:43:10', '123', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(124, 'create', '2021-08-12 10:43:10', '124', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(125, 'create', '2021-08-12 10:50:58', '125', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"uky\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:3:\"554\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"yukyuk\";s:4:\"city\";s:6:\"yukyuk\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(126, 'create', '2021-08-12 10:50:58', '126', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"uky\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:3:\"554\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"yukyuk\";s:4:\"city\";s:6:\"yukyuk\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(127, 'create', '2021-08-12 10:50:58', '127', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"uky\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:3:\"554\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"yukyuk\";s:4:\"city\";s:6:\"yukyuk\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(128, 'create', '2021-08-12 10:53:29', '128', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"jkl.jk.j\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:8:\"54635356\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"jkjj\";s:4:\"city\";s:7:\"ghjghjg\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(129, 'create', '2021-08-12 10:53:29', '129', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"jkl.jk.j\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:8:\"54635356\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"jkjj\";s:4:\"city\";s:7:\"ghjghjg\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(130, 'create', '2021-08-12 10:53:29', '130', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"jkl.jk.j\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:8:\"54635356\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"jkjj\";s:4:\"city\";s:7:\"ghjghjg\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(131, 'create', '2021-08-12 10:55:36', '131', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:1:\"m\";s:8:\"lastName\";s:3:\"nm,\";s:11:\"phoneNumber\";s:4:\"6856\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"nm,nm,\";s:4:\"city\";s:7:\"nm,nm,n\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(132, 'create', '2021-08-12 10:55:36', '132', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:1:\"m\";s:8:\"lastName\";s:3:\"nm,\";s:11:\"phoneNumber\";s:4:\"6856\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"nm,nm,\";s:4:\"city\";s:7:\"nm,nm,n\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(133, 'create', '2021-08-12 10:55:36', '133', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:1:\"m\";s:8:\"lastName\";s:3:\"nm,\";s:11:\"phoneNumber\";s:4:\"6856\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"nm,nm,\";s:4:\"city\";s:7:\"nm,nm,n\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(134, 'create', '2021-08-12 10:58:03', '134', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"uyuy\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:6:\"757578\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"yuiyui\";s:4:\"city\";s:5:\"yuiyu\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(135, 'create', '2021-08-12 10:58:03', '135', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"uyuy\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:6:\"757578\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"yuiyui\";s:4:\"city\";s:5:\"yuiyu\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(136, 'create', '2021-08-12 10:58:03', '136', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"uyuy\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:6:\"757578\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"yuiyui\";s:4:\"city\";s:5:\"yuiyu\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(137, 'create', '2021-08-12 10:59:26', '137', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"hjl,hlh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:6:\"535635\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"hjkhjk\";s:4:\"city\";s:7:\"hjkhjhk\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(138, 'create', '2021-08-12 10:59:26', '138', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"hjl,hlh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:6:\"535635\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"hjkhjk\";s:4:\"city\";s:7:\"hjkhjhk\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(139, 'create', '2021-08-12 10:59:26', '139', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"hjl,hlh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:6:\"535635\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"hjkhjk\";s:4:\"city\";s:7:\"hjkhjhk\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(140, 'create', '2021-08-12 11:02:47', '140', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"rgdrgre\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:4:\"5785\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:8:\"i76yui67\";s:4:\"city\";s:6:\"67i67i\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(141, 'create', '2021-08-12 11:02:47', '141', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"rgdrgre\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:4:\"5785\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:8:\"i76yui67\";s:4:\"city\";s:6:\"67i67i\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(142, 'create', '2021-08-12 11:02:47', '142', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"rgdrgre\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:4:\"5785\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:8:\"i76yui67\";s:4:\"city\";s:6:\"67i67i\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(143, 'create', '2021-08-12 11:07:04', '143', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"rytryrtyr\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(144, 'create', '2021-08-12 11:07:04', '144', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"rytryrtyr\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(145, 'create', '2021-08-12 11:07:04', '145', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"rytryrtyr\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(146, 'create', '2021-08-12 11:09:21', '146', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"78997897\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(147, 'create', '2021-08-12 11:09:21', '147', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"78997897\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(148, 'create', '2021-08-12 11:09:21', '148', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"78997897\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(149, 'create', '2021-08-12 11:13:25', '149', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"ghmjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"ghjghj\";s:4:\"city\";s:5:\"gjggh\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(150, 'create', '2021-08-12 11:13:25', '150', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"ghmjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"ghjghj\";s:4:\"city\";s:5:\"gjggh\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(151, 'create', '2021-08-12 11:13:25', '151', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"ghmjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"ghjghj\";s:4:\"city\";s:5:\"gjggh\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(152, 'create', '2021-08-12 11:14:38', '152', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"ertetr\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(153, 'create', '2021-08-12 11:14:38', '153', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"ertetr\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(154, 'create', '2021-08-12 11:17:08', '154', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"jhukujkh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(155, 'create', '2021-08-12 11:17:08', '155', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"jhukujkh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(156, 'create', '2021-08-12 11:18:31', '156', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"ghyjgh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(157, 'create', '2021-08-12 11:18:31', '157', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"ghyjgh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(158, 'create', '2021-08-12 11:18:31', '158', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"ghyjgh\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(159, 'create', '2021-08-12 11:20:03', '159', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"dfhgf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(160, 'create', '2021-08-12 11:20:03', '160', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"dfhgf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(161, 'create', '2021-08-12 11:23:10', '161', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"fgdd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(162, 'create', '2021-08-12 11:23:10', '162', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"fgdd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(163, 'create', '2021-08-12 11:24:30', '163', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"dfd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(164, 'create', '2021-08-12 11:24:30', '164', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"dfd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(165, 'create', '2021-08-12 11:25:40', '165', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"uyjtyut\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(166, 'create', '2021-08-12 11:25:40', '166', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"uyjtyut\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(167, 'create', '2021-08-12 11:27:02', '167', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"uiyiyu\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(168, 'create', '2021-08-12 11:27:02', '168', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"uiyiyu\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(169, 'create', '2021-08-12 11:32:28', '169', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"uyiyi\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(170, 'create', '2021-08-12 11:32:28', '170', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"uyiyi\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(171, 'create', '2021-08-12 11:34:28', '171', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"iouio\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(172, 'create', '2021-08-12 11:34:28', '172', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"iouio\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(173, 'create', '2021-08-12 11:34:28', '173', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"iouio\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(174, 'create', '2021-08-12 11:35:40', '174', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"567567\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(175, 'create', '2021-08-12 11:35:40', '175', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"567567\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(176, 'create', '2021-08-12 11:38:53', '176', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"6565\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(177, 'create', '2021-08-12 11:38:53', '177', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"6565\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(178, 'create', '2021-08-12 11:39:57', '178', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"tyujty\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(179, 'create', '2021-08-12 11:39:57', '179', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"tyujty\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(180, 'create', '2021-08-12 11:40:44', '180', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"tyujtytu\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(181, 'create', '2021-08-12 11:40:44', '181', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"tyujtytu\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(182, 'create', '2021-08-12 11:44:12', '182', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"rtyrt\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(183, 'create', '2021-08-12 11:44:12', '183', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"rtyrt\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(184, 'create', '2021-08-12 11:44:12', '184', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"rtyrt\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(185, 'create', '2021-08-12 11:46:33', '185', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"dhdt\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(186, 'create', '2021-08-12 11:46:33', '186', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"dhdt\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(187, 'create', '2021-08-12 11:48:25', '187', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"67867\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(188, 'create', '2021-08-12 11:48:25', '188', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"67867\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(189, 'create', '2021-08-12 11:49:49', '189', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"gff\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(190, 'create', '2021-08-12 11:49:49', '190', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"gff\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(191, 'create', '2021-08-12 11:51:02', '191', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"uioui\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(192, 'create', '2021-08-12 11:51:02', '192', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"uioui\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(193, 'create', '2021-08-12 11:51:02', '193', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"uioui\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(194, 'create', '2021-08-12 11:53:46', '194', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"gkg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(195, 'create', '2021-08-12 11:53:46', '195', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"gkg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(196, 'create', '2021-08-12 11:54:56', '196', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"vnvvbn\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(197, 'create', '2021-08-12 11:54:56', '197', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"vnvvbn\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(198, 'create', '2021-08-12 11:54:56', '198', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"vnvvbn\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(199, 'create', '2021-08-12 11:56:34', '199', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"jghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(200, 'create', '2021-08-12 11:56:34', '200', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"jghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(201, 'create', '2021-08-12 11:58:18', '201', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:11:\"Twoja firma\";s:4:\"city\";s:30:\"ul. Ciasa 71, 00-001, Warszawa\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(202, 'create', '2021-08-12 11:58:18', '202', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:11:\"Twoja firma\";s:4:\"city\";s:30:\"ul. Ciasa 71, 00-001, Warszawa\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(203, 'create', '2021-08-12 11:59:28', '203', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(204, 'create', '2021-08-12 11:59:28', '204', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(205, 'create', '2021-08-12 12:10:49', '205', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:7:\"5485748\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"sdgs\";s:4:\"city\";s:15:\"sfdfs, Warszawa\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(206, 'create', '2021-08-12 12:10:49', '206', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:7:\"5485748\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"sdgs\";s:4:\"city\";s:15:\"sfdfs, Warszawa\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(207, 'create', '2021-08-12 12:40:10', '207', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:8:\"54635356\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(208, 'create', '2021-08-12 12:40:10', '208', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:8:\"54635356\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(209, 'create', '2021-08-12 12:41:29', '209', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(210, 'create', '2021-08-12 12:41:29', '210', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(211, 'create', '2021-08-12 12:42:24', '211', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:6:\"535635\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(212, 'create', '2021-08-12 12:42:24', '212', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:6:\"535635\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(213, 'create', '2021-08-12 12:47:59', '213', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"677\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(214, 'create', '2021-08-12 12:47:59', '214', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"677\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(215, 'create', '2021-08-12 12:53:32', '215', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"ghmjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(216, 'create', '2021-08-12 12:53:32', '216', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"ghmjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(217, 'create', '2021-08-12 13:11:42', '217', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(218, 'create', '2021-08-12 13:11:42', '218', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(219, 'create', '2021-08-12 13:12:49', '219', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(220, 'create', '2021-08-12 13:12:49', '220', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(221, 'create', '2021-08-12 13:17:34', '221', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"78i778\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(222, 'create', '2021-08-12 13:17:34', '222', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"78i778\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(223, 'create', '2021-08-12 13:20:50', '223', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"iouio\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(224, 'create', '2021-08-12 13:20:50', '224', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"iouio\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(225, 'create', '2021-08-12 13:22:12', '225', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(226, 'create', '2021-08-12 13:22:12', '226', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(227, 'create', '2021-08-12 13:24:19', '227', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(228, 'create', '2021-08-12 13:24:19', '228', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(229, 'create', '2021-08-12 13:27:55', '229', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(230, 'create', '2021-08-12 13:27:55', '230', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(231, 'create', '2021-08-12 13:34:17', '231', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(232, 'create', '2021-08-12 13:34:17', '232', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(233, 'create', '2021-08-12 13:36:49', '233', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(234, 'create', '2021-08-12 13:36:49', '234', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(235, 'create', '2021-08-12 13:38:09', '235', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(236, 'create', '2021-08-12 13:38:09', '236', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(237, 'create', '2021-08-12 13:39:51', '237', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(238, 'create', '2021-08-12 13:39:51', '238', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(239, 'create', '2021-08-12 13:44:11', '239', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(240, 'create', '2021-08-12 13:44:11', '240', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(241, 'create', '2021-08-12 13:59:35', '241', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(242, 'create', '2021-08-12 13:59:35', '242', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(243, 'create', '2021-08-12 14:06:18', '243', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(244, 'create', '2021-08-12 14:06:18', '244', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(245, 'create', '2021-08-12 14:07:11', '245', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(246, 'create', '2021-08-12 14:07:11', '246', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(247, 'create', '2021-08-12 14:08:39', '247', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(248, 'create', '2021-08-12 14:08:39', '248', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(249, 'create', '2021-08-12 14:10:15', '249', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(250, 'create', '2021-08-12 14:10:15', '250', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(251, 'create', '2021-08-12 14:14:19', '251', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(252, 'create', '2021-08-12 14:14:19', '252', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(253, 'create', '2021-08-12 14:15:47', '253', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(254, 'create', '2021-08-12 14:15:47', '254', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(255, 'create', '2021-08-12 14:17:27', '255', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(256, 'create', '2021-08-12 14:17:27', '256', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(257, 'create', '2021-08-12 14:25:59', '257', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(258, 'create', '2021-08-12 14:25:59', '258', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(259, 'create', '2021-08-12 14:28:56', '259', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(260, 'create', '2021-08-12 14:28:56', '260', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(261, 'create', '2021-08-12 14:29:55', '261', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(262, 'create', '2021-08-12 14:29:55', '262', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(263, 'create', '2021-08-12 14:31:14', '263', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(264, 'create', '2021-08-12 14:31:14', '264', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(265, 'create', '2021-08-12 14:33:19', '265', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(266, 'create', '2021-08-12 14:33:19', '266', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(267, 'create', '2021-08-12 14:35:52', '267', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(268, 'create', '2021-08-12 14:35:52', '268', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(269, 'create', '2021-08-12 14:36:45', '269', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(270, 'create', '2021-08-12 14:36:45', '270', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(271, 'create', '2021-08-12 14:37:14', '271', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(272, 'create', '2021-08-12 14:37:14', '272', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(273, 'create', '2021-08-12 14:39:23', '273', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(274, 'create', '2021-08-12 14:39:23', '274', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(275, 'create', '2021-08-12 14:41:20', '275', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(276, 'create', '2021-08-12 14:41:20', '276', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(277, 'create', '2021-08-12 14:42:27', '277', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(278, 'create', '2021-08-12 14:42:27', '278', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(279, 'create', '2021-08-12 14:47:14', '279', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(280, 'create', '2021-08-12 14:47:14', '280', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(281, 'create', '2021-08-12 15:02:03', '281', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(282, 'create', '2021-08-12 15:02:03', '282', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(283, 'create', '2021-08-12 15:05:37', '283', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(284, 'create', '2021-08-12 15:05:37', '284', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(285, 'create', '2021-08-12 15:08:23', '285', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(286, 'create', '2021-08-12 15:08:23', '286', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(287, 'create', '2021-08-12 15:26:23', '287', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(288, 'create', '2021-08-12 15:26:23', '288', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(289, 'create', '2021-08-12 15:46:12', '289', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(290, 'create', '2021-08-12 15:46:12', '290', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:11:\"748 545 545\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:18:\"VAThole industries\";s:4:\"city\";s:7:\"Siedlce\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(291, 'create', '2021-08-12 15:49:03', '291', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(292, 'create', '2021-08-12 15:49:03', '292', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(293, 'create', '2021-08-12 15:50:03', '293', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(294, 'create', '2021-08-12 15:50:03', '294', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(295, 'create', '2021-08-12 15:51:07', '295', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(296, 'create', '2021-08-12 15:51:07', '296', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(297, 'create', '2021-08-12 15:51:50', '297', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(298, 'create', '2021-08-12 15:51:50', '298', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(299, 'create', '2021-08-12 15:52:20', '299', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(300, 'create', '2021-08-12 15:52:20', '300', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(301, 'create', '2021-08-12 15:55:16', '301', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(302, 'create', '2021-08-12 15:55:16', '302', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(303, 'create', '2021-08-12 15:58:11', '303', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(304, 'create', '2021-08-12 15:58:11', '304', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(305, 'create', '2021-08-12 16:02:16', '305', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(306, 'create', '2021-08-12 16:02:16', '306', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(307, 'create', '2021-08-12 16:03:56', '307', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(308, 'create', '2021-08-12 16:03:56', '308', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(309, 'create', '2021-08-13 08:49:10', '309', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(310, 'create', '2021-08-13 08:49:10', '310', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(311, 'create', '2021-08-13 08:52:08', '311', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(312, 'create', '2021-08-13 08:52:08', '312', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(313, 'create', '2021-08-13 08:57:03', '313', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"asd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(314, 'create', '2021-08-13 08:57:03', '314', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"asd\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(315, 'create', '2021-08-13 09:16:12', '315', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(316, 'create', '2021-08-13 09:16:12', '316', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(317, 'create', '2021-08-13 09:16:12', '317', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(318, 'create', '2021-08-13 09:36:37', '318', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(319, 'create', '2021-08-13 09:36:37', '319', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(320, 'create', '2021-08-13 09:37:19', '320', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(321, 'create', '2021-08-13 09:37:19', '321', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(322, 'create', '2021-08-13 09:44:59', '322', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(323, 'create', '2021-08-13 09:44:59', '323', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(324, 'create', '2021-08-13 10:09:19', '324', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(325, 'create', '2021-08-13 10:09:19', '325', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(326, 'create', '2021-08-16 13:39:12', '326', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(327, 'create', '2021-08-16 13:39:12', '327', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(328, 'create', '2021-08-17 09:25:11', '328', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(329, 'create', '2021-08-17 09:25:11', '329', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(330, 'create', '2021-08-17 09:40:21', '330', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(331, 'create', '2021-08-17 09:40:21', '331', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(332, 'create', '2021-08-17 11:31:04', '332', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(333, 'create', '2021-08-17 11:31:04', '333', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(334, 'create', '2021-08-17 13:01:11', '334', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"sdfghj\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(335, 'create', '2021-08-17 13:01:11', '335', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"sdfghj\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(336, 'create', '2021-08-17 13:01:11', '336', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"sdfghj\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(337, 'create', '2021-08-17 13:09:43', '337', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(338, 'create', '2021-08-17 13:09:43', '338', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(339, 'create', '2021-08-17 13:57:50', '339', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(340, 'create', '2021-08-17 13:57:50', '340', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(341, 'create', '2021-08-17 14:59:02', '341', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"bszvcx\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(342, 'create', '2021-08-17 14:59:02', '342', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"bszvcx\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(343, 'create', '2021-08-17 15:28:15', '343', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(344, 'create', '2021-08-17 15:28:15', '344', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(345, 'create', '2021-08-17 16:02:06', '345', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(346, 'create', '2021-08-17 16:02:06', '346', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(347, 'create', '2021-08-17 16:04:19', '347', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(348, 'create', '2021-08-17 16:04:19', '348', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(349, 'create', '2021-08-17 16:05:50', '349', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(350, 'create', '2021-08-17 16:05:50', '350', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(351, 'create', '2021-08-18 09:50:57', '351', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(352, 'create', '2021-08-18 09:50:57', '352', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(353, 'create', '2021-08-18 09:56:27', '353', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(354, 'create', '2021-08-18 09:56:27', '354', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(355, 'create', '2021-08-18 10:01:35', '355', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(356, 'create', '2021-08-18 10:01:35', '356', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(357, 'create', '2021-08-18 10:04:30', '357', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(358, 'create', '2021-08-18 10:04:30', '358', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(359, 'create', '2021-08-18 10:07:05', '359', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(360, 'create', '2021-08-18 10:07:05', '360', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(361, 'create', '2021-08-18 10:08:57', '361', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(362, 'create', '2021-08-18 10:08:57', '362', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:12:\"dfdfaokjfsda\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(363, 'create', '2021-08-18 14:14:38', '363', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"mnvmnmhv\";s:8:\"lastName\";s:4:\"hjgf\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(364, 'create', '2021-08-18 14:14:38', '364', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"mnvmnmhv\";s:8:\"lastName\";s:4:\"hjgf\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(365, 'create', '2021-08-18 14:14:38', '365', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"mnvmnmhv\";s:8:\"lastName\";s:4:\"hjgf\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(366, 'create', '2021-08-18 14:16:11', '366', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"hhdh\";s:8:\"lastName\";s:3:\"hdh\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(367, 'create', '2021-08-18 14:16:11', '367', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"hhdh\";s:8:\"lastName\";s:3:\"hdh\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(368, 'create', '2021-08-18 14:16:11', '368', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"hhdh\";s:8:\"lastName\";s:3:\"hdh\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(369, 'create', '2021-08-18 16:03:15', '369', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"ghmjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(370, 'create', '2021-08-18 16:03:15', '370', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"ghmjghjg\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(371, 'create', '2021-08-18 16:04:53', '371', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(372, 'create', '2021-08-18 16:04:53', '372', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(373, 'create', '2021-08-18 16:09:29', '373', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(374, 'create', '2021-08-18 16:09:29', '374', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(375, 'create', '2021-08-19 12:54:43', '375', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(376, 'create', '2021-08-19 12:54:43', '376', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(377, 'create', '2021-08-19 12:55:47', '377', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(378, 'create', '2021-08-19 12:55:47', '378', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(379, 'create', '2021-08-19 12:57:19', '379', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(380, 'create', '2021-08-19 12:57:19', '380', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(381, 'create', '2021-08-19 12:58:42', '381', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"sadf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(382, 'create', '2021-08-19 12:58:42', '382', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"sadf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(383, 'create', '2021-08-19 12:58:42', '383', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"sadf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(384, 'create', '2021-08-19 13:02:01', '384', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(385, 'create', '2021-08-19 13:02:01', '385', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:14:\"wdfsdafsadfsad\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(386, 'create', '2021-08-19 15:46:54', '386', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(387, 'create', '2021-08-19 15:46:54', '387', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(388, 'create', '2021-08-20 08:48:04', '388', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(389, 'create', '2021-08-20 08:48:04', '389', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Jan\";s:8:\"lastName\";s:8:\"Kowalski\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(390, 'create', '2021-10-01 11:42:39', '390', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(391, 'create', '2021-10-01 11:42:39', '391', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(392, 'create', '2021-10-01 11:42:39', '392', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(393, 'create', '2021-10-01 11:47:49', '393', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(394, 'create', '2021-10-01 11:47:49', '394', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(395, 'create', '2021-10-01 11:49:07', '395', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(396, 'create', '2021-10-01 11:49:07', '396', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(397, 'create', '2021-10-01 20:32:51', '397', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(398, 'create', '2021-10-01 20:32:51', '398', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(399, 'create', '2021-10-01 20:33:20', '399', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(400, 'create', '2021-10-01 20:33:20', '400', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(401, 'create', '2021-10-01 20:33:25', '401', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(402, 'create', '2021-10-01 20:33:25', '402', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(403, 'create', '2021-10-01 20:34:28', '403', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(404, 'create', '2021-10-01 20:34:28', '404', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(405, 'create', '2021-10-01 20:34:44', '405', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(406, 'create', '2021-10-01 20:34:44', '406', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(407, 'create', '2021-10-01 20:34:49', '407', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(408, 'create', '2021-10-01 20:34:49', '408', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(409, 'create', '2021-10-01 20:34:55', '409', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(410, 'create', '2021-10-01 20:34:55', '410', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(411, 'create', '2021-10-01 20:36:34', '411', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(412, 'create', '2021-10-01 20:36:34', '412', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(413, 'create', '2021-10-01 20:36:40', '413', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(414, 'create', '2021-10-01 20:36:40', '414', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(415, 'create', '2021-10-01 20:36:52', '415', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(416, 'create', '2021-10-01 20:36:52', '416', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(417, 'create', '2021-10-01 20:41:01', '417', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(418, 'create', '2021-10-01 20:41:01', '418', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(419, 'create', '2021-10-01 20:42:42', '419', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(420, 'create', '2021-10-01 20:42:42', '420', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(421, 'create', '2021-10-01 20:44:31', '421', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(422, 'create', '2021-10-01 20:44:31', '422', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(423, 'create', '2021-10-01 20:49:11', '423', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(424, 'create', '2021-10-01 20:49:11', '424', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(425, 'create', '2021-10-01 20:51:33', '425', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(426, 'create', '2021-10-01 20:51:33', '426', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(427, 'create', '2021-10-01 20:52:17', '427', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(428, 'create', '2021-10-01 20:52:17', '428', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(429, 'create', '2021-10-01 20:52:53', '429', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(430, 'create', '2021-10-01 20:52:53', '430', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(431, 'create', '2021-10-01 20:52:57', '431', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(432, 'create', '2021-10-01 20:52:57', '432', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(433, 'create', '2021-10-01 20:58:32', '433', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(434, 'create', '2021-10-01 20:58:32', '434', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(435, 'create', '2021-10-01 21:12:47', '435', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(436, 'create', '2021-10-01 21:12:47', '436', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(437, 'create', '2021-10-01 21:22:51', '437', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(438, 'create', '2021-10-01 21:22:51', '438', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(439, 'create', '2021-10-01 21:23:15', '439', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(440, 'create', '2021-10-01 21:23:15', '440', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(441, 'create', '2021-10-01 21:23:24', '441', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(442, 'create', '2021-10-01 21:23:24', '442', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(443, 'create', '2021-10-05 17:11:38', '443', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(444, 'create', '2021-10-05 17:11:38', '444', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(445, 'create', '2021-10-05 17:18:28', '445', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(446, 'create', '2021-10-05 17:18:28', '446', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(447, 'create', '2021-10-05 17:18:37', '447', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(448, 'create', '2021-10-05 17:18:37', '448', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:0:\"\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(449, 'create', '2021-10-05 17:21:39', '449', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(450, 'create', '2021-10-05 17:21:39', '450', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(451, 'create', '2021-10-05 17:21:39', '451', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(452, 'create', '2021-10-05 17:26:02', '452', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(453, 'create', '2021-10-05 17:26:02', '453', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(454, 'create', '2021-10-05 17:30:36', '454', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adsf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:11:\"agfddagfagf\";s:4:\"city\";s:8:\"agfdgfad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(455, 'create', '2021-10-05 17:30:36', '455', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adsf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:11:\"agfddagfagf\";s:4:\"city\";s:8:\"agfdgfad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(456, 'create', '2021-10-05 17:32:48', '456', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"sdfd\";s:4:\"city\";s:8:\"fdsdfdsf\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(457, 'create', '2021-10-05 17:32:48', '457', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"sdfd\";s:4:\"city\";s:8:\"fdsdfdsf\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(458, 'create', '2021-10-05 17:37:42', '458', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"sdfd\";s:4:\"city\";s:8:\"fdsdfdsf\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(459, 'create', '2021-10-05 17:37:42', '459', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:4:\"sdfd\";s:4:\"city\";s:8:\"fdsdfdsf\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(460, 'create', '2021-10-05 17:53:55', '460', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(461, 'create', '2021-10-05 17:53:55', '461', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(462, 'create', '2021-10-05 17:58:28', '462', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(463, 'create', '2021-10-05 17:58:28', '463', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(464, 'create', '2021-10-05 18:02:16', '464', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(465, 'create', '2021-10-05 18:02:16', '465', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(466, 'create', '2021-10-05 18:03:49', '466', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(467, 'create', '2021-10-05 18:03:49', '467', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(468, 'create', '2021-10-05 18:05:40', '468', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(469, 'create', '2021-10-05 18:05:40', '469', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(470, 'create', '2021-10-05 18:08:29', '470', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(471, 'create', '2021-10-05 18:08:29', '471', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(472, 'create', '2021-10-05 18:09:53', '472', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:11:\"agfddagfagf\";s:4:\"city\";s:8:\"agfdgfad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(473, 'create', '2021-10-05 18:09:53', '473', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:11:\"agfddagfagf\";s:4:\"city\";s:8:\"agfdgfad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(474, 'create', '2021-10-05 18:10:59', '474', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(475, 'create', '2021-10-05 18:10:59', '475', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(476, 'create', '2021-10-05 18:13:12', '476', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(477, 'create', '2021-10-05 18:13:12', '477', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(478, 'create', '2021-10-05 18:14:21', '478', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(479, 'create', '2021-10-05 18:14:21', '479', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(480, 'create', '2021-10-05 18:15:56', '480', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(481, 'create', '2021-10-05 18:15:56', '481', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(482, 'create', '2021-10-05 18:17:13', '482', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(483, 'create', '2021-10-05 18:17:13', '483', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(484, 'create', '2021-10-05 18:17:52', '484', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(485, 'create', '2021-10-05 18:17:52', '485', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(486, 'create', '2021-10-05 18:20:40', '486', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adsf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(487, 'create', '2021-10-05 18:20:40', '487', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adsf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(488, 'create', '2021-10-05 18:22:13', '488', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(489, 'create', '2021-10-05 18:22:13', '489', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(490, 'create', '2021-10-05 18:27:41', '490', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(491, 'create', '2021-10-05 18:27:41', '491', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(492, 'create', '2021-10-05 18:35:36', '492', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(493, 'create', '2021-10-05 18:35:36', '493', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(494, 'create', '2021-10-05 18:51:02', '494', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(495, 'create', '2021-10-05 18:51:02', '495', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(496, 'create', '2021-10-05 18:52:30', '496', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(497, 'create', '2021-10-05 18:52:30', '497', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(498, 'create', '2021-10-05 18:52:50', '498', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(499, 'create', '2021-10-05 18:52:50', '499', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(500, 'create', '2021-10-05 18:53:50', '500', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(501, 'create', '2021-10-05 18:53:50', '501', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(502, 'create', '2021-10-05 18:55:26', '502', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(503, 'create', '2021-10-05 18:55:26', '503', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(504, 'create', '2021-10-05 18:58:13', '504', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(505, 'create', '2021-10-05 18:58:13', '505', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(506, 'create', '2021-10-05 19:00:59', '506', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adsf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(507, 'create', '2021-10-05 19:00:59', '507', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adsf\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(508, 'create', '2021-10-05 19:03:07', '508', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(509, 'create', '2021-10-05 19:03:07', '509', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(510, 'create', '2021-10-05 19:03:59', '510', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(511, 'create', '2021-10-05 19:03:59', '511', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(512, 'create', '2021-10-05 19:06:26', '512', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(513, 'create', '2021-10-05 19:06:26', '513', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(514, 'create', '2021-10-05 19:07:06', '514', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(515, 'create', '2021-10-05 19:07:06', '515', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(516, 'create', '2021-10-05 19:14:58', '516', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(517, 'create', '2021-10-05 19:14:58', '517', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(518, 'create', '2021-10-06 18:23:50', '518', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(519, 'create', '2021-10-06 18:23:50', '519', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(520, 'create', '2021-10-06 18:25:30', '520', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(521, 'create', '2021-10-06 18:25:30', '521', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(522, 'create', '2021-10-06 18:26:39', '522', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(523, 'create', '2021-10-06 18:26:39', '523', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(524, 'create', '2021-10-06 18:27:38', '524', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(525, 'create', '2021-10-06 18:27:38', '525', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(526, 'create', '2021-10-06 18:29:28', '526', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(527, 'create', '2021-10-06 18:29:28', '527', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(528, 'create', '2021-10-06 18:32:01', '528', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(529, 'create', '2021-10-06 18:32:01', '529', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(530, 'create', '2021-10-06 18:33:27', '530', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(531, 'create', '2021-10-06 18:33:27', '531', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(532, 'create', '2021-10-06 18:35:46', '532', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(533, 'create', '2021-10-06 18:35:46', '533', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(534, 'create', '2021-10-06 18:36:31', '534', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(535, 'create', '2021-10-06 18:36:31', '535', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(536, 'create', '2021-10-06 18:41:03', '536', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(537, 'create', '2021-10-06 18:41:03', '537', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(538, 'create', '2021-10-06 18:42:48', '538', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(539, 'create', '2021-10-06 18:42:48', '539', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(540, 'create', '2021-10-06 18:45:16', '540', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(541, 'create', '2021-10-06 18:45:16', '541', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(542, 'create', '2021-10-06 18:50:54', '542', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(543, 'create', '2021-10-06 18:50:54', '543', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(544, 'create', '2021-10-06 18:58:54', '544', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(545, 'create', '2021-10-06 18:58:54', '545', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(546, 'create', '2021-10-06 19:01:01', '546', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(547, 'create', '2021-10-06 19:01:01', '547', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(548, 'create', '2021-10-06 19:02:44', '548', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(549, 'create', '2021-10-06 19:02:44', '549', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(550, 'create', '2021-10-06 19:07:32', '550', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(551, 'create', '2021-10-06 19:07:32', '551', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(552, 'create', '2021-10-06 19:08:29', '552', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(553, 'create', '2021-10-06 19:08:29', '553', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(554, 'create', '2021-10-06 19:09:31', '554', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(555, 'create', '2021-10-06 19:09:31', '555', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(556, 'create', '2021-10-06 20:15:00', '556', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(557, 'create', '2021-10-06 20:15:00', '557', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(558, 'create', '2021-10-06 20:34:24', '558', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(559, 'create', '2021-10-06 20:34:24', '559', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(560, 'create', '2021-10-06 20:45:18', '560', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(561, 'create', '2021-10-06 20:45:18', '561', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(562, 'create', '2021-10-06 20:46:58', '562', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(563, 'create', '2021-10-06 20:46:58', '563', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(564, 'create', '2021-10-06 21:06:10', '564', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(565, 'create', '2021-10-06 21:06:10', '565', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(566, 'create', '2021-10-06 21:10:05', '566', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(567, 'create', '2021-10-06 21:10:05', '567', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(568, 'create', '2021-10-06 21:16:12', '568', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(569, 'create', '2021-10-06 21:16:12', '569', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(570, 'create', '2021-10-06 21:17:42', '570', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(571, 'create', '2021-10-06 21:17:42', '571', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(572, 'create', '2021-10-06 21:29:09', '572', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(573, 'create', '2021-10-06 21:29:09', '573', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(574, 'create', '2021-10-06 21:32:38', '574', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(575, 'create', '2021-10-06 21:32:38', '575', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(576, 'create', '2021-10-06 21:46:57', '576', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(577, 'create', '2021-10-06 21:46:57', '577', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:0:\"\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(578, 'create', '2021-10-06 21:48:39', '578', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(579, 'create', '2021-10-06 21:48:39', '579', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(580, 'create', '2021-10-06 21:54:34', '580', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(581, 'create', '2021-10-06 21:54:34', '581', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(582, 'create', '2021-10-06 21:55:54', '582', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(583, 'create', '2021-10-06 21:55:54', '583', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(584, 'create', '2021-10-06 21:59:53', '584', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(585, 'create', '2021-10-06 21:59:53', '585', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(586, 'create', '2021-10-06 22:03:30', '586', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(587, 'create', '2021-10-06 22:03:30', '587', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(588, 'create', '2021-10-06 22:06:37', '588', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(589, 'create', '2021-10-06 22:06:37', '589', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(590, 'create', '2021-10-06 22:07:46', '590', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(591, 'create', '2021-10-06 22:07:46', '591', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(592, 'create', '2021-10-06 22:13:24', '592', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(593, 'create', '2021-10-06 22:13:24', '593', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(594, 'create', '2021-10-06 22:18:53', '594', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(595, 'create', '2021-10-06 22:18:53', '595', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(596, 'create', '2021-10-06 22:22:01', '596', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(597, 'create', '2021-10-06 22:22:01', '597', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(598, 'create', '2021-10-07 10:26:21', '598', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(599, 'create', '2021-10-07 10:26:21', '599', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(600, 'create', '2021-10-07 10:27:58', '600', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(601, 'create', '2021-10-07 10:27:58', '601', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(602, 'create', '2021-10-07 10:29:11', '602', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(603, 'create', '2021-10-07 10:29:11', '603', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(604, 'create', '2021-10-07 10:31:51', '604', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(605, 'create', '2021-10-07 10:31:51', '605', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(606, 'create', '2021-10-07 10:35:01', '606', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(607, 'create', '2021-10-07 10:35:01', '607', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(608, 'create', '2021-10-07 10:36:01', '608', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(609, 'create', '2021-10-07 10:36:01', '609', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(610, 'create', '2021-10-07 10:47:09', '610', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(611, 'create', '2021-10-07 10:47:09', '611', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(612, 'create', '2021-10-07 10:50:05', '612', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(613, 'create', '2021-10-07 10:50:05', '613', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(614, 'create', '2021-10-07 11:03:48', '614', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(615, 'create', '2021-10-07 11:03:48', '615', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(616, 'create', '2021-10-07 11:04:44', '616', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(617, 'create', '2021-10-07 11:04:44', '617', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(618, 'create', '2021-10-07 11:06:58', '618', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(619, 'create', '2021-10-07 11:06:58', '619', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(620, 'create', '2021-10-07 11:08:07', '620', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(621, 'create', '2021-10-07 11:08:07', '621', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(622, 'create', '2021-10-07 11:08:48', '622', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:11:\"agfddagfagf\";s:4:\"city\";s:8:\"agfdgfad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(623, 'create', '2021-10-07 11:08:48', '623', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:9:\"123123123\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:11:\"agfddagfagf\";s:4:\"city\";s:8:\"agfdgfad\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(624, 'create', '2021-10-07 11:10:42', '624', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(625, 'create', '2021-10-07 11:10:42', '625', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(626, 'create', '2021-10-07 11:13:02', '626', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(627, 'create', '2021-10-07 11:13:02', '627', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(628, 'create', '2021-10-07 11:15:17', '628', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(629, 'create', '2021-10-07 11:15:17', '629', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(630, 'create', '2021-10-07 11:16:17', '630', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(631, 'create', '2021-10-07 11:16:17', '631', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(632, 'create', '2021-10-07 11:20:01', '632', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(633, 'create', '2021-10-07 11:20:01', '633', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(634, 'create', '2021-10-07 11:21:27', '634', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(635, 'create', '2021-10-07 11:21:27', '635', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(636, 'create', '2021-10-07 11:43:35', '636', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(637, 'create', '2021-10-07 11:43:35', '637', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(638, 'create', '2021-10-07 11:46:50', '638', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(639, 'create', '2021-10-07 11:46:50', '639', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(640, 'create', '2021-10-07 11:52:24', '640', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(641, 'create', '2021-10-07 11:52:24', '641', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(642, 'create', '2021-10-07 11:55:29', '642', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(643, 'create', '2021-10-07 11:55:29', '643', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(644, 'create', '2021-10-07 11:56:39', '644', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(645, 'create', '2021-10-07 11:56:39', '645', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(646, 'create', '2021-10-07 11:58:05', '646', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(647, 'create', '2021-10-07 11:58:05', '647', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(648, 'create', '2021-10-07 12:04:37', '648', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(649, 'create', '2021-10-07 12:04:37', '649', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(650, 'create', '2021-10-07 12:05:33', '650', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(651, 'create', '2021-10-07 12:05:33', '651', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(652, 'create', '2021-10-07 12:07:47', '652', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(653, 'create', '2021-10-07 12:07:47', '653', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(654, 'create', '2021-10-07 12:17:00', '654', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);
INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(655, 'create', '2021-10-07 12:17:00', '655', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(656, 'create', '2021-10-07 12:18:51', '656', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(657, 'create', '2021-10-07 12:18:51', '657', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(658, 'create', '2021-10-07 12:21:01', '658', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(659, 'create', '2021-10-07 12:21:01', '659', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(660, 'create', '2021-10-07 12:47:49', '660', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(661, 'create', '2021-10-07 12:47:49', '661', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(662, 'create', '2021-10-07 12:51:10', '662', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(663, 'create', '2021-10-07 12:51:10', '663', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(664, 'create', '2021-10-07 12:52:39', '664', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(665, 'create', '2021-10-07 12:52:39', '665', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(666, 'create', '2021-10-07 12:54:48', '666', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(667, 'create', '2021-10-07 12:54:48', '667', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(668, 'create', '2021-10-07 12:59:05', '668', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(669, 'create', '2021-10-07 12:59:05', '669', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(670, 'create', '2021-10-07 12:59:58', '670', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(671, 'create', '2021-10-07 12:59:58', '671', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(672, 'create', '2021-10-07 13:02:20', '672', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(673, 'create', '2021-10-07 13:02:20', '673', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(674, 'create', '2021-10-07 13:05:13', '674', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(675, 'create', '2021-10-07 13:05:13', '675', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(676, 'create', '2021-10-07 13:07:11', '676', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(677, 'create', '2021-10-07 13:07:11', '677', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(678, 'create', '2021-10-07 13:11:21', '678', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:9:\"745223585\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"Mobbyn\";s:4:\"city\";s:8:\"Warszawa\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(679, 'create', '2021-10-07 13:11:21', '679', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Szymon\";s:8:\"lastName\";s:6:\"Mlonek\";s:11:\"phoneNumber\";s:9:\"745223585\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:6:\"Mobbyn\";s:4:\"city\";s:8:\"Warszawa\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(680, 'create', '2021-10-07 13:39:46', '680', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(681, 'create', '2021-10-07 13:39:46', '681', 'Sylius\\Component\\Core\\Model\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"adfs\";s:8:\"lastName\";s:6:\"sadsad\";s:11:\"phoneNumber\";s:0:\"\";s:6:\"street\";s:0:\"\";s:7:\"company\";s:0:\"\";s:4:\"city\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:11:\"countryCode\";s:2:\"PL\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_adjustment`
--

CREATE TABLE `sylius_adjustment` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_adjustment`
--

INSERT INTO `sylius_adjustment` (`id`, `order_id`, `order_item_id`, `order_item_unit_id`, `type`, `label`, `amount`, `is_neutral`, `is_locked`, `origin_code`, `created_at`, `updated_at`) VALUES
(73, 15, NULL, NULL, 'shipping', 'UPSSSS', 0, 0, 0, NULL, '2021-07-16 10:53:19', '2021-07-16 10:53:19'),
(99, 17, NULL, NULL, 'shipping', 'UPSSSS', 0, 0, 0, NULL, '2021-07-26 11:41:09', '2021-07-26 11:41:09'),
(100, 18, NULL, NULL, 'shipping', 'UPSSSS', 0, 0, 0, NULL, '2021-07-26 11:59:48', '2021-07-26 11:59:48'),
(139, 20, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-07-28 15:04:58', '2021-07-28 15:04:58'),
(143, 21, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-07-29 09:55:51', '2021-07-29 09:55:51'),
(147, 22, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-03 15:05:39', '2021-08-03 15:05:39'),
(292, 141, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:26:02', '2021-08-12 15:26:02'),
(293, 142, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:45:55', '2021-08-12 15:45:55'),
(294, 143, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:48:39', '2021-08-12 15:48:40'),
(295, 144, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:49:52', '2021-08-12 15:49:52'),
(296, 145, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:50:56', '2021-08-12 15:50:56'),
(297, 146, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:51:39', '2021-08-12 15:51:39'),
(298, 147, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:52:11', '2021-08-12 15:52:11'),
(299, 148, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:55:01', '2021-08-12 15:55:02'),
(300, 149, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 15:57:29', '2021-08-12 15:57:29'),
(301, 150, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 16:02:02', '2021-08-12 16:02:02'),
(302, 151, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-12 16:03:45', '2021-08-12 16:03:45'),
(304, 152, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-13 08:48:49', '2021-08-13 08:48:49'),
(305, 153, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-13 08:51:51', '2021-08-13 08:51:52'),
(306, 154, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-13 08:53:33', '2021-08-13 08:53:33'),
(307, 156, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-13 09:36:24', '2021-08-13 09:36:24'),
(308, 157, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-13 09:36:58', '2021-08-13 09:36:58'),
(309, 158, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-13 09:44:40', '2021-08-13 09:44:40'),
(312, 159, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-13 10:07:21', '2021-08-13 10:07:22'),
(352, 160, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-16 13:38:45', '2021-08-16 13:38:45'),
(353, 161, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-17 09:24:50', '2021-08-17 09:24:50'),
(356, 162, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-17 09:34:39', '2021-08-17 09:34:39'),
(362, 164, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-17 12:59:32', '2021-08-17 12:59:32'),
(363, 166, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-17 13:45:55', '2021-08-17 13:45:55'),
(364, 175, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-18 10:03:57', '2021-08-18 10:03:57'),
(367, 178, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-18 14:14:01', '2021-08-18 14:14:01'),
(368, 183, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-19 12:50:54', '2021-08-19 12:50:54'),
(374, 188, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-19 15:46:34', '2021-08-19 15:46:34'),
(376, 189, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-08-20 08:47:27', '2021-08-20 08:47:27'),
(379, 192, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-09-04 13:20:18', '2021-09-04 13:20:18'),
(381, 194, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-09-05 17:31:03', '2021-09-05 17:31:04'),
(383, 196, NULL, NULL, 'shipping', 'UPSSSS', 1, 0, 0, NULL, '2021-09-10 11:11:37', '2021-09-10 11:11:38'),
(384, 201, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-09-24 20:33:19', '2021-09-24 20:33:19'),
(389, 230, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-09-28 08:40:02', '2021-09-28 08:40:02'),
(390, 322, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-06 22:21:44', '2021-10-06 22:21:45'),
(391, 337, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 11:12:50', '2021-10-07 11:12:50'),
(392, 339, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 11:16:05', '2021-10-07 11:16:05'),
(393, 340, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 11:19:44', '2021-10-07 11:19:44'),
(394, 342, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 11:42:53', '2021-10-07 11:42:53'),
(395, 345, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 11:55:16', '2021-10-07 11:55:16'),
(396, 346, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 11:56:28', '2021-10-07 11:56:28'),
(397, 347, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 11:57:51', '2021-10-07 11:57:51'),
(398, 348, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 12:04:21', '2021-10-07 12:04:21'),
(399, 349, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 12:05:17', '2021-10-07 12:05:17'),
(400, 351, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 12:16:48', '2021-10-07 12:16:48'),
(401, 352, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 12:18:36', '2021-10-07 12:18:36'),
(402, 354, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 12:47:07', '2021-10-07 12:47:07'),
(403, 358, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 12:58:45', '2021-10-07 12:58:45'),
(406, 359, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 12:59:40', '2021-10-07 12:59:40'),
(409, 360, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 13:01:56', '2021-10-07 13:01:56'),
(410, 361, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 13:05:02', '2021-10-07 13:05:02'),
(411, 362, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 13:07:01', '2021-10-07 13:07:01'),
(412, 363, NULL, NULL, 'shipping', 'UPS', 1, 0, 0, NULL, '2021-10-07 13:09:57', '2021-10-07 13:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_admin_api_access_token`
--

CREATE TABLE `sylius_admin_api_access_token` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_admin_api_auth_code`
--

CREATE TABLE `sylius_admin_api_auth_code` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_admin_api_client`
--

CREATE TABLE `sylius_admin_api_client` (
  `id` int(11) NOT NULL,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_admin_api_refresh_token`
--

CREATE TABLE `sylius_admin_api_refresh_token` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_admin_user`
--

CREATE TABLE `sylius_admin_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `administrationRole_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_admin_user`
--

INSERT INTO `sylius_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`, `administrationRole_id`) VALUES
(3, 'admin', 'admin', 1, 'j8pfq8w529kw4ckggcwsssc0cko4ook', 'IQQb9kjnWrnEYCkVaVnElGQav4/47UBEsrUfPNUL2rZdwptRAC11x6/axL9VnGCpqAuG4WmydkYOiQ0Fgz2ezQ==', '2021-10-06 18:43:45', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'admin@techmedia.pl', 'admin@techmedia.pl', '2019-01-02 17:36:10', '2021-10-06 18:43:45', NULL, NULL, 'pl_PL', 8),
(4, 'admin2', 'admin2', 1, 'qrs3fbvcan4kscck40sswgg44c00ksc', 'HMdwFtjk3QC5vdGM6jh7zeMrvOWrZ8YTXFN0FZym35ySzl8fxVrIGWEn3KbjG2Rw2VDcjxmESuBtqv7cWF6Aqg==', '2021-08-09 10:55:05', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'admin@example.com', 'admin@example.com', '2021-08-09 10:41:58', '2021-08-09 10:55:05', NULL, NULL, 'pl_PL', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_channel`
--

CREATE TABLE `sylius_channel` (
  `id` int(11) NOT NULL,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_channel`
--

INSERT INTO `sylius_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `skipping_payment_step_allowed`, `account_verification_required`) VALUES
(1, 1, 1, 1, 'PL_WEB', 'Kubki reklamowe', '#000000', NULL, 1, 'kubkireklamowe.local', '2019-01-02 17:35:58', '2019-01-18 16:28:38', NULL, 'order_items_based', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_channel_currencies`
--

CREATE TABLE `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_channel_currencies`
--

INSERT INTO `sylius_channel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_channel_locales`
--

CREATE TABLE `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_channel_locales`
--

INSERT INTO `sylius_channel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_channel_pricing`
--

CREATE TABLE `sylius_channel_pricing` (
  `id` int(11) NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_channel_pricing`
--

INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `original_price`, `channel_code`) VALUES
(1, 1, 20199, NULL, 'PL_WEB'),
(2, 3, 1500, NULL, 'PL_WEB'),
(3, 4, 0, NULL, 'PL_WEB'),
(4, 5, 0, NULL, 'PL_WEB'),
(5, 7, 1000, NULL, 'PL_WEB'),
(7, 8, 1300, NULL, 'PL_WEB'),
(11, 13, 0, NULL, 'PL_WEB'),
(12, 14, 0, NULL, 'PL_WEB'),
(13, 15, 1200, NULL, 'PL_WEB'),
(14, 16, 100, NULL, 'PL_WEB'),
(15, 17, 200, NULL, 'PL_WEB'),
(28, 36, 44300, NULL, 'PL_WEB'),
(29, 31, 67600, NULL, 'PL_WEB'),
(34, 43, 0, NULL, 'PL_WEB');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_country`
--

CREATE TABLE `sylius_country` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_country`
--

INSERT INTO `sylius_country` (`id`, `code`, `enabled`) VALUES
(1, 'PL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_currency`
--

CREATE TABLE `sylius_currency` (
  `id` int(11) NOT NULL,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_currency`
--

INSERT INTO `sylius_currency` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'PLN', '2019-01-02 17:35:58', '2019-01-02 17:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_customer`
--

CREATE TABLE `sylius_customer` (
  `id` int(11) NOT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_customer`
--

INSERT INTO `sylius_customer` (`id`, `customer_group_id`, `default_address_id`, `email`, `email_canonical`, `first_name`, `last_name`, `birthday`, `gender`, `created_at`, `updated_at`, `phone_number`, `subscribed_to_newsletter`) VALUES
(58, NULL, NULL, 'admin@techmedia.pl', 'admin@techmedia.pl', 'asd', 'asd', NULL, 'u', '2019-05-06 12:33:04', '2019-05-06 12:33:05', '123123123', 0),
(59, NULL, 1, 'dsadsasad@wp.pl', 'dsadsasad@wp.pl', 'asdasd', 'asdsda', NULL, 'u', '2019-05-20 15:59:32', '2019-05-20 15:59:33', '123123123', 0),
(60, NULL, NULL, 'asd4156@wp.pl', 'asd4156@wp.pl', NULL, NULL, NULL, 'u', '2019-09-03 13:05:56', '2019-09-03 13:05:56', NULL, 0),
(61, NULL, 3, 'a.dynka@tech-media.pl', 'a.dynka@tech-media.pl', 'Anna', 'Dyńka', NULL, 'u', '2021-05-10 11:41:06', '2021-05-10 11:41:06', '', 0),
(62, NULL, 6, 'example@example.com', 'example@example.com', 'Szymon', 'Mlonek', NULL, 'u', '2021-07-12 10:32:33', '2021-10-01 12:14:04', '123123123', 0),
(63, NULL, 23, 'dsfg@example.com', 'dsfg@example.com', 'dsfgdf', '', NULL, 'u', '2021-07-26 11:58:50', '2021-07-26 11:58:50', '', 0),
(64, NULL, 26, 'sdfgdfgdf@example.com', 'sdfgdfgdf@example.com', 'dgfhgdfgfd', '', NULL, 'u', '2021-07-26 12:00:22', '2021-07-26 12:00:22', '', 0),
(65, NULL, NULL, 'sdnfsodiknf@example.com', 'sdnfsodiknf@example.com', NULL, NULL, NULL, 'u', '2021-07-27 13:08:59', '2021-07-27 13:08:59', NULL, 0),
(66, NULL, NULL, 'ostatni@example.com', 'ostatni@example.com', NULL, NULL, NULL, 'u', '2021-07-27 13:10:30', '2021-07-27 13:10:30', NULL, 0),
(67, NULL, 31, 'e-mail@email.com', 'e-mail@email.com', 'Imie', 'i', NULL, 'u', '2021-07-28 15:25:28', '2021-07-28 15:25:28', '', 0),
(68, NULL, 36, 'asdsdaf@gmail.com', 'asdsdaf@gmail.com', 'wdfsdafsadfsad', '', NULL, 'u', '2021-08-11 15:20:58', '2021-08-11 15:20:58', '', 0),
(69, NULL, 39, 'fghgfhghf@example.com', 'fghgfhghf@example.com', 'ghfhfgfghhgf', '', NULL, 'u', '2021-08-11 15:26:58', '2021-08-11 15:26:58', '', 0),
(70, NULL, 42, 'siema@example.com', 'siema@example.com', 'gfgfgfhfgh', '', NULL, 'u', '2021-08-11 15:28:41', '2021-08-11 15:28:41', '', 0),
(71, NULL, 125, 'tyjty@gmail.com', 'tyjty@gmail.com', 'uky', '', NULL, 'u', '2021-08-12 10:50:58', '2021-08-12 10:50:58', '554', 0),
(72, NULL, 128, 'dfgrd@gmail.com', 'dfgrd@gmail.com', 'jkl.jk.j', '', NULL, 'u', '2021-08-12 10:53:29', '2021-08-12 10:53:29', '54635356', 0),
(73, NULL, 131, 'nm,n,@mail.ru', 'nm,n,@mail.ru', 'm', 'nm,', NULL, 'u', '2021-08-12 10:55:35', '2021-08-12 10:55:36', '6856', 0),
(74, NULL, 134, 'yuiu@mail.ru', 'yuiu@mail.ru', 'uyuy', '', NULL, 'u', '2021-08-12 10:58:02', '2021-08-12 10:58:03', '757578', 0),
(75, NULL, 137, 'hjkhjk@mail.ru', 'hjkhjk@mail.ru', 'hjl,hlh', '', NULL, 'u', '2021-08-12 10:59:26', '2021-08-12 10:59:26', '535635', 0),
(76, NULL, 140, 'edrr@gmail.com', 'edrr@gmail.com', 'rgdrgre', '', NULL, 'u', '2021-08-12 11:02:47', '2021-08-12 11:02:47', '5785', 0),
(77, NULL, 143, 'ertrt@gmail.com', 'ertrt@gmail.com', 'rytryrtyr', '', NULL, 'u', '2021-08-12 11:07:04', '2021-08-12 11:07:04', '', 0),
(78, NULL, 146, '797897@mail.ru', '797897@mail.ru', '78997897', '', NULL, 'u', '2021-08-12 11:09:21', '2021-08-12 11:09:21', '', 0),
(79, NULL, 149, 'ghjgj@mail.ru', 'ghjgj@mail.ru', 'ghmjghjg', '', NULL, 'u', '2021-08-12 11:13:25', '2021-08-12 11:13:25', '', 0),
(80, NULL, 156, 'ghjgj@gmail.com', 'ghjgj@gmail.com', 'ghyjgh', '', NULL, 'u', '2021-08-12 11:18:31', '2021-08-12 11:18:31', '', 0),
(81, NULL, 171, 'etrte@mail.ru', 'etrte@mail.ru', 'iouio', '', NULL, 'u', '2021-08-12 11:34:28', '2021-08-12 11:34:28', '', 0),
(82, NULL, 182, 'rwer@mail.ru', 'rwer@mail.ru', 'rtyrt', '', NULL, 'u', '2021-08-12 11:44:11', '2021-08-12 11:44:12', '', 0),
(83, NULL, 191, 'uyuy@mail.ru', 'uyuy@mail.ru', 'uioui', '', NULL, 'u', '2021-08-12 11:51:02', '2021-08-12 11:51:02', '', 0),
(84, NULL, 196, 'vvng@mail.ru', 'vvng@mail.ru', 'vnvvbn', '', NULL, 'u', '2021-08-12 11:54:56', '2021-08-12 11:54:56', '', 0),
(85, NULL, 315, 'asd@example.com', 'asd@example.com', 'Jan', 'Kowalski', NULL, 'u', '2021-08-13 09:16:12', '2021-08-13 09:16:12', '', 0),
(86, NULL, 334, 'ert@gmail.com', 'ert@gmail.com', 'sdfghj', '', NULL, 'u', '2021-08-17 13:01:11', '2021-08-17 13:01:11', '', 0),
(87, NULL, 363, 'hgdfjt@gmail.com', 'hgdfjt@gmail.com', 'mnvmnmhv', 'hjgf', NULL, 'u', '2021-08-18 14:14:38', '2021-08-18 14:14:38', '', 0),
(88, NULL, 366, 'huidaswuhodashuodas@gmail.com', 'huidaswuhodashuodas@gmail.com', 'hhdh', 'hdh', NULL, 'u', '2021-08-18 14:16:11', '2021-08-18 14:16:11', '', 0),
(89, NULL, 381, 'sd@gmail.com', 'sd@gmail.com', 'sadf', '', NULL, 'u', '2021-08-19 12:58:42', '2021-08-19 12:58:42', '', 0),
(90, NULL, 449, 'szymon.mlnk@gmail.com', 'szymon.mlnk@gmail.com', 'Szymon', 'Mlonek', NULL, 'u', '2021-09-21 17:23:17', '2021-10-05 17:21:39', NULL, 0),
(91, NULL, 390, '', '', '', '', NULL, 'u', '2021-10-01 11:42:38', '2021-10-01 11:42:39', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_customer_group`
--

CREATE TABLE `sylius_customer_group` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_exchange_rate`
--

CREATE TABLE `sylius_exchange_rate` (
  `id` int(11) NOT NULL,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_gateway_config`
--

CREATE TABLE `sylius_gateway_config` (
  `id` int(11) NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_gateway_config`
--

INSERT INTO `sylius_gateway_config` (`id`, `gateway_name`, `factory_name`, `config`) VALUES
(1, 'Offline', 'offline', '[]'),
(2, 'Offline', 'offline', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_locale`
--

CREATE TABLE `sylius_locale` (
  `id` int(11) NOT NULL,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_locale`
--

INSERT INTO `sylius_locale` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'pl_PL', '2019-01-02 17:35:58', '2019-01-02 17:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_order`
--

CREATE TABLE `sylius_order` (
  `id` int(11) NOT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `info` longtext COLLATE utf8_unicode_ci NOT NULL,
  `agency_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attachments` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `for_payment` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_order`
--

INSERT INTO `sylius_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`, `agency_id`, `full_name`, `email`, `phone`, `info`, `agency_name`, `agency_email`, `company`, `city`, `attachments`, `for_payment`) VALUES
(1, 1, 2, 1, NULL, 59, '000000054', NULL, 'cancelled', '2019-09-12 14:25:19', 1, 0, 1500, '2019-09-12 14:23:27', '2019-09-12 14:30:57', 'PLN', 'pl_PL', 'cart', 'cancelled', 'shipped', 'MC-L~KpAzD', '127.0.0.1', NULL, 'Jan kowalski', 'dsadsasad@wp.pl', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(2, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 0, 0, 0, '2019-09-13 09:31:26', '2019-09-13 12:14:10', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(3, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2019-09-17 08:47:06', '2019-09-17 08:47:14', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(4, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 2, 0, 3000, '2020-12-04 10:37:08', '2020-12-04 10:37:23', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(5, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 0, 0, 0, '2020-12-10 11:24:33', '2020-12-10 11:27:03', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(6, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 0, 0, 0, '2021-05-05 11:15:57', '2021-05-05 11:16:19', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(7, 4, 5, 1, NULL, 61, '000000055', NULL, 'new', '2021-05-10 11:41:06', 1, 0, 20199, '2021-05-10 11:40:44', '2021-05-10 11:41:06', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '9nR3Z7VPY3', '192.168.30.183', NULL, 'Anna Dyńka', 'a.dynka@tech-media.pl', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(8, 7, 8, 1, NULL, 62, '000000056', NULL, 'new', '2021-07-12 10:32:33', 1008, 0, 20360592, '2021-07-12 10:31:17', '2021-07-12 10:32:33', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'KEpAtYfWE-', '127.0.0.1', NULL, 'asdasd', 'example@example.com', '111222333', 'asdas', NULL, NULL, 'asdas', 'asdsad', 'a:0:{}', 0),
(9, 9, 10, 1, NULL, 62, '000000057', NULL, 'new', '2021-07-12 11:43:52', 216, 0, 4362984, '2021-07-12 10:58:58', '2021-07-12 11:43:52', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'W9WZf3jRXE', '127.0.0.1', NULL, 'asdf', 'example@example.com', '', 'sadf', NULL, NULL, '', '', 'a:0:{}', 0),
(10, 11, 12, 1, NULL, 62, '000000058', NULL, 'new', '2021-07-12 12:05:36', 216, 0, 4362984, '2021-07-12 12:03:26', '2021-07-12 12:05:36', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'G82RTRb41K', '127.0.0.1', NULL, 'asdf', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(11, 13, 14, 1, NULL, 62, '000000059', NULL, 'new', '2021-07-12 12:10:05', 1, 0, 20199, '2021-07-12 12:09:48', '2021-07-12 12:10:05', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'g6UNrks~gg', '127.0.0.1', NULL, 'SDFG', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(12, 15, 16, 1, NULL, 62, '000000060', NULL, 'new', '2021-07-12 12:11:02', 1, 0, 20199, '2021-07-12 12:10:42', '2021-07-12 12:11:02', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'jboqg109yl', '127.0.0.1', NULL, 'a', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(13, 17, 18, 1, NULL, 62, '000000061', NULL, 'new', '2021-07-12 12:14:17', 1, 0, 20199, '2021-07-12 12:13:52', '2021-07-12 12:14:17', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'BdEzGHZ3Ud', '127.0.0.1', NULL, 'lnkmki', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(14, 19, 20, 1, NULL, 62, '000000062', NULL, 'new', '2021-07-12 12:17:25', 1, 0, 20199, '2021-07-12 12:17:06', '2021-07-12 12:17:25', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Zbip_mmkfe', '127.0.0.1', NULL, 'njkg', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(15, 21, 22, 1, NULL, 62, '000000063', NULL, 'new', '2021-07-16 10:55:01', 9, 0, 107895, '2021-07-12 12:27:53', '2021-07-16 10:55:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'DJnwvbCves', '127.0.0.1', NULL, 'Witam', 'example@example.com', '', 'Chciałbym zamówić ķ̵͚̪̻̟̜̣͕̗͇̣̈́̐͐̌u̶͈̫̲̭̤͚̠̩̘̦͗̓́̉̎̿͘̕̚ͅb̶̲͗͂̈́̌͆͋̅̋̔́ḙ̶̡̈́͊̏̓͌͗́̑͜͜͝k̸̹̯̪͙͉͊̅̔̒̉̈́̄͘̚͘', NULL, NULL, '', '', 'a:0:{}', 0),
(16, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 0, 0, 0, '2021-07-16 09:56:43', '2021-07-16 09:57:36', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(17, 24, 25, 1, NULL, 63, '000000064', NULL, 'cancelled', '2021-07-26 11:58:50', 2, 0, 0, '2021-07-16 10:59:05', '2021-07-26 12:06:18', 'PLN', 'pl_PL', 'cart', 'cancelled', 'shipped', 'gX2L7PJczF', '127.0.0.1', NULL, 'dsfgdf', 'dsfg@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(18, 27, 28, 1, NULL, 64, '000000065', NULL, 'fulfilled', '2021-07-26 12:00:22', 3, 0, 21699, '2021-07-26 11:59:39', '2021-07-26 12:05:56', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'usdkarcEo_', '127.0.0.1', 6, 'dgfhgdfgfd', 'sdfgdfgdf@example.com', '', 'eyo', 'Elwira', NULL, '', '', 'a:1:{i:0;s:10:\"images.jpg\";}', 0),
(19, 29, 30, 1, NULL, 62, '000000066', NULL, 'new', '2021-07-26 12:08:43', 1008, 0, 20360592, '2021-07-26 12:07:14', '2021-07-26 12:08:43', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'X~EehM2YhY', '127.0.0.1', NULL, 'dfgdf', 'example@example.com', '11222333', 'Witam proszę o zrobienie ruchów\r\ndznkpzdr', NULL, NULL, 'VAThole industries', 'Siedlce', 'a:0:{}', 0),
(20, 32, 33, 1, NULL, 67, '000000067', NULL, 'new', '2021-07-28 15:25:28', -3, 1, 16200, '2021-07-26 13:11:34', '2021-07-28 15:25:28', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'V_my_bDLZI', '127.0.0.1', NULL, 'Imie i Nazwisko', 'e-mail@email.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(21, 34, 35, 1, NULL, 64, '000000068', NULL, 'new', '2021-07-29 10:42:52', 509, 1, 627499, '2021-07-28 15:39:43', '2021-07-29 10:42:53', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '_lz3OVFnrO', '127.0.0.1', NULL, 'dsfgdfs', 'sdfgdfgdf@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(22, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 5, 1, 22599, '2021-07-29 13:31:44', '2021-08-03 15:05:39', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(141, 287, 288, 1, NULL, 70, '000000186', NULL, 'new', '2021-08-12 15:26:23', 504, 1, 34070400, '2021-08-12 15:26:02', '2021-08-12 15:26:23', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '~z03cqwTr_', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '748 545 545', 'safd fadsa sdfds fasa df dfasa   sdsd d', NULL, NULL, 'VAThole industries', 'Siedlce', 'a:0:{}', 0),
(142, 289, 290, 1, NULL, 70, '000000187', NULL, 'new', '2021-08-12 15:46:12', 1, 1, 67600, '2021-08-12 15:45:54', '2021-08-12 15:46:12', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'cNlLnIOn1K', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '748 545 545', 'sdafdfs aas dfsdfaa df fdassdf', NULL, NULL, 'VAThole industries', 'Siedlce', 'a:0:{}', 0),
(143, 291, 292, 1, NULL, 70, '000000188', NULL, 'new', '2021-08-12 15:49:03', 1, 1, 67600, '2021-08-12 15:48:39', '2021-08-12 15:49:03', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '7iYH-mwBDf', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(144, 293, 294, 1, NULL, 72, '000000189', NULL, 'new', '2021-08-12 15:50:03', 1, 1, 67600, '2021-08-12 15:49:51', '2021-08-12 15:50:03', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '3MbLu6V-wG', '127.0.0.1', NULL, 'wdfsdafsadfsad', 'dfgrd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(145, 295, 296, 1, NULL, 70, '000000190', NULL, 'new', '2021-08-12 15:51:07', 1, 1, 67600, '2021-08-12 15:50:56', '2021-08-12 15:51:07', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '6PIctk5ylM', '127.0.0.1', NULL, 'wdfsdafsadfsad', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(146, 297, 298, 1, NULL, 70, '000000191', NULL, 'new', '2021-08-12 15:51:50', 1, 1, 67600, '2021-08-12 15:51:38', '2021-08-12 15:51:50', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '574C29n6u6', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(147, 299, 300, 1, NULL, 70, '000000192', NULL, 'new', '2021-08-12 15:52:20', 1, 1, 67600, '2021-08-12 15:52:10', '2021-08-12 15:52:20', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'hMhm_urHwz', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(148, 301, 302, 1, NULL, 72, '000000193', NULL, 'new', '2021-08-12 15:55:16', 1, 1, 67600, '2021-08-12 15:55:01', '2021-08-12 15:55:16', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'lZZtM~ZFl-', '127.0.0.1', NULL, 'wdfsdafsadfsad', 'dfgrd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(149, 303, 304, 1, NULL, 70, '000000194', NULL, 'new', '2021-08-12 15:58:11', 1, 1, 67600, '2021-08-12 15:57:28', '2021-08-12 15:58:11', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'vmtxTdD~7d', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(150, 305, 306, 1, NULL, 72, '000000195', NULL, 'new', '2021-08-12 16:02:16', 1, 1, 67600, '2021-08-12 16:02:00', '2021-08-12 16:02:16', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'sn6YOkPvbI', '127.0.0.1', NULL, 'wdfsdafsadfsad', 'dfgrd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(151, 307, 308, 1, NULL, 72, '000000196', NULL, 'new', '2021-08-12 16:03:55', 1, 1, 67600, '2021-08-12 16:03:44', '2021-08-12 16:03:56', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'gi6bRXYuYM', '127.0.0.1', NULL, 'Jan Kowalski', 'dfgrd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(152, 309, 310, 1, NULL, 70, '000000197', NULL, 'new', '2021-08-13 08:49:10', 2, 1, 67600, '2021-08-13 08:48:41', '2021-08-13 08:49:10', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '8sh~Ns4cVQ', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(153, 311, 312, 1, NULL, 72, '000000198', NULL, 'new', '2021-08-13 08:52:08', 1, 1, 67600, '2021-08-13 08:51:50', '2021-08-13 08:52:08', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'LuJuG-1ev5', '127.0.0.1', NULL, 'Jan Kowalski', 'dfgrd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(154, 313, 314, 1, NULL, 70, '000000199', NULL, 'new', '2021-08-13 08:57:03', 1, 1, 67600, '2021-08-13 08:53:33', '2021-08-13 08:57:03', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'yhd7Q03XSX', '127.0.0.1', NULL, 'asd', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(155, 316, 317, 1, NULL, 85, '000000200', NULL, 'new', '2021-08-13 09:16:12', 1, 0, 20199, '2021-08-13 08:58:24', '2021-08-13 09:16:12', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '-ttq8tec_O', '127.0.0.1', NULL, 'Jan Kowalski', 'asd@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(156, 318, 319, 1, NULL, 70, '000000201', NULL, 'new', '2021-08-13 09:36:37', 1, 1, 67600, '2021-08-13 09:36:23', '2021-08-13 09:36:37', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'SEA54zCGeB', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(157, 320, 321, 1, NULL, 64, '000000202', NULL, 'new', '2021-08-13 09:37:19', 1, 1, 67600, '2021-08-13 09:36:57', '2021-08-13 09:37:19', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '~Bf7VL22UR', '127.0.0.1', NULL, 'dfdfaokjfsda', 'sdfgdfgdf@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(158, 322, 323, 1, NULL, 69, '000000203', NULL, 'new', '2021-08-13 09:44:59', 1, 1, 67600, '2021-08-13 09:44:39', '2021-08-13 09:44:59', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'p1AdJzgP4N', '127.0.0.1', NULL, 'dfdfaokjfsda', 'fghgfhghf@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(159, 324, 325, 1, NULL, 70, '000000204', NULL, 'new', '2021-08-13 10:09:19', 1, 1, 67600, '2021-08-13 10:01:27', '2021-08-13 10:09:19', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '8O4O_oXoxM', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(160, 326, 327, 1, NULL, 70, '000000205', NULL, 'new', '2021-08-16 13:39:12', 5, 1, 189999, '2021-08-13 10:17:33', '2021-08-16 13:39:12', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'ja_iuBlvgy', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(161, 328, 329, 1, NULL, 70, '000000206', NULL, 'new', '2021-08-17 09:25:11', 2, 1, 2700, '2021-08-17 08:58:10', '2021-08-17 09:25:11', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'admfwPNwct', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(162, 330, 331, 1, NULL, 70, '000000207', NULL, 'new', '2021-08-17 09:40:21', 4, 1, 133099, '2021-08-17 09:28:38', '2021-08-17 09:40:21', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'phhWdBsDaB', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(163, 332, 333, 1, NULL, 70, '000000208', NULL, 'new', '2021-08-17 11:31:04', 1, 0, 1500, '2021-08-17 11:30:33', '2021-08-17 11:31:04', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'R_XzqlEL1A', '127.0.0.1', NULL, 'Szymon Mlonek', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(164, 335, 336, 1, NULL, 86, '000000209', NULL, 'new', '2021-08-17 13:01:11', 513, 1, 156498, '2021-08-17 12:58:13', '2021-08-17 13:01:11', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'mo2oZFbAAC', '127.0.0.1', NULL, 'sdfghj', 'ert@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(165, 337, 338, 1, NULL, 70, '000000210', NULL, 'new', '2021-08-17 13:09:43', 1, 0, 20199, '2021-08-17 13:08:25', '2021-08-17 13:09:43', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '6jORd5Z_w5', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(166, 339, 340, 1, NULL, 70, '000000211', NULL, 'new', '2021-08-17 13:57:50', 1, 1, 1200, '2021-08-17 13:45:55', '2021-08-17 13:57:50', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'hQQnVWydgW', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(167, 341, 342, 1, NULL, 70, '000000212', NULL, 'new', '2021-08-17 14:59:02', 1, 0, 20199, '2021-08-17 14:17:45', '2021-08-17 14:59:02', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Az-JCLLNEf', '127.0.0.1', NULL, 'bszvcx', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(168, 343, 344, 1, NULL, 70, '000000213', NULL, 'new', '2021-08-17 15:28:15', 1, 0, 20199, '2021-08-17 15:28:05', '2021-08-17 15:28:15', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'mwI3mssxfd', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(169, 345, 346, 1, NULL, 70, '000000214', NULL, 'new', '2021-08-17 16:02:06', 1, 0, 20199, '2021-08-17 16:01:37', '2021-08-17 16:02:06', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'MIHXsvosRq', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(170, 347, 348, 1, NULL, 70, '000000215', NULL, 'new', '2021-08-17 16:04:19', 1, 0, 20199, '2021-08-17 16:02:20', '2021-08-17 16:04:19', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '9aQVHtBr1~', '127.0.0.1', NULL, 'wdfsdafsadfsad', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(171, 349, 350, 1, NULL, 70, '000000216', NULL, 'new', '2021-08-17 16:05:50', 1, 0, 20199, '2021-08-17 16:05:37', '2021-08-17 16:05:50', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'wuQIsiwDtD', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(172, 351, 352, 1, NULL, 70, '000000217', NULL, 'new', '2021-08-18 09:50:57', 2, 0, 40398, '2021-08-18 08:48:57', '2021-08-18 09:50:57', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'r6vooplc4l', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(173, 353, 354, 1, NULL, 72, '000000218', NULL, 'new', '2021-08-18 09:56:27', 1, 0, 20199, '2021-08-18 09:54:49', '2021-08-18 09:56:27', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'GAwBmec0VY', '127.0.0.1', NULL, 'dfdfaokjfsda', 'dfgrd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(174, 355, 356, 1, NULL, 70, '000000219', NULL, 'new', '2021-08-18 10:01:35', 3, 0, 41898, '2021-08-18 10:00:25', '2021-08-18 10:01:35', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'ZkhzCML_rX', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(175, 357, 358, 1, NULL, 70, '000000220', NULL, 'new', '2021-08-18 10:04:30', 1, 1, 1000, '2021-08-18 10:03:57', '2021-08-18 10:04:30', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'ONRZ_RDo74', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(176, 359, 360, 1, NULL, 72, '000000221', NULL, 'new', '2021-08-18 10:07:05', 1, 0, 20199, '2021-08-18 10:06:48', '2021-08-18 10:07:05', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'KO8S~nLWh_', '127.0.0.1', NULL, 'Jan Kowalski', 'dfgrd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(177, 361, 362, 1, NULL, 70, '000000222', NULL, 'new', '2021-08-18 10:08:57', 1, 0, 20199, '2021-08-18 10:08:45', '2021-08-18 10:08:57', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'BiU7HyCG1k', '127.0.0.1', NULL, 'dfdfaokjfsda', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(178, 364, 365, 1, NULL, 87, '000000223', NULL, 'new', '2021-08-18 14:14:38', 326, 1, 4853500, '2021-08-18 11:12:12', '2021-08-18 14:14:38', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'jvVOtHwrVC', '127.0.0.1', NULL, 'mnvmnmhv hjgf', 'hgdfjt@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(179, 367, 368, 1, NULL, 88, '000000224', NULL, 'new', '2021-08-18 14:16:11', 1000, 0, 0, '2021-08-18 14:15:42', '2021-08-18 14:16:11', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'cU6oEoNqdu', '127.0.0.1', NULL, 'hhdh  hdh df', 'huidaswuhodashuodas@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(180, 369, 370, 1, NULL, 72, '000000225', NULL, 'new', '2021-08-18 16:03:15', 2, 0, 0, '2021-08-18 14:26:32', '2021-08-18 16:03:15', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'RPLEcdnuEK', '127.0.0.1', NULL, 'ghmjghjg', 'dfgrd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(181, 371, 372, 1, NULL, 70, '000000226', NULL, 'new', '2021-08-18 16:04:53', 1, 0, 20199, '2021-08-18 16:04:43', '2021-08-18 16:04:53', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '_rwThlVLIm', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(182, 373, 374, 1, NULL, 69, '000000227', NULL, 'new', '2021-08-18 16:09:29', 1, 0, 20199, '2021-08-18 16:07:04', '2021-08-18 16:09:29', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'STTgzvKnW7', '127.0.0.1', NULL, 'Szymon Mlonek', 'fghgfhghf@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(183, 375, 376, 1, NULL, 69, '000000228', NULL, 'new', '2021-08-19 12:54:43', 2, 1, 21199, '2021-08-18 16:33:19', '2021-08-19 12:54:43', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Ab_FyFErV3', '127.0.0.1', NULL, 'Jan Kowalski', 'fghgfhghf@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(184, 377, 378, 1, NULL, 70, '000000229', NULL, 'new', '2021-08-19 12:55:47', 1, 0, 20199, '2021-08-19 12:55:32', '2021-08-19 12:55:47', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'OC40Cs~fmE', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(185, 379, 380, 1, NULL, 70, '000000230', NULL, 'new', '2021-08-19 12:57:19', 1, 0, 20199, '2021-08-19 12:57:04', '2021-08-19 12:57:19', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'klU3F7VXXv', '127.0.0.1', NULL, 'Jan Kowalski', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(186, 382, 383, 1, NULL, 89, '000000231', NULL, 'new', '2021-08-19 12:58:42', 1, 0, 1500, '2021-08-19 12:58:23', '2021-08-19 12:58:42', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'mcyYV_rdmL', '::1', NULL, 'sadf', 'sd@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(187, 384, 385, 1, NULL, 70, '000000232', NULL, 'new', '2021-08-19 13:02:01', 1, 0, 0, '2021-08-19 12:59:46', '2021-08-19 13:02:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'egPc0~P1hD', '127.0.0.1', NULL, 'wdfsdafsadfsad', 'siema@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(188, 386, 387, 1, NULL, 80, '000000233', NULL, 'new', '2021-08-19 15:46:54', 3, 1, 141900, '2021-08-19 15:39:35', '2021-09-28 19:16:58', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'O1PUMR9ZE7', '127.0.0.1', 7, 'Jan Kowalski', 'ghjgj@gmail.com', '', '', 'Goldenberry Group', NULL, '', '', 'a:0:{}', 0),
(189, 388, 389, 1, NULL, 70, '000000234', NULL, 'fulfilled', '2021-08-20 08:48:03', 2, 1, 68600, '2021-08-20 08:46:59', '2021-09-28 19:16:06', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'WwR7~5HBux', '127.0.0.1', 2, 'Jan Kowalski', 'siema@example.com', '', '', 'Mega-Media', NULL, '', '', 'a:0:{}', 0),
(190, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 4, 0, 43398, '2021-08-31 13:26:36', '2021-08-31 13:59:43', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(191, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-01 12:15:20', '2021-09-01 12:15:22', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(192, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 4, 1, 2800, '2021-09-04 13:19:26', '2021-09-04 13:20:18', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(193, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 1500, '2021-09-04 15:03:12', '2021-09-04 15:03:14', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(194, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 2, 1, 45600, '2021-09-05 17:30:08', '2021-09-05 17:31:04', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(195, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 1500, '2021-09-05 17:42:54', '2021-09-05 17:42:55', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(196, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 1, 67600, '2021-09-10 11:10:42', '2021-09-10 11:10:48', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(197, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 1500, '2021-09-15 12:32:55', '2021-09-15 12:32:55', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(198, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 1500, '2021-09-17 21:09:39', '2021-09-17 21:09:41', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(199, NULL, NULL, 1, NULL, 90, '000000238', NULL, 'new', '2021-10-01 12:18:17', 1, 0, 20199, '2021-09-21 17:07:53', '2021-10-01 12:18:17', 'PLN', 'pl_PL', 'completed', 'awaiting_payment', 'shipped', '1oXk1YR~_S', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(200, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 1500, '2021-09-24 08:43:20', '2021-09-24 08:43:21', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(201, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 1, 1200, '2021-09-24 20:01:18', '2021-09-24 20:33:19', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(202, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-25 13:07:46', '2021-09-25 13:47:11', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(203, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-26 13:52:05', '2021-09-26 14:49:56', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(204, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 12:15:29', '2021-09-27 14:05:18', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(205, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 12:23:36', '2021-09-27 12:23:37', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(206, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 12:52:32', '2021-09-27 12:52:33', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(207, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 12:53:43', '2021-09-27 12:53:43', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(208, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 12:54:59', '2021-09-27 12:55:00', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(209, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 0, 0, 0, '2021-09-27 12:57:28', '2021-09-27 12:58:14', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(210, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 12:58:46', '2021-09-27 12:59:06', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(211, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 2, 0, 20199, '2021-09-27 12:59:40', '2021-09-27 13:00:52', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(212, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 2, 0, 20199, '2021-09-27 13:01:21', '2021-09-27 13:04:15', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(213, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 13:06:54', '2021-09-27 13:08:53', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(214, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 13:09:38', '2021-09-27 13:09:39', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(215, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 13:10:40', '2021-09-27 13:10:41', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(216, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 13:51:57', '2021-09-27 13:51:58', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(217, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 19:39:34', '2021-09-27 19:40:34', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(218, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 19:41:02', '2021-09-27 19:41:03', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(219, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 19:42:26', '2021-09-27 19:42:26', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(220, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 19:47:47', '2021-09-27 19:47:48', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(221, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 19:51:14', '2021-09-27 19:51:15', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(222, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 19:55:20', '2021-09-27 19:55:21', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(223, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 19:55:40', '2021-09-27 19:55:41', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(224, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 19:59:55', '2021-09-27 19:59:56', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(225, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 20:06:14', '2021-09-27 20:06:42', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(226, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-27 20:07:24', '2021-09-27 20:07:25', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(227, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 2, 0, 40398, '2021-09-27 20:07:46', '2021-09-27 20:07:58', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(228, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-27 20:08:12', '2021-09-27 20:16:55', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(229, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-28 08:08:54', '2021-09-28 08:22:10', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(230, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 1, 1200, '2021-09-28 08:31:48', '2021-09-28 08:40:02', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(231, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-09-28 18:39:24', '2021-09-28 18:41:58', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(232, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-09-29 17:23:08', '2021-09-29 17:23:09', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', NULL),
(233, 391, 392, 1, NULL, 91, '000000235', NULL, 'new', '2021-10-01 11:42:39', 1, 0, 0, '2021-10-01 11:41:35', '2021-10-01 11:42:39', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'dUbGbK8eE5', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(234, 393, 394, 1, NULL, 91, '000000236', NULL, 'new', '2021-10-01 11:47:49', 1, 0, 0, '2021-10-01 11:43:43', '2021-10-01 11:47:49', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'eKyIg2pb4b', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(235, 395, 396, 1, NULL, 91, '000000237', NULL, 'new', '2021-10-01 11:49:07', 1, 0, 20199, '2021-10-01 11:48:33', '2021-10-01 11:49:07', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'I138Vzi2s7', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(236, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-10-01 11:49:29', '2021-10-01 12:09:10', 'PLN', 'pl_PL', 'payment_selected', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(237, NULL, NULL, 1, NULL, 90, '000000239', NULL, 'new', '2021-10-01 12:23:04', 1, 0, 20199, '2021-10-01 12:21:15', '2021-10-01 12:23:04', 'PLN', 'pl_PL', 'completed', 'awaiting_payment', 'shipped', 'k35eHfOWwn', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(238, NULL, NULL, 1, NULL, 90, NULL, NULL, 'cart', NULL, 1, 0, 20199, '2021-10-01 12:24:29', '2021-10-01 12:24:31', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(239, 401, 402, 1, NULL, 91, '000000240', NULL, 'new', '2021-10-01 20:33:25', 1, 0, 20199, '2021-10-01 20:26:44', '2021-10-01 20:33:25', 'PLN', 'pl_PL', 'completed', 'awaiting_payment', 'shipped', 'k3URS6KNsT', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(240, 409, 410, 1, NULL, 91, '000000241', NULL, 'new', '2021-10-01 20:34:54', 1, 0, 20199, '2021-10-01 20:33:57', '2021-10-01 20:34:55', 'PLN', 'pl_PL', 'completed', 'awaiting_payment', 'shipped', 'cbuCaGLgSC', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(241, 415, 416, 1, NULL, 91, '000000242', NULL, 'new', '2021-10-01 20:36:52', 1, 0, 20199, '2021-10-01 20:36:12', '2021-10-01 20:36:52', 'PLN', 'pl_PL', 'completed', 'awaiting_payment', 'shipped', 'MUG_vP4-zS', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(242, 425, 426, 1, NULL, 91, '000000243', NULL, 'new', '2021-10-01 20:51:33', 1, 0, 20199, '2021-10-01 20:40:40', '2021-10-01 20:51:33', 'PLN', 'pl_PL', 'shipping_skipped', 'authorized', 'shipped', 'dB3mb13_~B', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(243, 431, 432, 1, NULL, 91, '000000244', NULL, 'new', '2021-10-01 20:52:57', 1, 0, 20199, '2021-10-01 20:51:44', '2021-10-01 20:52:57', 'PLN', 'pl_PL', 'completed', 'awaiting_payment', 'shipped', 'OmOQj5pHa0', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(244, 441, 442, 1, NULL, 91, '000000245', NULL, 'new', '2021-10-01 21:23:24', 1, 0, 20199, '2021-10-01 20:54:27', '2021-10-01 21:23:24', 'PLN', 'pl_PL', 'completed', 'awaiting_payment', 'shipped', 'ulGhcNWxZI', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 1),
(245, 443, 444, 1, NULL, 91, '000000246', NULL, 'new', '2021-10-05 17:11:38', 1, 0, 0, '2021-10-05 17:11:13', '2021-10-05 17:11:38', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'QnoC5qbkVy', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(246, 445, 446, 1, NULL, 91, '000000247', NULL, 'new', '2021-10-05 17:18:28', 1, 0, 0, '2021-10-05 17:16:50', '2021-10-05 17:18:28', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'uLqcJIPdPI', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(247, 447, 448, 1, NULL, 91, '000000248', NULL, 'new', '2021-10-05 17:18:36', 0, 0, 0, '2021-10-05 17:18:36', '2021-10-05 17:18:36', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'U1Zwt1DMmA', '127.0.0.1', NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', NULL),
(248, 450, 451, 1, NULL, 90, '000000249', NULL, 'new', '2021-10-05 17:21:39', 1, 0, 0, '2021-10-05 17:21:19', '2021-10-05 17:21:39', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'i~5H42Hj-~', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(249, 452, 453, 1, NULL, 62, '000000250', NULL, 'new', '2021-10-05 17:26:02', 1, 0, 0, '2021-10-05 17:25:43', '2021-10-05 17:26:02', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '8ZTVMJyBAO', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(250, 454, 455, 1, NULL, 90, '000000251', NULL, 'new', '2021-10-05 17:30:36', 1, 0, 0, '2021-10-05 17:29:36', '2021-10-05 17:30:36', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'yT6VELGJau', '127.0.0.1', NULL, 'adsf', 'szymon.mlnk@gmail.com', '123123123', 'daggfdssgfddffsgsdgf', NULL, NULL, 'agfddagfagf', 'agfdgfad', 'a:0:{}', 0),
(251, 456, 457, 1, NULL, 90, '000000252', NULL, 'new', '2021-10-05 17:32:48', 1, 0, 0, '2021-10-05 17:31:17', '2021-10-05 17:32:48', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'fqMCI72_KD', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '123123123', 'jnjjjknjkjknjknnjk', NULL, NULL, 'sdfd', 'fdsdfdsf', 'a:0:{}', 0),
(252, 458, 459, 1, NULL, 62, '000000253', NULL, 'new', '2021-10-05 17:37:42', 1, 0, 0, '2021-10-05 17:34:42', '2021-10-05 17:37:42', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '-XdJTDQjPM', '127.0.0.1', NULL, 'adfs', 'example@example.com', '123123123', '12312132', NULL, NULL, 'sdfd', 'fdsdfdsf', 'a:0:{}', 0),
(253, 460, 461, 1, NULL, 62, '000000254', NULL, 'new', '2021-10-05 17:53:55', 1, 0, 0, '2021-10-05 17:53:41', '2021-10-05 17:53:55', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '3AwC_BTxhX', '127.0.0.1', NULL, 'adfs', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(254, 462, 463, 1, NULL, 62, '000000255', NULL, 'new', '2021-10-05 17:58:28', 1, 0, 0, '2021-10-05 17:57:33', '2021-10-05 17:58:28', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Z_J4gi3JVE', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(255, 464, 465, 1, NULL, 90, '000000256', NULL, 'new', '2021-10-05 18:02:16', 1, 0, 0, '2021-10-05 17:59:58', '2021-10-05 18:02:16', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'bJA1rXqZsS', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(256, 466, 467, 1, NULL, 90, '000000257', NULL, 'new', '2021-10-05 18:03:49', 0, 0, 0, '2021-10-05 18:03:49', '2021-10-05 18:03:49', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '2eF0bB4XUN', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', NULL),
(257, 468, 469, 1, NULL, 90, '000000258', NULL, 'new', '2021-10-05 18:05:39', 1, 0, 0, '2021-10-05 18:05:19', '2021-10-05 18:05:40', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'rqG0d7K617', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(258, 470, 471, 1, NULL, 62, '000000259', NULL, 'new', '2021-10-05 18:08:29', 1, 0, 0, '2021-10-05 18:07:57', '2021-10-05 18:08:29', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'If2TGQ1cU_', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(259, 472, 473, 1, NULL, 90, '000000260', NULL, 'new', '2021-10-05 18:09:53', 1, 0, 0, '2021-10-05 18:09:37', '2021-10-05 18:09:53', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'cPeqgeLKpA', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '123123123', '', NULL, NULL, 'agfddagfagf', 'agfdgfad', 'a:0:{}', 0),
(260, 474, 475, 1, NULL, 62, '000000261', NULL, 'new', '2021-10-05 18:10:59', 1, 0, 0, '2021-10-05 18:10:46', '2021-10-05 18:10:59', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Pa-bDPqET_', '127.0.0.1', NULL, 'adfs', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(261, 476, 477, 1, NULL, 90, '000000262', NULL, 'new', '2021-10-05 18:13:12', 1, 0, 0, '2021-10-05 18:12:10', '2021-10-05 18:13:12', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Ip3j5d1KnL', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(262, 478, 479, 1, NULL, 90, '000000263', NULL, 'new', '2021-10-05 18:14:21', 1, 0, 0, '2021-10-05 18:14:09', '2021-10-05 18:14:21', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'hFQf4dC~1w', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(263, 480, 481, 1, NULL, 62, '000000264', NULL, 'new', '2021-10-05 18:15:56', 1, 0, 0, '2021-10-05 18:15:41', '2021-10-05 18:15:56', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '3XbWAA9O0p', '127.0.0.1', NULL, 'adfs', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(264, 482, 483, 1, NULL, 90, '000000265', NULL, 'new', '2021-10-05 18:17:13', 1, 0, 0, '2021-10-05 18:17:02', '2021-10-05 18:17:13', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '60KUaMSb4d', '127.0.0.1', NULL, 'adfs', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(265, 484, 485, 1, NULL, 90, '000000266', NULL, 'new', '2021-10-05 18:17:52', 1, 0, 0, '2021-10-05 18:17:34', '2021-10-05 18:17:52', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'lhoGtB5w~9', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(266, 486, 487, 1, NULL, 90, '000000267', NULL, 'new', '2021-10-05 18:20:40', 1, 0, 0, '2021-10-05 18:20:27', '2021-10-05 18:20:40', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'F-yf_65XR1', '127.0.0.1', NULL, 'adsf', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(267, 488, 489, 1, NULL, 90, '000000268', NULL, 'new', '2021-10-05 18:22:13', 1, 0, 0, '2021-10-05 18:21:58', '2021-10-05 18:22:13', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 's6dDky9f7~', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(268, 490, 491, 1, NULL, 62, '000000269', NULL, 'new', '2021-10-05 18:27:41', 2, 0, 0, '2021-10-05 18:24:49', '2021-10-05 18:27:41', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'rea~X33_h7', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', 'dfdgsgfsdsgfgsffddfgfgdsdfgsfgdsfdgsdfgsdfgsdfgsdfgsdfgsgfdsdfgsdfgs', NULL, NULL, '', '', 'a:0:{}', 0),
(269, 492, 493, 1, NULL, 90, '000000270', NULL, 'new', '2021-10-05 18:35:36', 1, 0, 0, '2021-10-05 18:33:24', '2021-10-05 18:35:36', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'HEk6Y9gC87', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(270, 494, 495, 1, NULL, 90, '000000271', NULL, 'new', '2021-10-05 18:51:02', 1, 0, 0, '2021-10-05 18:50:52', '2021-10-05 18:51:02', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'PeS~fM9-A_', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '123123123', '', NULL, NULL, '', '', 'a:0:{}', 0),
(271, 496, 497, 1, NULL, 62, '000000272', NULL, 'new', '2021-10-05 18:52:30', 1, 0, 0, '2021-10-05 18:52:22', '2021-10-05 18:52:30', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'dX-Z0vHqK4', '127.0.0.1', NULL, 'adfs', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(272, 498, 499, 1, NULL, 90, '000000273', NULL, 'new', '2021-10-05 18:52:50', 1, 0, 0, '2021-10-05 18:52:39', '2021-10-05 18:52:50', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'b65eWewUiy', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(273, 500, 501, 1, NULL, 90, '000000274', NULL, 'new', '2021-10-05 18:53:50', 1, 0, 0, '2021-10-05 18:53:38', '2021-10-05 18:53:50', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'HcZ3kuRDMQ', '127.0.0.1', NULL, 'adfs', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(274, 502, 503, 1, NULL, 90, '000000275', NULL, 'new', '2021-10-05 18:55:25', 1, 0, 0, '2021-10-05 18:55:10', '2021-10-05 18:55:26', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'WvJ37OgHEp', '127.0.0.1', NULL, 'adfs', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(275, 504, 505, 1, NULL, 62, '000000276', NULL, 'new', '2021-10-05 18:58:13', 1, 0, 0, '2021-10-05 18:57:59', '2021-10-05 18:58:13', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '7S8qCrS6Iv', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(276, 506, 507, 1, NULL, 90, '000000277', NULL, 'new', '2021-10-05 19:00:59', 1, 0, 0, '2021-10-05 19:00:50', '2021-10-05 19:00:59', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '3TFw2nj1cV', '127.0.0.1', NULL, 'adsf', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(277, 508, 509, 1, NULL, 90, '000000278', NULL, 'new', '2021-10-05 19:03:07', 1, 0, 0, '2021-10-05 19:02:55', '2021-10-05 19:03:07', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '~IOCBN1rlx', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(278, 510, 511, 1, NULL, 90, '000000279', NULL, 'new', '2021-10-05 19:03:59', 1, 0, 0, '2021-10-05 19:03:46', '2021-10-05 19:03:59', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'aZTG0BqWvF', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(279, 512, 513, 1, NULL, 90, '000000280', NULL, 'new', '2021-10-05 19:06:26', 1, 0, 0, '2021-10-05 19:06:15', '2021-10-05 19:06:26', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'YPbeWHAbw4', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(280, 514, 515, 1, NULL, 62, '000000281', NULL, 'new', '2021-10-05 19:07:06', 1, 0, 0, '2021-10-05 19:06:54', '2021-10-05 19:07:06', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Q_R6HSQIxm', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(281, 516, 517, 1, NULL, 62, '000000282', NULL, 'new', '2021-10-05 19:14:58', 1, 0, 0, '2021-10-05 19:13:30', '2021-10-05 19:14:58', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Syvrbe~kHw', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(282, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'cart', NULL, 1, 0, 0, '2021-10-05 19:16:37', '2021-10-05 19:16:38', 'PLN', 'pl_PL', 'cart', 'cart', 'cart', NULL, NULL, NULL, '', '', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(283, 518, 519, 1, NULL, 90, '000000283', NULL, 'new', '2021-10-06 18:23:50', 1, 0, 0, '2021-10-06 18:23:26', '2021-10-06 18:23:50', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'erdXqii7Fy', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(284, 520, 521, 1, NULL, 90, '000000284', NULL, 'new', '2021-10-06 18:25:30', 1, 0, 0, '2021-10-06 18:25:03', '2021-10-06 18:25:30', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'jv-jHeybeX', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(285, 522, 523, 1, NULL, 62, '000000285', NULL, 'new', '2021-10-06 18:26:39', 1, 0, 0, '2021-10-06 18:26:25', '2021-10-06 18:26:39', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'og2KXk0VCm', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(286, 524, 525, 1, NULL, 90, '000000286', NULL, 'new', '2021-10-06 18:27:38', 1, 0, 0, '2021-10-06 18:27:24', '2021-10-06 18:27:38', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'FW1pg79n1x', '127.0.0.1', NULL, 'adfs', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(287, 526, 527, 1, NULL, 62, '000000287', NULL, 'new', '2021-10-06 18:29:28', 1, 0, 0, '2021-10-06 18:28:47', '2021-10-06 18:29:28', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'tCYFR4Oa4y', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(288, 528, 529, 1, NULL, 90, '000000288', NULL, 'new', '2021-10-06 18:32:01', 1, 0, 0, '2021-10-06 18:30:57', '2021-10-06 18:32:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'TDNFCoHuwg', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(289, 530, 531, 1, NULL, 90, '000000289', NULL, 'new', '2021-10-06 18:33:27', 1, 0, 0, '2021-10-06 18:33:15', '2021-10-06 18:33:27', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'RubyNBYNdi', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(290, 532, 533, 1, NULL, 90, '000000290', NULL, 'new', '2021-10-06 18:35:46', 1, 0, 0, '2021-10-06 18:35:29', '2021-10-06 18:35:46', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'UPlAsCIb25', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(291, 534, 535, 1, NULL, 62, '000000291', NULL, 'new', '2021-10-06 18:36:31', 1, 0, 0, '2021-10-06 18:36:15', '2021-10-06 18:36:31', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Jr8IJqqqwb', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(292, 536, 537, 1, NULL, 90, '000000292', NULL, 'new', '2021-10-06 18:41:03', 1, 0, 0, '2021-10-06 18:40:53', '2021-10-06 18:41:03', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'plo0SIXWuN', '127.0.0.1', NULL, 'adfs', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(293, 538, 539, 1, NULL, 90, '000000293', NULL, 'new', '2021-10-06 18:42:48', 1, 0, 0, '2021-10-06 18:42:36', '2021-10-06 18:42:48', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'tMMDEQ33HA', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(294, 540, 541, 1, NULL, 62, '000000294', NULL, 'new', '2021-10-06 18:45:15', 1, 0, 0, '2021-10-06 18:44:44', '2021-10-06 18:45:16', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'F8Rz2YCE__', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:13:\"kregoslup.png\";}', 0),
(295, 542, 543, 1, NULL, 62, '000000295', NULL, 'new', '2021-10-06 18:50:54', 1, 0, 0, '2021-10-06 18:50:07', '2021-10-06 18:50:54', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'yAggnF09dF', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(296, 544, 545, 1, NULL, 62, '000000296', NULL, 'new', '2021-10-06 18:58:53', 1, 0, 0, '2021-10-06 18:58:21', '2021-10-06 18:58:54', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'yxyqPe5Pg8', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(297, 546, 547, 1, NULL, 62, '000000297', NULL, 'new', '2021-10-06 19:01:01', 1, 0, 0, '2021-10-06 19:00:35', '2021-10-06 19:01:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'MF5OaWfM3h', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0);
INSERT INTO `sylius_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`, `agency_id`, `full_name`, `email`, `phone`, `info`, `agency_name`, `agency_email`, `company`, `city`, `attachments`, `for_payment`) VALUES
(298, 548, 549, 1, NULL, 62, '000000298', NULL, 'new', '2021-10-06 19:02:44', 1, 0, 0, '2021-10-06 19:02:30', '2021-10-06 19:02:44', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'UMZr4G8qO-', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(299, 550, 551, 1, NULL, 90, '000000299', NULL, 'new', '2021-10-06 19:07:32', 1, 0, 0, '2021-10-06 19:05:04', '2021-10-06 19:07:32', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'pnKMj5ksAG', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(300, 552, 553, 1, NULL, 62, '000000300', NULL, 'new', '2021-10-06 19:08:29', 1, 0, 0, '2021-10-06 19:08:12', '2021-10-06 19:08:29', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'huaFMPcRHP', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(301, 554, 555, 1, NULL, 62, '000000301', NULL, 'new', '2021-10-06 19:09:31', 1, 0, 0, '2021-10-06 19:09:13', '2021-10-06 19:09:31', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'pp9ctpXX8J', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:3:{i:0;s:8:\"bert.png\";i:1;s:18:\"dajkurwiemiodu.png\";i:2;s:21:\"elektryk_zawodowy.png\";}', 0),
(302, 556, 557, 1, NULL, 62, '000000302', NULL, 'new', '2021-10-06 20:15:00', 1, 0, 0, '2021-10-06 20:14:38', '2021-10-06 20:15:00', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'CqLk_9nkx5', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(303, 558, 559, 1, NULL, 90, '000000303', NULL, 'new', '2021-10-06 20:34:24', 1, 0, 0, '2021-10-06 20:33:40', '2021-10-06 20:34:24', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'T_9CvtSTan', '127.0.0.1', NULL, 'adfs', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(304, 560, 561, 1, NULL, 90, '000000304', NULL, 'new', '2021-10-06 20:45:18', 1, 0, 0, '2021-10-06 20:45:00', '2021-10-06 20:45:18', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '~4YLLanQ4m', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:18:\"dajkurwiemiodu.png\";}', 0),
(305, 562, 563, 1, NULL, 90, '000000305', NULL, 'new', '2021-10-06 20:46:58', 1, 0, 0, '2021-10-06 20:46:45', '2021-10-06 20:46:58', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'skTvS-iEiI', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:21:\"elektryk_zawodowy.png\";}', 0),
(306, 564, 565, 1, NULL, 90, '000000306', NULL, 'new', '2021-10-06 21:06:10', 1, 0, 0, '2021-10-06 21:05:56', '2021-10-06 21:06:10', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '8Rt6C4fVoM', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:18:\"dajkurwiemiodu.png\";}', 0),
(307, 566, 567, 1, NULL, 90, '000000307', NULL, 'new', '2021-10-06 21:10:05', 1, 0, 0, '2021-10-06 21:09:54', '2021-10-06 21:10:05', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '2-ePz9MDPu', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(308, 568, 569, 1, NULL, 90, '000000308', NULL, 'new', '2021-10-06 21:16:12', 1, 0, 0, '2021-10-06 21:15:49', '2021-10-06 21:16:12', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'BldXrVU0EW', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(309, 570, 571, 1, NULL, 90, '000000309', NULL, 'new', '2021-10-06 21:17:42', 1, 0, 0, '2021-10-06 21:17:10', '2021-10-06 21:17:42', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'WbxHFKLFNu', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(310, 572, 573, 1, NULL, 90, '000000310', NULL, 'new', '2021-10-06 21:29:09', 1, 0, 0, '2021-10-06 21:28:55', '2021-10-06 21:29:09', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'xD7hOMxmYu', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(311, 574, 575, 1, NULL, 90, '000000311', NULL, 'new', '2021-10-06 21:32:38', 1, 0, 0, '2021-10-06 21:32:27', '2021-10-06 21:32:38', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'web_rsnkqh', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(312, 576, 577, 1, NULL, 90, '000000312', NULL, 'new', '2021-10-06 21:46:57', 1, 0, 0, '2021-10-06 21:46:29', '2021-10-06 21:46:57', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'DGYO8ZylFo', '127.0.0.1', NULL, 'adfs', 'szymon.mlnk@gmail.com', '123123123', '', NULL, NULL, '', '', 'a:1:{i:0;s:21:\"elektryk_zawodowy.png\";}', 0),
(313, 578, 579, 1, NULL, 90, '000000313', NULL, 'new', '2021-10-06 21:48:39', 1, 0, 0, '2021-10-06 21:48:22', '2021-10-06 21:48:39', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'U600u3-K7Y', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(314, 580, 581, 1, NULL, 90, '000000314', NULL, 'new', '2021-10-06 21:54:34', 1, 0, 0, '2021-10-06 21:54:21', '2021-10-06 21:54:34', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'VjJO09L-mJ', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:18:\"dajkurwiemiodu.png\";}', 0),
(315, 582, 583, 1, NULL, 90, '000000315', NULL, 'new', '2021-10-06 21:55:54', 1, 0, 0, '2021-10-06 21:55:38', '2021-10-06 21:55:54', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'f66-Dlz6W9', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:21:\"elektryk_zawodowy.png\";}', 0),
(316, 584, 585, 1, NULL, 90, '000000316', NULL, 'new', '2021-10-06 21:59:53', 1, 0, 0, '2021-10-06 21:59:38', '2021-10-06 21:59:53', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'rZe17-kxll', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(317, 586, 587, 1, NULL, 90, '000000317', NULL, 'new', '2021-10-06 22:03:30', 1, 0, 0, '2021-10-06 22:03:15', '2021-10-06 22:03:30', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Ekpvh2M2tc', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:18:\"dajkurwiemiodu.png\";}', 0),
(318, 588, 589, 1, NULL, 90, '000000318', NULL, 'new', '2021-10-06 22:06:37', 1, 0, 0, '2021-10-06 22:06:26', '2021-10-06 22:06:37', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'LX-cuwjxIy', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:21:\"elektryk_zawodowy.png\";}', 0),
(319, 590, 591, 1, NULL, 90, '000000319', NULL, 'new', '2021-10-06 22:07:46', 1, 0, 0, '2021-10-06 22:07:31', '2021-10-06 22:07:46', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'DUYVvODPsv', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', 0),
(320, 592, 593, 1, NULL, 90, '000000320', NULL, 'new', '2021-10-06 22:13:24', 1, 0, 0, '2021-10-06 22:13:14', '2021-10-06 22:13:24', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'wfukPj1Ui~', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', 0),
(321, 594, 595, 1, NULL, 90, '000000321', NULL, 'new', '2021-10-06 22:18:53', 1, 0, 0, '2021-10-06 22:18:37', '2021-10-06 22:18:53', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'ozL0VDwuXK', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:2:{i:0;s:18:\"dajkurwiemiodu.png\";i:1;s:21:\"elektryk_zawodowy.png\";}', 0),
(322, 596, 597, 1, NULL, 62, '000000322', NULL, 'new', '2021-10-06 22:22:01', 1, 1, 1200, '2021-10-06 22:21:44', '2021-10-06 22:22:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'fE6uSzDTN8', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"fish.png\";}', 0),
(323, 598, 599, 1, NULL, 90, '000000323', NULL, 'new', '2021-10-07 10:26:21', 1, 0, 0, '2021-10-07 10:25:56', '2021-10-07 10:26:21', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'qqd9jGtcS8', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:18:\"dajkurwiemiodu.png\";}', 0),
(324, 600, 601, 1, NULL, 90, '000000324', NULL, 'new', '2021-10-07 10:27:58', 1, 0, 0, '2021-10-07 10:27:38', '2021-10-07 10:27:58', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Um51WZd~D~', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(325, 602, 603, 1, NULL, 90, '000000325', NULL, 'new', '2021-10-07 10:29:11', 1, 0, 0, '2021-10-07 10:28:58', '2021-10-07 10:29:11', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'DfW5ObO-v_', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(326, 604, 605, 1, NULL, 90, '000000326', NULL, 'new', '2021-10-07 10:31:51', 1, 0, 0, '2021-10-07 10:31:35', '2021-10-07 10:31:51', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '6uMZ-juhSd', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', 0),
(327, 606, 607, 1, NULL, 90, '000000327', NULL, 'new', '2021-10-07 10:35:01', 1, 0, 0, '2021-10-07 10:34:47', '2021-10-07 10:35:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '~8zYVyxHUR', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', 0),
(328, 608, 609, 1, NULL, 90, '000000328', NULL, 'new', '2021-10-07 10:36:01', 1, 0, 0, '2021-10-07 10:35:49', '2021-10-07 10:36:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'hhUZbS9Mc7', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', 0),
(329, 610, 611, 1, NULL, 90, '000000329', NULL, 'new', '2021-10-07 10:47:09', 1, 0, 0, '2021-10-07 10:46:54', '2021-10-07 10:47:09', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'QQgLkEw2hn', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:18:\"dajkurwiemiodu.png\";}', 0),
(330, 612, 613, 1, NULL, 90, '000000330', NULL, 'new', '2021-10-07 10:50:05', 1, 0, 1500, '2021-10-07 10:49:26', '2021-10-07 10:50:05', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'OmGiKcBwfN', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:11:\"avatar2.png\";}', 0),
(331, 614, 615, 1, NULL, 90, '000000331', NULL, 'new', '2021-10-07 11:03:48', 1, 0, 0, '2021-10-07 11:03:26', '2021-10-07 11:03:48', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'WwXOT1oWWe', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(332, 616, 617, 1, NULL, 90, '000000332', NULL, 'new', '2021-10-07 11:04:44', 1, 0, 0, '2021-10-07 11:04:32', '2021-10-07 11:04:44', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '5pkf2vbB4s', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(333, 618, 619, 1, NULL, 90, '000000333', NULL, 'new', '2021-10-07 11:06:58', 1, 0, 0, '2021-10-07 11:06:12', '2021-10-07 11:06:58', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'wJQhnzCRsH', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', 0),
(334, 620, 621, 1, NULL, 90, '000000334', NULL, 'new', '2021-10-07 11:08:07', 0, 0, 0, '2021-10-07 11:08:07', '2021-10-07 11:08:07', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'JhajWNpwQ-', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', NULL),
(335, 622, 623, 1, NULL, 62, '000000335', NULL, 'new', '2021-10-07 11:08:48', 1, 0, 0, '2021-10-07 11:08:16', '2021-10-07 11:08:48', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '96HeVCtxVD', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '123123123', '', NULL, NULL, 'agfddagfagf', 'agfdgfad', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(336, 624, 625, 1, NULL, 62, '000000336', NULL, 'new', '2021-10-07 11:10:42', 1, 0, 0, '2021-10-07 11:10:30', '2021-10-07 11:10:42', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '3pFdSllOL1', '127.0.0.1', NULL, 'adfs sadsad', 'example@example.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(337, 626, 627, 1, NULL, 90, '000000337', NULL, 'new', '2021-10-07 11:13:02', 1, 1, 1200, '2021-10-07 11:12:49', '2021-10-07 11:13:02', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '~9NCGI9Rxs', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(338, 628, 629, 1, NULL, 90, '000000338', NULL, 'new', '2021-10-07 11:15:17', 1, 0, 0, '2021-10-07 11:14:56', '2021-10-07 11:15:17', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'hbtR~a8PjH', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:13:\"kregoslup.png\";}', 0),
(339, 630, 631, 1, NULL, 90, '000000339', NULL, 'new', '2021-10-07 11:16:17', 221, 1, 259200, '2021-10-07 11:15:57', '2021-10-07 11:16:17', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'dgnconWPva', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', 0),
(340, 632, 633, 1, NULL, 90, '000000340', NULL, 'new', '2021-10-07 11:20:01', 108, 1, 129600, '2021-10-07 11:19:43', '2021-10-07 11:20:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '6uhE~EHJXi', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:11:\"avatar2.png\";}', 0),
(341, 634, 635, 1, NULL, 90, '000000341', NULL, 'new', '2021-10-07 11:21:27', 1008, 0, 0, '2021-10-07 11:21:15', '2021-10-07 11:21:27', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'leAz5t9coG', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(342, 636, 637, 1, NULL, 90, '000000342', NULL, 'new', '2021-10-07 11:43:35', 1008, 1, 604800, '2021-10-07 11:42:01', '2021-10-07 11:43:35', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Iib~J~NeM6', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(343, 638, 639, 1, NULL, 90, '000000343', NULL, 'new', '2021-10-07 11:46:49', 216, 0, 324000, '2021-10-07 11:46:35', '2021-10-07 11:46:50', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '0lDLNAMJYc', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(344, 640, 641, 1, NULL, 90, '000000344', NULL, 'new', '2021-10-07 11:52:24', 1, 0, 0, '2021-10-07 11:52:13', '2021-10-07 11:52:24', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '9oI9_16Cap', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(345, 642, 643, 1, NULL, 90, '000000345', NULL, 'new', '2021-10-07 11:55:29', 108, 1, 129600, '2021-10-07 11:55:15', '2021-10-07 11:55:29', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '_rG4qMOcH8', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:14:\"industries.png\";}', 0),
(346, 644, 645, 1, NULL, 90, '000000346', NULL, 'new', '2021-10-07 11:56:38', 1, 1, 1200, '2021-10-07 11:56:28', '2021-10-07 11:56:39', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '4-qErTTWL0', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(347, 646, 647, 1, NULL, 90, '000000347', NULL, 'new', '2021-10-07 11:58:05', 1, 1, 1200, '2021-10-07 11:57:50', '2021-10-07 11:58:05', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '6~~LZNOqFL', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(348, 648, 649, 1, NULL, 90, '000000348', NULL, 'new', '2021-10-07 12:04:37', 1, 1, 1200, '2021-10-07 12:04:20', '2021-10-07 12:04:37', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'NGVyHKFgdi', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(349, 650, 651, 1, NULL, 90, '000000349', NULL, 'new', '2021-10-07 12:05:33', 1, 1, 1200, '2021-10-07 12:05:17', '2021-10-07 12:05:33', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'YefCOdN-I2', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(350, 652, 653, 1, NULL, 90, '000000350', NULL, 'new', '2021-10-07 12:07:47', 1, 0, 0, '2021-10-07 12:07:29', '2021-10-07 12:07:47', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'D26wRAkDOv', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(351, 654, 655, 1, NULL, 90, '000000351', NULL, 'new', '2021-10-07 12:17:00', 1, 1, 1000, '2021-10-07 12:16:48', '2021-10-07 12:17:00', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'OA4sSrEKx2', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(352, 656, 657, 1, NULL, 90, '000000352', NULL, 'new', '2021-10-07 12:18:51', 1, 1, 1200, '2021-10-07 12:18:35', '2021-10-07 12:18:51', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'ksan2u06It', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(353, 658, 659, 1, NULL, 90, '000000353', NULL, 'new', '2021-10-07 12:21:01', 1, 0, 1500, '2021-10-07 12:20:49', '2021-10-07 12:21:01', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'DozDWs_XfK', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(354, 660, 661, 1, NULL, 90, '000000354', NULL, 'new', '2021-10-07 12:47:49', 1, 1, 1200, '2021-10-07 12:47:06', '2021-10-07 12:47:49', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'Ci-im_ZcqV', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:1:{i:0;s:19:\"informacjeikona.png\";}', 0),
(355, 662, 663, 1, NULL, 90, '000000355', NULL, 'new', '2021-10-07 12:51:10', 1, 0, 0, '2021-10-07 12:50:59', '2021-10-07 12:51:10', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'rjhcKdFVuE', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(356, 664, 665, 1, NULL, 90, '000000356', NULL, 'new', '2021-10-07 12:52:39', 1, 0, 0, '2021-10-07 12:52:28', '2021-10-07 12:52:39', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'v4z81tVIS9', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(357, 666, 667, 1, NULL, 90, '000000357', NULL, 'new', '2021-10-07 12:54:48', 1, 0, 0, '2021-10-07 12:54:35', '2021-10-07 12:54:48', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', '3117VF294x', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(358, 668, 669, 1, NULL, 90, '000000358', NULL, 'new', '2021-10-07 12:59:05', 1, 1, 1200, '2021-10-07 12:58:45', '2021-10-07 12:59:05', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'w9T9hYeSLR', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(359, 670, 671, 1, NULL, 90, '000000359', NULL, 'new', '2021-10-07 12:59:58', 828, 1, 367200, '2021-10-07 12:59:26', '2021-10-07 12:59:58', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'xGQV4NFcB_', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(360, 672, 673, 1, NULL, 90, '000000360', NULL, 'new', '2021-10-07 13:02:20', 3, 1, 1400, '2021-10-07 13:01:47', '2021-10-07 13:02:20', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'ldBDTr8ciV', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(361, 674, 675, 1, NULL, 90, '000000361', NULL, 'new', '2021-10-07 13:05:13', 2, 1, 1200, '2021-10-07 13:04:57', '2021-10-07 13:05:13', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'PJbcUcyaA2', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(362, 676, 677, 1, NULL, 90, '000000362', NULL, 'new', '2021-10-07 13:07:11', 3, 1, 1200, '2021-10-07 13:06:40', '2021-10-07 13:07:11', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'U2SDxnYUjZ', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0),
(363, 678, 679, 1, NULL, 90, '000000363', NULL, 'new', '2021-10-07 13:11:21', 2, 1, 1200, '2021-10-07 13:09:46', '2021-10-07 13:11:21', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'MkpOGwHEiX', '127.0.0.1', NULL, 'Szymon Mlonek', 'szymon.mlnk@gmail.com', '745223585', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', NULL, NULL, 'Mobbyn', 'Warszawa', 'a:1:{i:0;s:8:\"bert.png\";}', 0),
(364, 680, 681, 1, NULL, 90, '000000364', NULL, 'new', '2021-10-07 13:39:46', 1, 0, 0, '2021-10-07 13:39:36', '2021-10-07 13:39:46', 'PLN', 'pl_PL', 'cart', 'authorized', 'shipped', 'bPQmqYtT2L', '127.0.0.1', NULL, 'adfs sadsad', 'szymon.mlnk@gmail.com', '', '', NULL, NULL, '', '', 'a:0:{}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_order_item`
--

CREATE TABLE `sylius_order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_order_item`
--

INSERT INTO `sylius_order_item` (`id`, `order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`) VALUES
(1, 1, 5, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(2, 3, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(3, 4, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(4, 4, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(7, 7, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(8, 8, 1, 1008, 20199, 1008, 0, 1008, 0, NULL, NULL),
(9, 9, 1, 216, 20199, 216, 0, 216, 0, NULL, NULL),
(10, 10, 1, 216, 20199, 216, 0, 216, 0, NULL, NULL),
(11, 11, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(12, 12, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(13, 13, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(14, 14, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(50, 15, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(51, 15, 8, 1, 1300, 1, 0, 1, 0, NULL, NULL),
(52, 15, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(53, 15, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(54, 15, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(55, 15, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(56, 15, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(57, 15, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(58, 15, 8, 1, 1300, 1, 0, 1, 0, NULL, NULL),
(59, 15, 8, 1, 1300, 1, 0, 1, 0, NULL, NULL),
(60, 15, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(61, 15, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(212, 17, 13, 1, 0, 1, 0, 1, 0, NULL, NULL),
(213, 17, 13, 1, 0, 1, 0, 1, 0, NULL, NULL),
(214, 18, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(215, 18, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(216, 18, 15, 1, 0, 1, 0, 1, 0, NULL, NULL),
(217, 19, 1, 1008, 20199, 1008, 0, 1008, 0, NULL, NULL),
(238, 20, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(239, 20, 3, 10, 1500, 10, 0, 10, 0, NULL, NULL),
(240, 21, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(241, 21, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(242, 21, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(243, 21, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(244, 21, 13, 1, 0, 1, 0, 1, 0, NULL, NULL),
(245, 21, 15, 504, 1200, 504, 0, 504, 0, NULL, NULL),
(246, 22, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(247, 22, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(248, 22, 16, 1, 100, 1, 0, 1, 0, NULL, NULL),
(249, 22, 16, 1, 100, 1, 0, 1, 0, NULL, NULL),
(250, 22, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(402, 141, 31, 504, 67600, 504, 0, 504, 0, NULL, NULL),
(403, 142, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(404, 143, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(405, 144, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(406, 145, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(407, 146, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(408, 147, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(409, 148, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(410, 149, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(411, 150, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(412, 151, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(413, 152, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(414, 152, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(415, 153, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(416, 154, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(417, 155, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(418, 156, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(419, 157, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(420, 158, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(423, 159, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(446, 160, 7, 100, 1000, 100, 0, 100, 0, NULL, NULL),
(447, 160, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(448, 160, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(449, 160, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(450, 160, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(451, 161, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(452, 161, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(453, 162, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(454, 162, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(455, 162, 36, 1, 44300, 1, 0, 1, 0, NULL, NULL),
(456, 162, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(457, 163, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(458, 164, 4, 504, 0, 504, 0, 504, 0, NULL, NULL),
(459, 164, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(460, 164, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(461, 164, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(462, 164, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(463, 164, 36, 1, 44300, 1, 0, 1, 0, NULL, NULL),
(464, 164, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(465, 164, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(466, 164, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(467, 164, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(468, 165, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(469, 166, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(470, 167, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(471, 168, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(472, 169, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(473, 170, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(474, 171, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(475, 172, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(476, 172, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(477, 173, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(478, 174, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(479, 174, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(480, 174, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(481, 175, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(482, 176, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(483, 177, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(484, 178, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(485, 178, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(486, 178, 14, 216, 0, 216, 0, 216, 0, NULL, NULL),
(487, 178, 36, 108, 44300, 108, 0, 108, 0, NULL, NULL),
(488, 179, 4, 1000, 0, 1000, 0, 1000, 0, NULL, NULL),
(489, 180, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(490, 180, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(491, 181, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(492, 182, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(493, 183, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(494, 183, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(495, 184, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(496, 185, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(497, 186, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(498, 187, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(499, 188, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(500, 188, 15, 112, 1200, 112, 0, 112, 0, NULL, NULL),
(502, 188, 3, 2, 1500, 2, 0, 2, 0, NULL, NULL),
(503, 189, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(504, 189, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(505, 190, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(506, 190, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(507, 190, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(508, 190, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(509, 191, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(510, 192, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(511, 192, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(512, 192, 16, 1, 100, 1, 0, 1, 0, NULL, NULL),
(513, 192, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(514, 193, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(515, 194, 36, 1, 44300, 1, 0, 1, 0, NULL, NULL),
(516, 194, 8, 1, 1300, 1, 0, 1, 0, NULL, NULL),
(517, 195, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(518, 196, 31, 1, 67600, 1, 0, 1, 0, NULL, NULL),
(519, 197, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(520, 198, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(523, 200, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(534, 201, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(544, 202, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(555, 203, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(557, 205, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(558, 206, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(559, 207, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(560, 208, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(566, 210, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(567, 211, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(568, 211, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(569, 212, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(570, 212, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(574, 213, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(575, 214, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(576, 215, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(578, 216, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(581, 204, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(583, 217, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(584, 218, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(585, 219, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(586, 220, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(587, 221, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(588, 222, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(589, 223, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(590, 224, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(592, 225, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(593, 226, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(594, 227, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(595, 227, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(597, 228, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(602, 229, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(604, 230, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(606, 231, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(607, 232, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(608, 233, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(609, 234, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(610, 235, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(611, 236, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(612, 199, 1, 1, 20199, 1, 0, 1, 0, 'Action', 'Action'),
(613, 237, 1, 1, 20199, 1, 0, 1, 0, 'Action', 'Action'),
(614, 238, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(615, 239, 1, 1, 20199, 1, 0, 1, 0, 'Action', 'Action'),
(616, 240, 1, 1, 20199, 1, 0, 1, 0, 'Action', 'Action'),
(617, 241, 1, 1, 20199, 1, 0, 1, 0, 'Action', 'Action'),
(618, 242, 1, 1, 20199, 1, 0, 1, 0, NULL, NULL),
(619, 243, 1, 1, 20199, 1, 0, 1, 0, 'Action', 'Action'),
(620, 244, 1, 1, 20199, 1, 0, 1, 0, 'Action', 'Action'),
(621, 245, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(622, 246, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(623, 248, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(624, 249, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(625, 250, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(626, 251, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(627, 252, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(628, 253, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(629, 254, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(630, 255, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(631, 257, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(632, 258, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(633, 259, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(634, 260, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(637, 261, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(638, 262, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(639, 263, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(640, 264, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(641, 265, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(642, 266, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(643, 267, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(644, 268, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(645, 268, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(646, 269, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(647, 270, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(648, 271, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(649, 272, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(650, 273, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(651, 274, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(652, 275, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(653, 276, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(654, 277, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(655, 278, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(656, 279, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(657, 280, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(658, 281, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(659, 282, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(660, 283, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(661, 284, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(662, 285, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(663, 286, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(664, 287, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(665, 288, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(666, 289, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(667, 290, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(668, 291, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(669, 292, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(670, 293, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(671, 294, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(672, 295, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(673, 296, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(674, 297, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(675, 298, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(676, 299, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(677, 300, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(678, 301, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(679, 302, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(680, 303, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(681, 304, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(682, 305, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(683, 306, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(684, 307, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(685, 308, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(686, 309, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(687, 310, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(688, 311, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(689, 312, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(690, 313, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(691, 314, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(692, 315, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(693, 316, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(694, 317, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(695, 318, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(696, 319, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(697, 320, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(698, 321, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(699, 322, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(700, 323, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(701, 324, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(702, 325, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(703, 326, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(704, 327, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(705, 328, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(706, 329, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(708, 330, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(709, 331, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(710, 332, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(711, 333, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(712, 335, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(713, 336, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(714, 337, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(715, 338, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(716, 339, 4, 5, 0, 5, 0, 5, 0, NULL, NULL),
(717, 339, 15, 216, 1200, 216, 0, 216, 0, NULL, NULL),
(718, 340, 15, 108, 1200, 108, 0, 108, 0, NULL, NULL),
(719, 341, 4, 1008, 0, 1008, 0, 1008, 0, NULL, NULL),
(720, 342, 4, 504, 0, 504, 0, 504, 0, NULL, NULL),
(721, 342, 15, 504, 1200, 504, 0, 504, 0, NULL, NULL),
(722, 343, 3, 216, 1500, 216, 0, 216, 0, NULL, NULL),
(723, 344, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(724, 345, 15, 108, 1200, 108, 0, 108, 0, NULL, NULL),
(725, 346, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(726, 347, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(727, 348, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(728, 349, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(729, 350, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(730, 351, 7, 1, 1000, 1, 0, 1, 0, NULL, NULL),
(731, 352, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(732, 353, 3, 1, 1500, 1, 0, 1, 0, NULL, NULL),
(733, 354, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(734, 355, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(735, 356, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(736, 357, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(737, 358, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(738, 359, 15, 216, 1200, 216, 0, 216, 0, NULL, NULL),
(739, 359, 7, 108, 1000, 108, 0, 108, 0, NULL, NULL),
(740, 359, 4, 504, 0, 504, 0, 504, 0, NULL, NULL),
(741, 360, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(742, 360, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(743, 360, 17, 1, 200, 1, 0, 1, 0, NULL, NULL),
(744, 361, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(745, 361, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(746, 362, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(747, 362, 5, 1, 0, 1, 0, 1, 0, NULL, NULL),
(748, 362, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(749, 363, 4, 1, 0, 1, 0, 1, 0, NULL, NULL),
(750, 363, 15, 1, 1200, 1, 0, 1, 0, NULL, NULL),
(751, 364, 4, 1, 0, 1, 0, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_order_item_unit`
--

CREATE TABLE `sylius_order_item_unit` (
  `id` int(11) NOT NULL,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_order_sequence`
--

CREATE TABLE `sylius_order_sequence` (
  `id` int(11) NOT NULL,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_order_sequence`
--

INSERT INTO `sylius_order_sequence` (`id`, `idx`, `version`) VALUES
(1, 364, 346);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_payment`
--

CREATE TABLE `sylius_payment` (
  `id` int(11) NOT NULL,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_payment`
--

INSERT INTO `sylius_payment` (`id`, `method_id`, `order_id`, `currency_code`, `amount`, `state`, `details`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'PLN', 1500, 'cart', '[]', '2019-09-12 14:23:27', '2019-09-12 14:23:27'),
(2, 1, 4, 'PLN', 3000, 'cart', '[]', '2020-12-04 10:37:08', '2020-12-04 10:37:23'),
(5, 1, 7, 'PLN', 20199, 'cart', '[]', '2021-05-10 11:40:45', '2021-05-10 11:40:45'),
(6, 1, 8, 'PLN', 20360592, 'cart', '[]', '2021-07-12 10:31:18', '2021-07-12 10:31:19'),
(7, 1, 9, 'PLN', 4362984, 'cart', '[]', '2021-07-12 10:58:59', '2021-07-12 10:58:59'),
(8, 1, 10, 'PLN', 4362984, 'cart', '[]', '2021-07-12 12:03:27', '2021-07-12 12:03:27'),
(9, 1, 11, 'PLN', 20199, 'cart', '[]', '2021-07-12 12:09:49', '2021-07-12 12:09:49'),
(10, 1, 12, 'PLN', 20199, 'cart', '[]', '2021-07-12 12:10:43', '2021-07-12 12:10:43'),
(11, 1, 13, 'PLN', 20199, 'cart', '[]', '2021-07-12 12:13:53', '2021-07-12 12:13:53'),
(12, 1, 14, 'PLN', 20199, 'cart', '[]', '2021-07-12 12:17:07', '2021-07-12 12:17:07'),
(17, 1, 15, 'PLN', 107895, 'cart', '[]', '2021-07-16 10:20:58', '2021-07-16 10:53:19'),
(45, 1, 18, 'PLN', 21699, 'cart', '[]', '2021-07-26 11:59:39', '2021-07-26 11:59:44'),
(46, 1, 19, 'PLN', 20360592, 'cart', '[]', '2021-07-26 12:07:14', '2021-07-26 12:07:14'),
(48, 1, 20, 'PLN', 16200, 'cart', '[]', '2021-07-28 15:04:21', '2021-07-28 15:04:58'),
(49, 1, 21, 'PLN', 627499, 'cart', '[]', '2021-07-28 15:39:58', '2021-07-29 09:55:51'),
(50, 1, 22, 'PLN', 22599, 'cart', '[]', '2021-07-29 13:31:46', '2021-08-03 15:05:39'),
(165, 1, 141, 'PLN', 34070400, 'cart', '[]', '2021-08-12 15:26:02', '2021-08-12 15:26:02'),
(166, 1, 142, 'PLN', 67600, 'cart', '[]', '2021-08-12 15:45:55', '2021-08-12 15:45:55'),
(167, 1, 143, 'PLN', 67600, 'cart', '[]', '2021-08-12 15:48:39', '2021-08-12 15:48:40'),
(168, 1, 144, 'PLN', 67600, 'cart', '[]', '2021-08-12 15:49:52', '2021-08-12 15:49:52'),
(169, 1, 145, 'PLN', 67600, 'cart', '[]', '2021-08-12 15:50:56', '2021-08-12 15:50:56'),
(170, 1, 146, 'PLN', 67600, 'cart', '[]', '2021-08-12 15:51:39', '2021-08-12 15:51:39'),
(171, 1, 147, 'PLN', 67600, 'cart', '[]', '2021-08-12 15:52:11', '2021-08-12 15:52:11'),
(172, 1, 148, 'PLN', 67600, 'cart', '[]', '2021-08-12 15:55:01', '2021-08-12 15:55:02'),
(173, 1, 149, 'PLN', 67600, 'cart', '[]', '2021-08-12 15:57:29', '2021-08-12 15:57:29'),
(174, 1, 150, 'PLN', 67600, 'cart', '[]', '2021-08-12 16:02:02', '2021-08-12 16:02:02'),
(175, 1, 151, 'PLN', 67600, 'cart', '[]', '2021-08-12 16:03:45', '2021-08-12 16:03:45'),
(176, 1, 152, 'PLN', 67600, 'cart', '[]', '2021-08-13 08:48:42', '2021-08-13 08:48:42'),
(177, 1, 153, 'PLN', 67600, 'cart', '[]', '2021-08-13 08:51:51', '2021-08-13 08:51:52'),
(178, 1, 154, 'PLN', 67600, 'cart', '[]', '2021-08-13 08:53:33', '2021-08-13 08:53:33'),
(179, 1, 155, 'PLN', 20199, 'cart', '[]', '2021-08-13 08:58:24', '2021-08-13 08:58:24'),
(180, 1, 156, 'PLN', 67600, 'cart', '[]', '2021-08-13 09:36:24', '2021-08-13 09:36:24'),
(181, 1, 157, 'PLN', 67600, 'cart', '[]', '2021-08-13 09:36:58', '2021-08-13 09:36:58'),
(182, 1, 158, 'PLN', 67600, 'cart', '[]', '2021-08-13 09:44:40', '2021-08-13 09:44:40'),
(184, 1, 159, 'PLN', 67600, 'cart', '[]', '2021-08-13 10:01:51', '2021-08-13 10:07:22'),
(195, 1, 160, 'PLN', 189999, 'cart', '[]', '2021-08-13 11:04:41', '2021-08-16 13:38:45'),
(196, 1, 161, 'PLN', 2700, 'cart', '[]', '2021-08-17 08:58:13', '2021-08-17 09:24:50'),
(197, 1, 162, 'PLN', 133099, 'cart', '[]', '2021-08-17 09:28:39', '2021-08-17 09:34:39'),
(198, 1, 163, 'PLN', 1500, 'cart', '[]', '2021-08-17 11:30:35', '2021-08-17 11:30:35'),
(199, 1, 164, 'PLN', 156498, 'cart', '[]', '2021-08-17 12:59:07', '2021-08-17 12:59:30'),
(200, 1, 165, 'PLN', 20199, 'cart', '[]', '2021-08-17 13:08:25', '2021-08-17 13:08:25'),
(201, 1, 166, 'PLN', 1200, 'cart', '[]', '2021-08-17 13:45:55', '2021-08-17 13:45:55'),
(202, 1, 167, 'PLN', 20199, 'cart', '[]', '2021-08-17 14:17:46', '2021-08-17 14:17:46'),
(203, 1, 168, 'PLN', 20199, 'cart', '[]', '2021-08-17 15:28:06', '2021-08-17 15:28:06'),
(204, 1, 169, 'PLN', 20199, 'cart', '[]', '2021-08-17 16:01:38', '2021-08-17 16:01:38'),
(205, 1, 170, 'PLN', 20199, 'cart', '[]', '2021-08-17 16:02:20', '2021-08-17 16:02:21'),
(206, 1, 171, 'PLN', 20199, 'cart', '[]', '2021-08-17 16:05:37', '2021-08-17 16:05:37'),
(207, 1, 172, 'PLN', 40398, 'cart', '[]', '2021-08-18 08:49:05', '2021-08-18 08:49:33'),
(208, 1, 173, 'PLN', 20199, 'cart', '[]', '2021-08-18 09:54:50', '2021-08-18 09:54:50'),
(209, 1, 174, 'PLN', 41898, 'cart', '[]', '2021-08-18 10:00:25', '2021-08-18 10:01:14'),
(210, 1, 175, 'PLN', 1000, 'cart', '[]', '2021-08-18 10:03:57', '2021-08-18 10:03:57'),
(211, 1, 176, 'PLN', 20199, 'cart', '[]', '2021-08-18 10:06:49', '2021-08-18 10:06:49'),
(212, 1, 177, 'PLN', 20199, 'cart', '[]', '2021-08-18 10:08:46', '2021-08-18 10:08:46'),
(213, 1, 178, 'PLN', 4853500, 'cart', '[]', '2021-08-18 11:12:13', '2021-08-18 14:14:01'),
(214, 1, 181, 'PLN', 20199, 'cart', '[]', '2021-08-18 16:04:44', '2021-08-18 16:04:44'),
(215, 1, 182, 'PLN', 20199, 'cart', '[]', '2021-08-18 16:07:04', '2021-08-18 16:07:04'),
(216, 1, 183, 'PLN', 21199, 'cart', '[]', '2021-08-18 16:33:21', '2021-08-19 12:50:54'),
(217, 1, 184, 'PLN', 20199, 'cart', '[]', '2021-08-19 12:55:33', '2021-08-19 12:55:33'),
(218, 1, 185, 'PLN', 20199, 'cart', '[]', '2021-08-19 12:57:05', '2021-08-19 12:57:05'),
(219, 1, 186, 'PLN', 1500, 'cart', '[]', '2021-08-19 12:58:23', '2021-08-19 12:58:23'),
(220, 1, 188, 'PLN', 141900, 'cart', '[]', '2021-08-19 15:39:44', '2021-08-19 15:46:34'),
(221, 1, 189, 'PLN', 68600, 'cart', '[]', '2021-08-20 08:47:00', '2021-08-20 08:47:27'),
(222, 1, 190, 'PLN', 43398, 'cart', '[]', '2021-08-31 13:26:41', '2021-08-31 13:59:43'),
(223, 1, 191, 'PLN', 20199, 'cart', '[]', '2021-09-01 12:15:22', '2021-09-01 12:15:22'),
(224, 1, 192, 'PLN', 2800, 'cart', '[]', '2021-09-04 13:19:28', '2021-09-04 13:19:52'),
(225, 1, 193, 'PLN', 1500, 'cart', '[]', '2021-09-04 15:03:14', '2021-09-04 15:03:14'),
(226, 1, 194, 'PLN', 45600, 'cart', '[]', '2021-09-05 17:30:11', '2021-09-05 17:31:04'),
(227, 1, 195, 'PLN', 1500, 'cart', '[]', '2021-09-05 17:42:55', '2021-09-05 17:42:55'),
(228, 1, 196, 'PLN', 67600, 'cart', '[]', '2021-09-10 11:10:48', '2021-09-10 11:10:48'),
(229, 1, 197, 'PLN', 1500, 'cart', '[]', '2021-09-15 12:32:55', '2021-09-15 12:32:55'),
(230, 1, 198, 'PLN', 1500, 'cart', '[]', '2021-09-17 21:09:41', '2021-09-17 21:09:41'),
(232, 1, 200, 'PLN', 1500, 'cart', '[]', '2021-09-24 08:43:21', '2021-09-24 08:43:21'),
(237, 1, 201, 'PLN', 1200, 'cart', '[]', '2021-09-24 20:33:19', '2021-09-24 20:33:19'),
(244, 1, 202, 'PLN', 20199, 'cart', '[]', '2021-09-25 13:47:11', '2021-09-25 13:47:11'),
(251, 1, 203, 'PLN', 20199, 'cart', '[]', '2021-09-26 14:49:56', '2021-09-26 14:49:56'),
(253, 1, 205, 'PLN', 20199, 'cart', '[]', '2021-09-27 12:23:37', '2021-09-27 12:23:37'),
(258, 1, 210, 'PLN', 20199, 'cart', '[]', '2021-09-27 12:59:05', '2021-09-27 12:59:06'),
(259, 1, 211, 'PLN', 20199, 'cart', '[]', '2021-09-27 12:59:41', '2021-09-27 12:59:41'),
(260, 1, 212, 'PLN', 20199, 'cart', '[]', '2021-09-27 13:01:22', '2021-09-27 13:01:22'),
(262, 1, 213, 'PLN', 20199, 'cart', '[]', '2021-09-27 13:08:53', '2021-09-27 13:08:53'),
(263, 1, 214, 'PLN', 20199, 'cart', '[]', '2021-09-27 13:09:38', '2021-09-27 13:09:38'),
(264, 1, 215, 'PLN', 20199, 'cart', '[]', '2021-09-27 13:10:41', '2021-09-27 13:10:41'),
(268, 1, 204, 'PLN', 20199, 'cart', '[]', '2021-09-27 14:05:18', '2021-09-27 14:05:18'),
(269, 1, 217, 'PLN', 20199, 'cart', '[]', '2021-09-27 19:40:34', '2021-09-27 19:40:34'),
(270, 1, 218, 'PLN', 20199, 'cart', '[]', '2021-09-27 19:41:03', '2021-09-27 19:41:03'),
(271, 1, 223, 'PLN', 20199, 'cart', '[]', '2021-09-27 19:55:41', '2021-09-27 19:55:41'),
(272, 1, 225, 'PLN', 20199, 'cart', '[]', '2021-09-27 20:06:42', '2021-09-27 20:06:42'),
(273, 1, 227, 'PLN', 40398, 'cart', '[]', '2021-09-27 20:07:46', '2021-09-27 20:07:58'),
(274, 1, 228, 'PLN', 20199, 'cart', '[]', '2021-09-27 20:16:55', '2021-09-27 20:16:55'),
(278, 1, 229, 'PLN', 20199, 'cart', '[]', '2021-09-28 08:22:10', '2021-09-28 08:22:10'),
(280, 1, 230, 'PLN', 1200, 'cart', '[]', '2021-09-28 08:40:02', '2021-09-28 08:40:02'),
(282, 1, 232, 'PLN', 20199, 'cart', '[]', '2021-09-29 17:23:08', '2021-09-29 17:23:09'),
(283, 1, 235, 'PLN', 20199, 'cart', '[]', '2021-10-01 11:48:34', '2021-10-01 11:48:35'),
(284, 1, 236, 'PLN', 20199, 'cart', '[]', '2021-10-01 11:49:30', '2021-10-01 11:49:31'),
(285, 1, 199, 'PLN', 20199, 'new', '{\"paid\":false,\"status\":\"pending\"}', '2021-10-01 12:17:11', '2021-10-01 12:18:27'),
(286, 1, 237, 'PLN', 20199, 'new', '{\"paid\":false,\"status\":\"pending\"}', '2021-10-01 12:21:17', '2021-10-01 12:23:09'),
(287, 1, 238, 'PLN', 20199, 'cart', '[]', '2021-10-01 12:24:30', '2021-10-01 12:24:30'),
(288, 1, 239, 'PLN', 20199, 'new', '[]', '2021-10-01 20:26:47', '2021-10-01 20:33:25'),
(289, 1, 240, 'PLN', 20199, 'new', '[]', '2021-10-01 20:33:57', '2021-10-01 20:34:55'),
(290, 1, 241, 'PLN', 20199, 'new', '[]', '2021-10-01 20:36:13', '2021-10-01 20:36:52'),
(291, 1, 242, 'PLN', 20199, 'cart', '[]', '2021-10-01 20:40:40', '2021-10-01 20:40:40'),
(292, 1, 243, 'PLN', 20199, 'new', '[]', '2021-10-01 20:51:44', '2021-10-01 20:52:57'),
(293, 1, 244, 'PLN', 20199, 'new', '[]', '2021-10-01 20:54:28', '2021-10-01 21:23:24'),
(295, 1, 322, 'PLN', 1200, 'cart', '[]', '2021-10-06 22:21:44', '2021-10-06 22:21:44'),
(297, 1, 330, 'PLN', 1500, 'cart', '[]', '2021-10-07 10:49:50', '2021-10-07 10:49:50'),
(298, 1, 337, 'PLN', 1200, 'cart', '[]', '2021-10-07 11:12:50', '2021-10-07 11:12:50'),
(299, 1, 339, 'PLN', 259200, 'cart', '[]', '2021-10-07 11:16:05', '2021-10-07 11:16:05'),
(300, 1, 340, 'PLN', 129600, 'cart', '[]', '2021-10-07 11:19:44', '2021-10-07 11:19:44'),
(301, 1, 342, 'PLN', 604800, 'cart', '[]', '2021-10-07 11:42:53', '2021-10-07 11:42:53'),
(302, 1, 343, 'PLN', 324000, 'cart', '[]', '2021-10-07 11:46:35', '2021-10-07 11:46:35'),
(303, 1, 345, 'PLN', 129600, 'cart', '[]', '2021-10-07 11:55:16', '2021-10-07 11:55:16'),
(304, 1, 346, 'PLN', 1200, 'cart', '[]', '2021-10-07 11:56:28', '2021-10-07 11:56:28'),
(305, 1, 347, 'PLN', 1200, 'cart', '[]', '2021-10-07 11:57:51', '2021-10-07 11:57:51'),
(306, 1, 348, 'PLN', 1200, 'cart', '[]', '2021-10-07 12:04:21', '2021-10-07 12:04:21'),
(307, 1, 349, 'PLN', 1200, 'cart', '[]', '2021-10-07 12:05:17', '2021-10-07 12:05:17'),
(308, 1, 351, 'PLN', 1000, 'cart', '[]', '2021-10-07 12:16:48', '2021-10-07 12:16:48'),
(309, 1, 352, 'PLN', 1200, 'cart', '[]', '2021-10-07 12:18:36', '2021-10-07 12:18:36'),
(310, 1, 353, 'PLN', 1500, 'cart', '[]', '2021-10-07 12:20:50', '2021-10-07 12:20:50'),
(311, 1, 354, 'PLN', 1200, 'cart', '[]', '2021-10-07 12:47:07', '2021-10-07 12:47:07'),
(312, 1, 358, 'PLN', 1200, 'cart', '[]', '2021-10-07 12:58:45', '2021-10-07 12:58:45'),
(313, 1, 359, 'PLN', 367200, 'cart', '[]', '2021-10-07 12:59:27', '2021-10-07 12:59:34'),
(314, 1, 360, 'PLN', 1400, 'cart', '[]', '2021-10-07 13:01:48', '2021-10-07 13:01:56'),
(315, 1, 361, 'PLN', 1200, 'cart', '[]', '2021-10-07 13:05:02', '2021-10-07 13:05:02'),
(316, 1, 362, 'PLN', 1200, 'cart', '[]', '2021-10-07 13:07:01', '2021-10-07 13:07:01'),
(317, 1, 363, 'PLN', 1200, 'cart', '[]', '2021-10-07 13:09:57', '2021-10-07 13:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_payment_method`
--

CREATE TABLE `sylius_payment_method` (
  `id` int(11) NOT NULL,
  `gateway_config_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_payment_method`
--

INSERT INTO `sylius_payment_method` (`id`, `gateway_config_id`, `code`, `environment`, `is_enabled`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 'cash_on_delivery', NULL, 1, 0, '2019-01-02 17:35:59', '2019-01-02 17:35:59'),
(2, 2, 'bank_transfer', NULL, 1, 1, '2019-01-02 17:35:59', '2019-01-02 17:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_payment_method_channels`
--

CREATE TABLE `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_payment_method_channels`
--

INSERT INTO `sylius_payment_method_channels` (`payment_method_id`, `channel_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_payment_method_translation`
--

CREATE TABLE `sylius_payment_method_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_payment_method_translation`
--

INSERT INTO `sylius_payment_method_translation` (`id`, `translatable_id`, `name`, `description`, `instructions`, `locale`) VALUES
(1, 1, 'Cash on delivery', 'Et repudiandae in velit.', NULL, 'pl_PL'),
(2, 2, 'Bank transfer', 'Deserunt rerum asperiores eius et non ad et recusandae.', NULL, 'pl_PL');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_payment_security_token`
--

CREATE TABLE `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product`
--

CREATE TABLE `sylius_product` (
  `id` int(11) NOT NULL,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  `manufacturer_id` int(11) DEFAULT NULL,
  `ribbon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `for_sell` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product`
--

INSERT INTO `sylius_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`, `manufacturer_id`, `ribbon`, `for_sell`) VALUES
(1, 18, 'maxim-1', '2019-09-11 12:46:39', '2021-09-24 19:23:36', 1, 'choice', 0, 2, NULL, 1),
(3, 18, 'maxim-2', '2019-09-11 12:48:09', '2021-08-09 13:31:34', 1, 'choice', 0, 12, NULL, 0),
(4, 18, 'maxim-3', '2019-09-11 16:20:05', '2021-08-18 14:41:27', 1, 'choice', 3.3333333333333, 2, '2', 0),
(5, 18, 'maxim-4', '2019-09-11 16:20:05', '2021-08-02 09:10:24', 1, 'choice', 0, 4, '1', 0),
(7, 29, 'kubek-eko', '2021-06-08 11:35:03', '2021-07-30 12:46:10', 1, 'choice', 0, 3, '1', 0),
(8, 25, 'tescior', '2021-07-13 15:08:27', '2021-07-19 09:39:10', 1, 'choice', 0, 4, NULL, 0),
(13, NULL, 'ghhgfh', '2021-07-19 13:00:35', '2021-07-19 13:00:37', 1, 'choice', 0, 3, NULL, 0),
(14, 23, 'ohivydnfvhgsd', '2021-07-19 14:31:18', '2021-07-19 14:31:20', 1, 'choice', 0, 10, NULL, 0),
(15, 18, 'produkt1', '2021-07-22 10:22:52', '2021-07-30 12:49:15', 1, 'choice', 0, 3, '2', 0),
(16, NULL, 'produkt2', '2021-07-22 10:23:52', '2021-07-22 10:23:53', 1, 'choice', 0, 8, NULL, 0),
(17, NULL, 'produkt3', '2021-07-22 10:24:35', '2021-07-22 10:24:36', 1, 'choice', 0, 13, NULL, 0),
(31, NULL, 'dfgfdg', '2021-08-10 13:59:04', '2021-09-24 09:27:07', 1, 'choice', 0, 4, '2', 1),
(36, 18, 'noowy', '2021-08-10 14:33:38', '2021-09-27 14:09:29', 1, 'choice', 0, 2, '1', 1),
(43, NULL, 'asdfdas', '2021-08-11 13:41:53', '2021-08-11 13:41:54', 1, 'choice', 0, 4, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_association`
--

CREATE TABLE `sylius_product_association` (
  `id` int(11) NOT NULL,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_association_product`
--

CREATE TABLE `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_association_type`
--

CREATE TABLE `sylius_product_association_type` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_association_type`
--

INSERT INTO `sylius_product_association_type` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'similar_products', '2019-01-02 17:36:03', '2019-01-02 17:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_association_type_translation`
--

CREATE TABLE `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_association_type_translation`
--

INSERT INTO `sylius_product_association_type_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Similar products', 'pl_PL');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_attribute`
--

CREATE TABLE `sylius_product_attribute` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_attribute`
--

INSERT INTO `sylius_product_attribute` (`id`, `code`, `type`, `storage_type`, `configuration`, `created_at`, `updated_at`, `position`) VALUES
(1, 'flaga-ceny', 'text', 'text', 'a:0:{}', '2019-09-11 12:46:39', '2019-09-11 12:46:39', 11),
(2, 'kolor', 'text', 'text', 'a:0:{}', '2019-09-11 12:46:39', '2019-09-11 12:46:39', 12),
(3, 'dodatkowe-kolory', 'text', 'text', 'a:0:{}', '2019-09-11 12:46:39', '2019-09-11 12:46:39', 13),
(4, 'model', 'text', 'text', 'a:0:{}', '2019-09-12 13:36:18', '2019-09-12 13:36:18', 14),
(5, 'minimalne-zamowienie', 'text', 'text', 'a:0:{}', '2019-09-12 15:19:03', '2019-09-12 15:19:03', 15),
(7, 'hydrokolor', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 21:47:31', '2021-10-11 21:47:31', 10),
(8, 'rozmiar', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 21:48:03', '2021-10-11 21:48:03', 8),
(9, 'pojemnosc', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 21:52:58', '2021-10-11 21:52:58', 9),
(10, 'material', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 21:53:38', '2021-10-11 21:53:38', 7),
(11, 'waga', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 22:00:42', '2021-10-11 22:00:42', 0),
(12, 'rozmiar-opakowania', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 22:02:05', '2021-10-11 22:02:05', 6),
(13, 'mulitpack', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 22:02:20', '2021-10-11 22:02:20', 5),
(14, 'rozmiar-opakowania-zbiorczego', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 22:02:45', '2021-10-11 22:02:45', 4),
(15, 'coloration', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 22:05:25', '2021-10-11 22:05:25', 3),
(16, 'znakowanie', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 22:05:41', '2021-10-11 22:05:41', 2),
(17, 'kraj-produkcji', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 22:12:18', '2021-10-11 22:12:18', 1),
(18, 'rozmiar-nadruku', 'text', 'text', 'a:2:{s:3:\"min\";N;s:3:\"max\";N;}', '2021-10-11 22:13:42', '2021-10-11 22:13:42', 16);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_attribute_translation`
--

CREATE TABLE `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_attribute_translation`
--

INSERT INTO `sylius_product_attribute_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Flaga ceny', 'pl_PL'),
(2, 2, 'Kolor', 'pl_PL'),
(3, 3, 'Dodatkowe kolory', 'pl_PL'),
(4, 4, 'Model', 'pl_PL'),
(5, 5, 'Minimalne zamówienie', 'pl_PL'),
(7, 7, 'Hydrokolor', 'pl_PL'),
(8, 8, 'Rozmiar', 'pl_PL'),
(9, 9, 'Pojemność', 'pl_PL'),
(10, 10, 'Materiał', 'pl_PL'),
(11, 11, 'Waga', 'pl_PL'),
(12, 12, 'Rozmiar opakowania', 'pl_PL'),
(13, 13, 'Multipack', 'pl_PL'),
(14, 14, 'Rozmiar opakowania zbiorczego', 'pl_PL'),
(15, 15, 'Coloration', 'pl_PL'),
(16, 16, 'Znakowanie', 'pl_PL'),
(17, 17, 'Kraj produkcji', 'pl_PL'),
(18, 18, 'Rozmiar nadruku', 'pl_PL');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_attribute_value`
--

CREATE TABLE `sylius_product_attribute_value` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_attribute_value`
--

INSERT INTO `sylius_product_attribute_value` (`id`, `product_id`, `attribute_id`, `locale_code`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`) VALUES
(1, 1, 1, 'pl_PL', 'Od', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 2, 'pl_PL', 'Zielony', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 3, 'pl_PL', 'czerwony, niebieski, zielony', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 3, 2, 'pl_PL', 'Niebieski', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 3, 3, 'pl_PL', 'czerwony, niebieski, zielony', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 4, 1, 'pl_PL', 'Od', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 4, 2, 'pl_PL', 'Zielony', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 4, 3, 'pl_PL', 'czerwony, niebieski, zielony', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, 2, 'pl_PL', 'Niebieski', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 5, 3, 'pl_PL', 'czerwony, niebieski, zielony', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 4, 4, 'pl_PL', 'M207A', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 5, 4, 'pl_PL', 'M207B', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 4, 5, 'pl_PL', '5', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 7, 2, 'pl_PL', 'Eko', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 14, 2, 'pl_PL', 'bababooey', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 15, 2, 'pl_PL', 'bababooey', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 15, 1, 'pl_PL', 'Od', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_channels`
--

CREATE TABLE `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_channels`
--

INSERT INTO `sylius_product_channels` (`product_id`, `channel_id`) VALUES
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(7, 1),
(8, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(31, 1),
(36, 1),
(43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_image`
--

CREATE TABLE `sylius_product_image` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_image`
--

INSERT INTO `sylius_product_image` (`id`, `owner_id`, `type`, `path`) VALUES
(20, 1, 'thumbnail', '9d/74/437511d1f8dce44623cb9e42448f.jpeg'),
(21, 3, 'thumbnail', 'ab/c0/51dea20f1536f137c6c7868acbbb.jpeg'),
(22, 3, 'main', 'a4/69/2c46c629e3a9b0e2a43cd19c6523.jpeg'),
(51, 4, 'thumbnail', '08/cd/6e8eecb919a957f77db8c0da69e1.jpeg'),
(52, 4, 'main', 'a9/8a/b474ae68e855b2965240cff1fe48.jpeg'),
(53, 4, 'main', 'df/58/2baa677822840fc8c7c67a24dc8e.jpeg'),
(54, 5, 'thumbnail', '95/1d/9eb9cf7b82bbb09d0c3ee615ea21.jpeg'),
(55, 5, 'main', 'bb/20/9ae4977c66ed1e984392011e4f7d.jpeg'),
(58, 7, 'thumbnail', 'da/d9/c2a34bf868e87b3a3a49d553d9c4.jpeg'),
(60, 14, 'thumbnail', '2a/72/dccc347885f700f966dc83f9dbc2.png'),
(61, 15, 'thumbnail', '2f/28/a8feb661ee1a50f273476639e7b5.jpeg'),
(62, 36, 'thumbnail', 'ea/c4/0d1065c53e9cdacc37e8ddb358f9.jpeg'),
(63, 31, 'thumbnail', '90/6f/950b46b799b1f62d029c8a5a30a6.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_image_product_variants`
--

CREATE TABLE `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_option`
--

CREATE TABLE `sylius_product_option` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_options`
--

CREATE TABLE `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_option_translation`
--

CREATE TABLE `sylius_product_option_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_option_value`
--

CREATE TABLE `sylius_product_option_value` (
  `id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_option_value_translation`
--

CREATE TABLE `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_review`
--

CREATE TABLE `sylius_product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_review`
--

INSERT INTO `sylius_product_review` (`id`, `product_id`, `author_id`, `title`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 62, 'Recenzent kubków btw', 4, 'Całkiem git kubek, sztywno się trzyma ręki', 'accepted', '2021-07-27 13:06:56', '2021-07-27 13:07:17'),
(2, 4, 65, 'Inny recenzent kubków', 3, 'Faktycznie dobrze się trzyma ręki ale trzeba było dać 3 gwiazdki żeby sprawdzić czy średnia dobrze działa', 'accepted', '2021-07-27 13:08:59', '2021-07-27 13:09:11'),
(3, 4, 66, 'Ostatni recenzent kubków', 3, 'Dobry ale musiałem tak zrobić', 'accepted', '2021-07-27 13:10:30', '2021-08-18 14:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_taxon`
--

CREATE TABLE `sylius_product_taxon` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_taxon`
--

INSERT INTO `sylius_product_taxon` (`id`, `product_id`, `taxon_id`, `position`) VALUES
(1, 1, 18, 0),
(3, 3, 18, 2),
(4, 4, 18, 1),
(5, 5, 18, 3),
(7, 7, 1, 2),
(10, 8, 25, 1),
(13, 7, 18, 8),
(16, 13, 28, 0),
(17, 14, 1, 3),
(18, 14, 23, 0),
(19, 14, 28, 1),
(20, 8, 18, 10),
(21, 14, 18, 12),
(22, 13, 18, 11),
(24, 15, 18, 4),
(25, 16, 18, 5),
(26, 17, 18, 6),
(27, 4, 19, 0),
(28, 4, 21, 0),
(29, 36, 18, 7),
(30, 31, 18, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_translation`
--

CREATE TABLE `sylius_product_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_translation`
--

INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
(1, 1, 'Action', 'action', 'Super opis', NULL, NULL, NULL, 'pl_PL'),
(3, 3, 'Kolejny action', 'kolejny-action', 'Bardzo fajny i tani kubek reklamowy', NULL, NULL, NULL, 'pl_PL'),
(4, 4, 'Action', 'action-1', 'Super opis', NULL, NULL, NULL, 'pl_PL'),
(5, 5, 'Kolejny action', 'kolejny-action-1', 'Bardzo fajny i tani kubek reklamowy', NULL, NULL, NULL, 'pl_PL'),
(7, 7, 'kubek eko', 'kubek-eko', NULL, NULL, NULL, NULL, 'pl_PL'),
(8, 8, 'teścior', 'tescior', 'teścioro pis', NULL, NULL, 'teścioropisktórszy', 'pl_PL'),
(13, 13, 'fgh', 'fgh', NULL, NULL, NULL, NULL, 'pl_PL'),
(14, 14, 'ohivydnfvhgsd', 'ohivydnfvhgsd', NULL, NULL, NULL, NULL, 'pl_PL'),
(15, 15, 'produkt1', 'produkt1', 'produkt1', 'produkt1', 'produkt1', 'produkt1', 'pl_PL'),
(16, 16, 'produkt2', 'produkt2', 'produkt2', 'produkt2', 'produkt2', 'produkt2', 'pl_PL'),
(17, 17, 'produkt3', 'produkt3', 'produkt3', 'produkt3', 'produkt3', 'produkt3', 'pl_PL'),
(31, 31, 'Tagi działają', 'ddfgddfgd', NULL, NULL, NULL, NULL, 'pl_PL'),
(36, 36, 'nowy kubas', 'nowy-kubas', NULL, NULL, NULL, NULL, 'pl_PL'),
(43, 43, 'sddsd', 'sddsd', NULL, NULL, NULL, NULL, 'pl_PL');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_variant`
--

CREATE TABLE `sylius_product_variant` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `shipping_required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_variant`
--

INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `position`, `version`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `shipping_required`) VALUES
(1, 1, NULL, NULL, 'maxim-1', '2019-09-11 12:46:39', '2019-09-11 12:46:39', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 0),
(3, 3, NULL, NULL, 'maxim-2', '2019-09-11 12:48:09', '2019-09-11 12:48:09', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 0),
(4, 4, NULL, NULL, 'maxim-3', '2019-09-11 16:20:05', '2019-09-11 16:20:05', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 0),
(5, 5, NULL, NULL, 'maxim-4', '2019-09-11 16:20:05', '2019-09-11 16:20:05', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 0),
(7, 7, NULL, NULL, 'kubek-eko', '2021-06-08 11:35:03', '2021-06-08 11:35:04', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(8, 8, NULL, NULL, 'tescior', '2021-07-13 15:08:27', '2021-07-13 15:08:28', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(13, 13, NULL, NULL, 'ghhgfh', '2021-07-19 13:00:35', '2021-07-19 13:00:37', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(14, 14, NULL, NULL, 'ohivydnfvhgsd', '2021-07-19 14:31:18', '2021-07-19 14:31:20', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(15, 15, NULL, NULL, 'produkt1', '2021-07-22 10:22:52', '2021-07-22 10:22:53', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(16, 16, NULL, NULL, 'produkt2', '2021-07-22 10:23:52', '2021-07-22 10:23:53', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(17, 17, NULL, NULL, 'produkt3', '2021-07-22 10:24:35', '2021-07-22 10:24:36', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(31, 31, NULL, NULL, 'dfgfdg', '2021-08-10 13:59:04', '2021-08-10 13:59:05', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(36, 36, NULL, NULL, 'noowy', '2021-08-10 14:33:38', '2021-08-10 14:33:39', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(43, 43, NULL, NULL, 'asdfdas', '2021-08-11 13:41:53', '2021-08-11 13:41:54', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_variant_option_value`
--

CREATE TABLE `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_product_variant_translation`
--

CREATE TABLE `sylius_product_variant_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_product_variant_translation`
--

INSERT INTO `sylius_product_variant_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Action', 'pl_PL'),
(3, 3, 'Kolejny action', 'pl_PL'),
(4, 4, 'Action', 'pl_PL'),
(5, 5, 'Kolejny action', 'pl_PL'),
(7, 7, NULL, 'pl_PL'),
(8, 8, 'teścior', 'pl_PL'),
(13, 13, NULL, 'pl_PL'),
(14, 14, NULL, 'pl_PL'),
(15, 15, NULL, 'pl_PL'),
(16, 16, NULL, 'pl_PL'),
(17, 17, NULL, 'pl_PL'),
(31, 31, NULL, 'pl_PL'),
(36, 36, NULL, 'pl_PL'),
(43, 43, NULL, 'pl_PL');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_promotion`
--

CREATE TABLE `sylius_promotion` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_promotion_action`
--

CREATE TABLE `sylius_promotion_action` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_promotion_channels`
--

CREATE TABLE `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_promotion_coupon`
--

CREATE TABLE `sylius_promotion_coupon` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_promotion_order`
--

CREATE TABLE `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_promotion_rule`
--

CREATE TABLE `sylius_promotion_rule` (
  `id` int(11) NOT NULL,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_province`
--

CREATE TABLE `sylius_province` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_rbac_administration_role`
--

CREATE TABLE `sylius_rbac_administration_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_rbac_administration_role`
--

INSERT INTO `sylius_rbac_administration_role` (`id`, `name`, `permissions`) VALUES
(7, 'Agency', '{\"configuration\": \"{\\\"type\\\":\\\"configuration\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"sales_management\": \"{\\\"type\\\":\\\"sales_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\"}'),
(8, 'Configurator', '{\"rbac\": \"{\\\"type\\\":\\\"rbac\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"partners\": \"{\\\"type\\\":\\\"partners\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"bitbag_cms\": \"{\\\"type\\\":\\\"bitbag_cms\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"configuration\": \"{\\\"type\\\":\\\"configuration\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"taxon_filters\": \"{\\\"type\\\":\\\"taxon_filters\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"sales_management\": \"{\\\"type\\\":\\\"sales_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"catalog_management\": \"{\\\"type\\\":\\\"catalog_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"customers_management\": \"{\\\"type\\\":\\\"customers_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"marketing_management\": \"{\\\"type\\\":\\\"marketing_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\"}'),
(9, 'Owner', '{\"partners\": \"{\\\"type\\\":\\\"partners\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"bitbag_cms\": \"{\\\"type\\\":\\\"bitbag_cms\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"configuration\": \"{\\\"type\\\":\\\"configuration\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"taxon_filters\": \"{\\\"type\\\":\\\"taxon_filters\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"sales_management\": \"{\\\"type\\\":\\\"sales_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"catalog_management\": \"{\\\"type\\\":\\\"catalog_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"customers_management\": \"{\\\"type\\\":\\\"customers_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"marketing_management\": \"{\\\"type\\\":\\\"marketing_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\"}'),
(10, 'Manufacturer', '{\"sales_management\": \"{\\\"type\\\":\\\"sales_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\", \"catalog_management\": \"{\\\"type\\\":\\\"catalog_management\\\",\\\"operation_types\\\":[\\\"read\\\",\\\"write\\\"]}\"}');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_shipment`
--

CREATE TABLE `sylius_shipment` (
  `id` int(11) NOT NULL,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_shipment`
--

INSERT INTO `sylius_shipment` (`id`, `method_id`, `order_id`, `state`, `tracking`, `created_at`, `updated_at`) VALUES
(5, 1, 15, 'cart', NULL, '2021-07-16 10:20:58', '2021-07-16 10:20:58'),
(13, 1, 17, 'cart', NULL, '2021-07-26 11:38:41', '2021-07-26 11:38:41'),
(14, 1, 18, 'cart', NULL, '2021-07-26 11:59:48', '2021-07-26 11:59:48'),
(16, 1, 20, 'cart', NULL, '2021-07-28 15:04:21', '2021-07-28 15:04:21'),
(17, 1, 21, 'cart', NULL, '2021-07-29 08:47:32', '2021-07-29 08:47:32'),
(18, 1, 22, 'cart', NULL, '2021-08-02 10:58:55', '2021-08-02 10:58:55'),
(131, 1, 141, 'cart', NULL, '2021-08-12 15:26:02', '2021-08-12 15:26:02'),
(132, 1, 142, 'cart', NULL, '2021-08-12 15:45:55', '2021-08-12 15:45:55'),
(133, 1, 143, 'cart', NULL, '2021-08-12 15:48:39', '2021-08-12 15:48:40'),
(134, 1, 144, 'cart', NULL, '2021-08-12 15:49:52', '2021-08-12 15:49:52'),
(135, 1, 145, 'cart', NULL, '2021-08-12 15:50:56', '2021-08-12 15:50:56'),
(136, 1, 146, 'cart', NULL, '2021-08-12 15:51:39', '2021-08-12 15:51:39'),
(137, 1, 147, 'cart', NULL, '2021-08-12 15:52:11', '2021-08-12 15:52:11'),
(138, 1, 148, 'cart', NULL, '2021-08-12 15:55:01', '2021-08-12 15:55:02'),
(139, 1, 149, 'cart', NULL, '2021-08-12 15:57:29', '2021-08-12 15:57:29'),
(140, 1, 150, 'cart', NULL, '2021-08-12 16:02:02', '2021-08-12 16:02:02'),
(141, 1, 151, 'cart', NULL, '2021-08-12 16:03:45', '2021-08-12 16:03:45'),
(142, 1, 152, 'cart', NULL, '2021-08-13 08:48:42', '2021-08-13 08:48:42'),
(143, 1, 153, 'cart', NULL, '2021-08-13 08:51:51', '2021-08-13 08:51:52'),
(144, 1, 154, 'cart', NULL, '2021-08-13 08:53:33', '2021-08-13 08:53:33'),
(145, 1, 156, 'cart', NULL, '2021-08-13 09:36:24', '2021-08-13 09:36:24'),
(146, 1, 157, 'cart', NULL, '2021-08-13 09:36:58', '2021-08-13 09:36:58'),
(147, 1, 158, 'cart', NULL, '2021-08-13 09:44:40', '2021-08-13 09:44:40'),
(149, 1, 159, 'cart', NULL, '2021-08-13 10:07:11', '2021-08-13 10:07:11'),
(160, 1, 160, 'cart', NULL, '2021-08-13 11:04:41', '2021-08-13 11:04:41'),
(161, 1, 161, 'cart', NULL, '2021-08-17 09:24:50', '2021-08-17 09:24:50'),
(162, 1, 162, 'cart', NULL, '2021-08-17 09:28:49', '2021-08-17 09:28:50'),
(163, 1, 164, 'cart', NULL, '2021-08-17 12:59:16', '2021-08-17 12:59:16'),
(164, 1, 166, 'cart', NULL, '2021-08-17 13:45:55', '2021-08-17 13:45:55'),
(165, 1, 175, 'cart', NULL, '2021-08-18 10:03:57', '2021-08-18 10:03:57'),
(166, 1, 178, 'cart', NULL, '2021-08-18 14:08:56', '2021-08-18 14:08:56'),
(167, 1, 183, 'cart', NULL, '2021-08-19 12:50:54', '2021-08-19 12:50:54'),
(168, 1, 188, 'cart', NULL, '2021-08-19 15:39:44', '2021-08-19 15:39:44'),
(169, 1, 189, 'cart', NULL, '2021-08-20 08:47:00', '2021-08-20 08:47:00'),
(170, 1, 192, 'cart', NULL, '2021-09-04 13:19:43', '2021-09-04 13:19:43'),
(171, 1, 194, 'cart', NULL, '2021-09-05 17:30:11', '2021-09-05 17:30:11'),
(172, 1, 196, 'cart', NULL, '2021-09-10 11:10:48', '2021-09-10 11:10:49'),
(173, 1, 201, 'cart', NULL, '2021-09-24 20:33:19', '2021-09-24 20:33:19'),
(177, 1, 230, 'cart', NULL, '2021-09-28 08:40:01', '2021-09-28 08:40:02'),
(178, 1, 322, 'cart', NULL, '2021-10-06 22:21:44', '2021-10-06 22:21:45'),
(179, 1, 337, 'cart', NULL, '2021-10-07 11:12:50', '2021-10-07 11:12:50'),
(180, 1, 339, 'cart', NULL, '2021-10-07 11:16:05', '2021-10-07 11:16:05'),
(181, 1, 340, 'cart', NULL, '2021-10-07 11:19:44', '2021-10-07 11:19:44'),
(182, 1, 342, 'cart', NULL, '2021-10-07 11:42:53', '2021-10-07 11:42:53'),
(183, 1, 345, 'cart', NULL, '2021-10-07 11:55:16', '2021-10-07 11:55:16'),
(184, 1, 346, 'cart', NULL, '2021-10-07 11:56:28', '2021-10-07 11:56:28'),
(185, 1, 347, 'cart', NULL, '2021-10-07 11:57:51', '2021-10-07 11:57:51'),
(186, 1, 348, 'cart', NULL, '2021-10-07 12:04:21', '2021-10-07 12:04:21'),
(187, 1, 349, 'cart', NULL, '2021-10-07 12:05:17', '2021-10-07 12:05:17'),
(188, 1, 351, 'cart', NULL, '2021-10-07 12:16:48', '2021-10-07 12:16:48'),
(189, 1, 352, 'cart', NULL, '2021-10-07 12:18:36', '2021-10-07 12:18:36'),
(190, 1, 354, 'cart', NULL, '2021-10-07 12:47:06', '2021-10-07 12:47:07'),
(191, 1, 358, 'cart', NULL, '2021-10-07 12:58:45', '2021-10-07 12:58:45'),
(192, 1, 359, 'cart', NULL, '2021-10-07 12:59:27', '2021-10-07 12:59:27'),
(193, 1, 360, 'cart', NULL, '2021-10-07 13:01:48', '2021-10-07 13:01:48'),
(194, 1, 361, 'cart', NULL, '2021-10-07 13:05:02', '2021-10-07 13:05:02'),
(195, 1, 362, 'cart', NULL, '2021-10-07 13:07:01', '2021-10-07 13:07:01'),
(196, 1, 363, 'cart', NULL, '2021-10-07 13:09:57', '2021-10-07 13:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_shipping_category`
--

CREATE TABLE `sylius_shipping_category` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_shipping_method`
--

CREATE TABLE `sylius_shipping_method` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `archived_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_shipping_method`
--

INSERT INTO `sylius_shipping_method` (`id`, `category_id`, `zone_id`, `tax_category_id`, `code`, `configuration`, `category_requirement`, `calculator`, `is_enabled`, `position`, `archived_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 1, 'ups', 'a:1:{s:6:\"PL_WEB\";a:1:{s:6:\"amount\";i:0;}}', 1, 'flat_rate', 1, 0, NULL, '2019-01-02 17:35:59', '2019-01-04 15:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_shipping_method_channels`
--

CREATE TABLE `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_shipping_method_channels`
--

INSERT INTO `sylius_shipping_method_channels` (`shipping_method_id`, `channel_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_shipping_method_translation`
--

CREATE TABLE `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_shipping_method_translation`
--

INSERT INTO `sylius_shipping_method_translation` (`id`, `translatable_id`, `name`, `description`, `locale`) VALUES
(1, 1, 'UPS', 'Vel et deserunt maxime nam.', 'pl_PL');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_shop_user`
--

CREATE TABLE `sylius_shop_user` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_shop_user`
--

INSERT INTO `sylius_shop_user` (`id`, `customer_id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`) VALUES
(39, 58, 'admin@techmedia.pl', 'admin@techmedia.pl', 1, 'dcvikfsihkgssck0wkwc8swc8occw8s', 'Ip88NwqdkTDdabACgcaiKwOdJu4TneS0RRFmdFGySVoeFKM6u7s2Hjh6F3fg3MWk0tO5wImIzwmcnBLtedERFg==', '2019-05-06 12:41:11', NULL, NULL, NULL, '2019-05-06 00:00:00', 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-05-06 12:33:04', '2019-05-06 12:41:11'),
(40, 90, 'szymon.mlnk@gmail.com', 'szymon.mlnk@gmail.com', 1, '3wk3lrr3za0ws0gkw4c84gw484g4ccs', '3T45NV9W4iS4aPLy8nlaz/NwaJNghawsXeUZpyp0eqsQ4zhDDTYuSbZ8EgXWTaiwSGOtAnhetntrD/3Or3+Rcg==', '2021-10-01 12:16:22', NULL, NULL, 'e_0YhvgVbGYgIplI', NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2021-09-21 17:23:17', '2021-10-01 12:16:22'),
(41, 62, 'example@example.com', 'example@example.com', 0, 'g0xoafmvv2808840kco840oowk0sw08', 'lLkg8cDKTx38MCcIWV4TxqTXGR2syboEXxyss4ENAX2vQIp3EKbwYNAdRxrgN1jqtHJp0tSxRhaUGfgIGyzLHg==', NULL, NULL, NULL, 'x3J92m-lGFdPlHAK', NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2021-10-01 12:14:03', '2021-10-01 12:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_taxon`
--

CREATE TABLE `sylius_taxon` (
  `id` int(11) NOT NULL,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_taxon`
--

INSERT INTO `sylius_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'category', 1, 58, 0, 0, '2019-01-02 17:35:59', '2019-01-02 17:35:59'),
(17, 1, 1, 'kubki-ceramika', 4, 5, 1, 5, '2019-07-10 15:48:02', '2021-08-11 10:42:48'),
(18, 1, 1, 'filizanki', 32, 33, 1, 3, '2019-08-29 10:37:14', '2021-08-11 11:25:01'),
(19, 1, 1, 'kubki-szklane', 34, 35, 1, 4, '2019-08-29 10:40:34', '2021-08-11 10:41:19'),
(20, 1, 1, 'kubki-papierowe', 36, 37, 1, 12, '2019-08-29 10:41:05', '2021-08-11 10:47:11'),
(21, 1, 1, 'kubki-termiczne', 38, 39, 1, 0, '2019-08-29 10:41:46', '2021-08-18 14:31:02'),
(22, 1, 1, 'kubki-magiczne', 40, 43, 1, 1, '2019-08-29 10:42:15', '2021-08-11 11:25:34'),
(23, 1, 1, 'zestawy', 44, 45, 1, 11, '2019-08-29 10:42:44', '2021-08-19 11:45:10'),
(24, 1, 1, 'bidony-termosy-butelki', 46, 47, 1, 9, '2019-08-29 10:43:31', '2021-08-19 10:42:22'),
(25, 1, 1, 'kufle', 48, 49, 1, 8, '2019-08-29 10:54:07', '2021-08-11 10:44:25'),
(26, 1, 1, 'szklanki', 50, 51, 1, 6, '2019-08-29 11:02:09', '2021-08-11 10:42:50'),
(27, 1, 1, 'akcesoria', 52, 53, 1, 2, '2019-08-29 11:02:38', '2021-08-18 14:34:01'),
(28, 1, 1, 'pudelka', 54, 55, 1, 7, '2019-08-29 11:03:13', '2021-08-11 10:43:41'),
(29, 1, 1, 'eko-kubki', 2, 3, 1, 10, '2021-06-08 11:33:27', '2021-08-11 10:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_taxon_image`
--

CREATE TABLE `sylius_taxon_image` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_taxon_image`
--

INSERT INTO `sylius_taxon_image` (`id`, `owner_id`, `type`, `path`) VALUES
(1, 17, 'icon', 'b9/9e/6e52dafcf9cc81682f2c3b86326d.svg'),
(2, 18, 'icon', '5a/83/55a704d118dfd37a6be4d54bd647.svg'),
(3, 19, 'icon', 'f7/c5/36c066c48a585e7f8f3e6dcffd41.svg'),
(4, 20, 'icon', 'c2/e4/27ca8c591b99ae585fb7c1321703.svg'),
(5, 21, 'icon', '17/f6/cd8f136a6253d8a0b72c1fd004ba.svg'),
(6, 22, 'icon', '16/05/0b2674aedc749ce12b814cec66c5.svg'),
(7, 23, 'icon', 'c0/af/d3a1bd8c06c803a88745a03774e4.svg'),
(8, 24, 'icon', 'ff/42/52b6163b0cdd83b4b9cb9fa2bf98.svg'),
(9, 25, 'icon', 'd8/85/81666ff49c52e7e4869c1f9d041d.svg'),
(10, 26, 'icon', 'b2/75/001ba265c2b93ea5bc14882f8cbb.svg'),
(11, 27, 'icon', '62/8b/101f5c94c69fd6e6157385edbb37.svg'),
(12, 28, 'icon', 'e8/93/da5d98f63ce09eec79dff15ab8bd.svg'),
(13, 29, 'icon', '24/37/233c512d82dd629c0863d00e702a.svg');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_taxon_translation`
--

CREATE TABLE `sylius_taxon_translation` (
  `id` int(11) NOT NULL,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(800) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_taxon_translation`
--

INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Kategorie', 'category', '', 'pl_PL', NULL, NULL),
(2, 2, 'Ceramika reklamowa', 'ceramika-reklamowa', '\n\n', 'pl_PL', NULL, NULL),
(3, 3, 'Słodycze reklamowe', 'slodycze-reklamowe', '', 'pl_PL', NULL, NULL),
(4, 4, 'Notesy reklamowe', 'notesy-reklamowe', '', 'pl_PL', NULL, NULL),
(5, 5, 'Odzież reklamowa', 'odziez-reklamowa', '', 'pl_PL', NULL, NULL),
(8, 8, 'Akcesoria samochodowe', 'akcesoria-samochodowe', '', 'pl_PL', NULL, NULL),
(9, 9, 'Czapki reklamowe', 'czapki-reklamowe', '', 'pl_PL', NULL, NULL),
(10, 10, 'Odblaski reklamowe', 'odblaski-reklamowe', '', 'pl_PL', NULL, NULL),
(11, 11, 'Elektronika reklamowa', 'elektronika-reklamowa', '', 'pl_PL', NULL, NULL),
(12, 12, 'Torby reklamowe', 'torby-reklamowe', '', 'pl_PL', NULL, NULL),
(13, 13, 'Długopisy reklamowe', 'dlugopisy-reklamowe', '', 'pl_PL', NULL, NULL),
(14, 14, 'Ekskluzywne pióra i długopisy reklamowe', 'ekskluzywne-piora-i-dlugopisy-reklamowe', '', 'pl_PL', NULL, NULL),
(15, 15, 'Kalendarze reklamowe', 'kalendarze-reklamowe', '', 'pl_PL', NULL, NULL),
(17, 17, 'Kubki ceramika', 'kubki-ceramika', NULL, 'pl_PL', NULL, NULL),
(18, 18, 'Filiżanki', 'filizanki', NULL, 'pl_PL', NULL, NULL),
(19, 19, 'Kubki szklane', 'kubki-szklane', NULL, 'pl_PL', NULL, NULL),
(20, 20, 'Kubki papierowe', 'category/kubki-papierowe', NULL, 'pl_PL', NULL, NULL),
(21, 21, 'Kubki termiczne', 'kubki-termiczne', NULL, 'pl_PL', NULL, NULL),
(22, 22, 'Kubki magiczne', 'kubki-magiczne', NULL, 'pl_PL', NULL, NULL),
(23, 23, 'Zestawy', 'zestawy', NULL, 'pl_PL', NULL, NULL),
(24, 24, 'Bidony, termosy, butelki', 'bidony-termosy-butelki', NULL, 'pl_PL', NULL, NULL),
(25, 25, 'Kufle', 'kufle', NULL, 'pl_PL', NULL, NULL),
(26, 26, 'Szklanki', 'szklanki', NULL, 'pl_PL', NULL, NULL),
(27, 27, 'Akcesoria', 'akcesoria', NULL, 'pl_PL', NULL, NULL),
(28, 28, 'Pudełka', 'pudelka', NULL, 'pl_PL', NULL, NULL),
(29, 29, 'Eko kubki', 'eko-kubki', NULL, 'pl_PL', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_tax_category`
--

CREATE TABLE `sylius_tax_category` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_tax_category`
--

INSERT INTO `sylius_tax_category` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'tax', 'tax', NULL, '2021-07-14 13:50:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sylius_tax_rate`
--

CREATE TABLE `sylius_tax_rate` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_user_oauth`
--

CREATE TABLE `sylius_user_oauth` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sylius_zone`
--

CREATE TABLE `sylius_zone` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_zone`
--

INSERT INTO `sylius_zone` (`id`, `code`, `name`, `type`, `scope`) VALUES
(1, 'PL', 'Poland', 'country', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `sylius_zone_member`
--

CREATE TABLE `sylius_zone_member` (
  `id` int(11) NOT NULL,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sylius_zone_member`
--

INSERT INTO `sylius_zone_member` (`id`, `belongs_to`, `code`) VALUES
(1, 1, 'PL');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`, `description`, `image`, `slug`, `position`) VALUES
(7, 'Urodzinowe', 'Fajne kubasy na imprezy urodzinowe i nie tylkoo', 'media/tags/image/ge/tl/68n8pys48cnhx2xpx3h85i57ur5h.png', 'urodzinowe', 1),
(8, 'Na audycje kulturowe', 'No tak jak na zdjęciu jest pokazane to właśnie do tego', 'media/tags/image/zx/t0/harurz9fv9pwknn7lhdtop8plco1.jpg', 'na-audycje-kulturowe', 3),
(9, 'Do świeczuchy', 'Stawiasz obok świeczki i elegancko pachnie i jeszcze napić się można wrzątku w temperaturze niesprzyjającej przełykowi', 'media/tags/image/yx/v5/vgqwv0zn3s8067ip4w7kmyaebupm.jpg', 'do-swieczuchy', 4),
(14, 'Kubasy na 1̶2̶0̶0̶x̶9̶0̶0̶p̶x̶ 600x450px', 'Idealne kubasy na sfotografowanie ich w rozdzielczości 1̶2̶0̶0̶x̶9̶0̶0̶p̶x̶ 600x450px, tak żeby można było je umieścić na tej stronie bo takie są minimalne wymagania co do rozmiaru.', 'media/tags/image/o0/4z/tqyd5cgfjw93gh1e2aodvjn63awu.jpg', 'kubasy-na-1-2-0-0-x-9-0-0-p-x-600x450px', 0),
(21, 'Nowy tag (działający)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\r\n            dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex\r\n            ea commodo consequa', 'media/tags/image/5z/up/3clp8640n7pfnj64a4k0dejzwwj4.jpg', 'nowy-tag-dzialajacy-', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_wp_trash_meta_status', '1'),
(2, 1, '_wp_trash_meta_time', '1630927399');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-05 20:55:39', '2021-09-05 18:55:39', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran Komentarze w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com\">Gravatara</a>.', 0, 'trash', '', 'comment', 0, 0),
(2, 1, 'admin', 'szymon.mlnk@gmail.com', '', '127.0.0.1', '2021-09-06 13:23:32', '2021-09-06 11:23:32', 'kj', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101 Firefox/91.0', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/kubki-reklamowe24.lan/public/wordpress', 'yes'),
(2, 'home', 'http://localhost/kubki-reklamowe24.lan/public/wordpress', 'yes'),
(3, 'blogname', 'kubki reklamowe', 'yes'),
(4, 'blogdescription', 'Kolejna witryna oparta na WordPressie', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'szymon.mlnk@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:49:\"parent_categories_hook/parent_categories_hook.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '49752', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Warsaw', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pl_PL', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1633416939;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1633430222;a:3:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1633435503;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1633460149;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631127066;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'widget_block', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(169, 'admin_email_lifespan', '1646481729', 'yes'),
(170, 'disallowed_keys', '', 'no'),
(171, 'comment_previously_approved', '1', 'yes'),
(172, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(173, 'auto_update_core_dev', 'enabled', 'yes'),
(174, 'auto_update_core_minor', 'enabled', 'yes'),
(175, 'auto_update_core_major', 'unset', 'yes'),
(176, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(177, 'finished_updating_comment_type', '1', 'yes'),
(178, 'db_upgraded', '', 'yes'),
(182, 'recovery_keys', 'a:0:{}', 'yes'),
(183, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:36:\"Weryfikacja SSLa nie powiodła się.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Not Found\";}}', 'yes'),
(184, 'can_compress_scripts', '1', 'no'),
(192, '_transient_twentyseventeen_categories', '1', 'yes'),
(229, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(264, 'current_theme', 'Twenty Twenty', 'yes'),
(265, 'theme_mods_twentytwentyone', 'a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631127095;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(266, 'theme_switched', '', 'yes'),
(267, 'theme_mods_twentytwenty', 'a:2:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(518, 'category_children', 'a:2:{i:14;a:1:{i:0;i:1;}i:15;a:1:{i:0;i:2;}}', 'yes'),
(678, '_site_transient_timeout_php_check_8c0181da100b1c7d1f637c18117d0149', '1633455051', 'no'),
(679, '_site_transient_php_check_8c0181da100b1c7d1f637c18117d0149', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(682, '_site_transient_timeout_theme_roots', '1633376628', 'no'),
(683, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(684, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.8.1.zip\";s:6:\"locale\";s:5:\"pl_PL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pl_PL/wordpress-5.8.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.1\";s:7:\"version\";s:5:\"5.8.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1633374829;s:15:\"version_checked\";s:5:\"5.8.1\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.8.1\";s:7:\"updated\";s:19:\"2021-10-04 16:59:59\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.1/pl_PL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(685, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633374829;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"2.1\";s:7:\"updated\";s:19:\"2021-09-24 07:58:28\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/2.1/pl_PL.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"1.8\";s:7:\"updated\";s:19:\"2021-09-23 13:01:08\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/1.8/pl_PL.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2021-09-15 11:23:28\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/pl_PL.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(686, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1633374830;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}s:7:\"checked\";a:1:{s:49:\"parent_categories_hook/parent_categories_hook.php\";s:0:\"\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1631993140:1'),
(6, 7, '_edit_lock', '1631993037:1'),
(7, 8, '_wp_attached_file', '2021/09/yerbownik-2.jpg'),
(8, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2477;s:6:\"height\";i:1693;s:4:\"file\";s:23:\"2021/09/yerbownik-2.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"yerbownik-2-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"yerbownik-2-1024x700.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:700;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"yerbownik-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"yerbownik-2-768x525.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"yerbownik-2-1536x1050.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1050;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:25:\"yerbownik-2-2048x1400.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1400;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 7, '_edit_last', '1'),
(19, 11, '_wp_attached_file', '2021/09/yerbownik123.jpeg'),
(20, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:25:\"2021/09/yerbownik123.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"yerbownik123-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"yerbownik123-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"yerbownik123-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"yerbownik123-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:26:\"yerbownik123-1536x864.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:26:\"yerbownik123-1200x675.jpeg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(21, 12, '_wp_attached_file', '2021/09/yerbownik123.jpg'),
(22, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2021/09/yerbownik123.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"yerbownik123-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"yerbownik123-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"yerbownik123-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"yerbownik123-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"yerbownik123-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:25:\"yerbownik123-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(25, 5, '_thumbnail_id', '12'),
(26, 1, '_edit_lock', '1631993145:1'),
(44, 21, '_edit_lock', '1631993134:1'),
(45, 22, '_wp_attached_file', '2021/09/avatar.png'),
(46, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:180;s:4:\"file\";s:18:\"2021/09/avatar.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"avatar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 21, '_thumbnail_id', '22'),
(50, 24, '_edit_lock', '1631993127:1'),
(56, 27, '_edit_lock', '1631993123:1'),
(62, 30, '_edit_lock', '1631993119:1'),
(68, 33, '_edit_lock', '1631993112:1'),
(74, 36, '_edit_lock', '1631993107:1'),
(75, 37, '_wp_attached_file', '2021/09/elektryk_zawodowy.png'),
(76, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:731;s:6:\"height\";i:659;s:4:\"file\";s:29:\"2021/09/elektryk_zawodowy.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"elektryk_zawodowy-300x270.png\";s:5:\"width\";i:300;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"elektryk_zawodowy-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 36, '_thumbnail_id', '37'),
(80, 39, '_edit_lock', '1631993102:1'),
(86, 42, '_edit_lock', '1631993097:1'),
(92, 45, '_edit_lock', '1631993089:1'),
(93, 46, '_wp_attached_file', '2021/09/bert.png'),
(94, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:286;s:6:\"height\";i:256;s:4:\"file\";s:16:\"2021/09/bert.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bert-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 45, '_thumbnail_id', '46'),
(100, 49, '_wp_attached_file', '2021/09/124030315_964882594000401_1523260873557814359_n.png'),
(101, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:526;s:6:\"height\";i:520;s:4:\"file\";s:59:\"2021/09/124030315_964882594000401_1523260873557814359_n.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"124030315_964882594000401_1523260873557814359_n-300x297.png\";s:5:\"width\";i:300;s:6:\"height\";i:297;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"124030315_964882594000401_1523260873557814359_n-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 52, '_edit_lock', '1631993083:1'),
(115, 54, '_wp_attached_file', '2021/09/Tibia_icon.png'),
(116, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:183;s:6:\"height\";i:177;s:4:\"file\";s:22:\"2021/09/Tibia_icon.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Tibia_icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 42, '_thumbnail_id', '54'),
(120, 55, '_wp_attached_file', '2021/09/17470164.jpg'),
(121, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:20:\"2021/09/17470164.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"17470164-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"17470164-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"17470164-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"17470164-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"17470164-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:21:\"17470164-1200x675.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:675;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 39, '_thumbnail_id', '55'),
(129, 56, '_wp_attached_file', '2021/09/monke.jpg'),
(130, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:862;s:4:\"file\";s:17:\"2021/09/monke.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"monke-300x253.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:253;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"monke-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"monke-768x647.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:647;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 33, '_thumbnail_id', '56'),
(136, 57, '_wp_attached_file', '2021/09/monkeitalian.jpg'),
(137, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:342;s:6:\"height\";i:274;s:4:\"file\";s:24:\"2021/09/monkeitalian.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"monkeitalian-300x240.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"monkeitalian-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 30, '_thumbnail_id', '57'),
(143, 59, '_wp_attached_file', '2021/09/thumb-1920-920077.jpg'),
(144, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:960;s:4:\"file\";s:29:\"2021/09/thumb-1920-920077.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"thumb-1920-920077-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"thumb-1920-920077-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"thumb-1920-920077-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"thumb-1920-920077-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"thumb-1920-920077-1536x768.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:30:\"thumb-1920-920077-1200x600.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 27, '_thumbnail_id', '59'),
(154, 61, '_wp_attached_file', '2021/09/214582483_880863385864857_1440798179915814201_n.png'),
(155, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:828;s:6:\"height\";i:1022;s:4:\"file\";s:59:\"2021/09/214582483_880863385864857_1440798179915814201_n.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"214582483_880863385864857_1440798179915814201_n-243x300.png\";s:5:\"width\";i:243;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"214582483_880863385864857_1440798179915814201_n-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"214582483_880863385864857_1440798179915814201_n-768x948.png\";s:5:\"width\";i:768;s:6:\"height\";i:948;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 64, '_wp_attached_file', '2021/09/saynotopizza.jpg'),
(161, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1067;s:4:\"file\";s:24:\"2021/09/saynotopizza.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"saynotopizza-300x296.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"saynotopizza-1024x1012.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1012;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"saynotopizza-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"saynotopizza-768x759.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:759;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 1, '_thumbnail_id', '64'),
(167, 7, '_thumbnail_id', '64'),
(170, 52, '_edit_last', '1'),
(171, 52, '_wp_page_template', 'default'),
(174, 45, '_edit_last', '1'),
(175, 45, '_wp_page_template', 'default'),
(178, 42, '_edit_last', '1'),
(179, 42, '_wp_page_template', 'default'),
(182, 39, '_edit_last', '1'),
(183, 39, '_wp_page_template', 'default'),
(186, 36, '_edit_last', '1'),
(187, 36, '_wp_page_template', 'default'),
(190, 33, '_edit_last', '1'),
(191, 33, '_wp_page_template', 'default'),
(194, 30, '_edit_last', '1'),
(195, 30, '_wp_page_template', 'default'),
(198, 27, '_edit_last', '1'),
(199, 27, '_wp_page_template', 'default'),
(202, 24, '_edit_last', '1'),
(203, 24, '_wp_page_template', 'default'),
(206, 21, '_edit_last', '1'),
(207, 21, '_wp_page_template', 'default'),
(210, 5, '_edit_last', '1'),
(211, 5, '_wp_page_template', 'default'),
(214, 1, '_edit_last', '1'),
(215, 1, '_wp_page_template', 'default'),
(218, 66, '_edit_lock', '1632056600:1'),
(221, 66, '_wp_trash_meta_status', 'publish'),
(222, 66, '_wp_trash_meta_time', '1632056751'),
(223, 66, '_wp_desired_post_slug', 'gfd-gfd-gfd-sgfd'),
(224, 68, '_edit_lock', '1632056633:1'),
(227, 68, '_wp_trash_meta_status', 'publish'),
(228, 68, '_wp_trash_meta_time', '1632056781'),
(229, 68, '_wp_desired_post_slug', 'asdasfdasfd'),
(230, 70, '_edit_lock', '1632056681:1'),
(233, 70, '_wp_trash_meta_status', 'publish'),
(234, 70, '_wp_trash_meta_time', '1632056829'),
(235, 70, '_wp_desired_post_slug', 'asdfasfd'),
(236, 72, '_edit_lock', '1632057281:1'),
(239, 74, '_edit_lock', '1632057503:1'),
(242, 72, '_wp_trash_meta_status', 'publish'),
(243, 72, '_wp_trash_meta_time', '1632057649'),
(244, 72, '_wp_desired_post_slug', 'sdasdaasdads-dsad-as-das'),
(245, 74, '_wp_trash_meta_status', 'publish'),
(246, 74, '_wp_trash_meta_time', '1632057651'),
(247, 74, '_wp_desired_post_slug', 'fs-d'),
(248, 76, '_edit_lock', '1632057641:1'),
(251, 76, '_wp_trash_meta_status', 'publish'),
(252, 76, '_wp_trash_meta_time', '1632057788'),
(253, 76, '_wp_desired_post_slug', 'sdf-sfdsdfsdfsdfsfd'),
(254, 78, '_edit_lock', '1632058790:1'),
(265, 80, '_edit_lock', '1632058693:1'),
(268, 80, '_wp_trash_meta_status', 'publish'),
(269, 80, '_wp_trash_meta_time', '1632058840'),
(270, 80, '_wp_desired_post_slug', 'sdf'),
(271, 78, '_wp_trash_meta_status', 'publish'),
(272, 78, '_wp_trash_meta_time', '1632058842'),
(273, 78, '_wp_desired_post_slug', 'fgdg'),
(274, 82, '_edit_lock', '1632059240:1'),
(277, 84, '_edit_lock', '1632059277:1'),
(280, 84, '_wp_trash_meta_status', 'publish'),
(281, 84, '_wp_trash_meta_time', '1632059425'),
(282, 84, '_wp_desired_post_slug', 'dfas'),
(283, 82, '_wp_trash_meta_status', 'publish'),
(284, 82, '_wp_trash_meta_time', '1632059429'),
(285, 82, '_wp_desired_post_slug', 'czczcx'),
(286, 86, '_edit_lock', '1632134257:1'),
(291, 88, '_edit_lock', '1632134346:1'),
(294, 90, '_edit_lock', '1632134928:1'),
(301, 94, '_edit_lock', '1632135107:1'),
(306, 94, '_wp_trash_meta_status', 'publish'),
(307, 94, '_wp_trash_meta_time', '1632135125'),
(308, 94, '_wp_desired_post_slug', 'asdasdsa'),
(309, 90, '_wp_trash_meta_status', 'publish'),
(310, 90, '_wp_trash_meta_time', '1632135127'),
(311, 90, '_wp_desired_post_slug', 'sddssdsd'),
(312, 88, '_wp_trash_meta_status', 'publish'),
(313, 88, '_wp_trash_meta_time', '1632135130'),
(314, 88, '_wp_desired_post_slug', 'kjvzkzvdkjzvnjkzvcnkj'),
(315, 86, '_wp_trash_meta_status', 'publish'),
(316, 86, '_wp_trash_meta_time', '1632135132'),
(317, 86, '_wp_desired_post_slug', 'sfd'),
(318, 97, '_edit_lock', '1632135026:1'),
(321, 99, '_edit_lock', '1632135053:1'),
(324, 99, '_wp_trash_meta_status', 'publish'),
(325, 99, '_wp_trash_meta_time', '1632135201'),
(326, 99, '_wp_desired_post_slug', 'asdsdsd'),
(327, 97, '_wp_trash_meta_status', 'publish'),
(328, 97, '_wp_trash_meta_time', '1632135204'),
(329, 97, '_wp_desired_post_slug', 'sdafsadd'),
(330, 101, '_edit_lock', '1632135272:1'),
(333, 101, '_wp_trash_meta_status', 'publish'),
(334, 101, '_wp_trash_meta_time', '1632135297'),
(335, 101, '_wp_desired_post_slug', 'asfdas'),
(336, 103, '_edit_lock', '1632137203:1'),
(339, 105, '_edit_lock', '1632135357:1'),
(342, 105, '_wp_trash_meta_status', 'publish'),
(343, 105, '_wp_trash_meta_time', '1632135511'),
(344, 105, '_wp_desired_post_slug', 'ewfsfsf'),
(345, 103, '_wp_trash_meta_status', 'publish'),
(346, 103, '_wp_trash_meta_time', '1632135513'),
(347, 103, '_wp_desired_post_slug', 'vsdfdfdsdfs'),
(348, 107, '_edit_lock', '1632142151:1'),
(391, 107, '_pingme', '1'),
(392, 107, '_encloseme', '1'),
(393, 107, '_wp_trash_meta_status', 'publish'),
(394, 107, '_wp_trash_meta_time', '1632235878'),
(395, 107, '_wp_desired_post_slug', 'sdfds'),
(396, 123, '_edit_lock', '1632237436:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-05 20:55:39', '2021-09-05 18:55:39', '<p>Witamy w WordPressie. To jest twój pierwszy post. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'publish', 'open', 'open', '', 'witaj-swiecie', '', '', '2021-09-18 21:25:45', '2021-09-18 19:25:45', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-05 20:55:39', '2021-09-05 18:55:39', 'To jest przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników umieszcza na swoich witrynach stronę z informacjami o sobie, dzięki którym przedstawiają się odwiedzającym ich witrynę. Taka strona może zawierać na przykład taki tekst:\n\n<blockquote>Cześć! Za dnia jestem gońcem, a nocą próbuję swoich sił w aktorstwie. To jest moja witryna. Mieszkam w Los Angeles, mam wspaniałego psa, który wabi się Jack i lubię pi&#241;a coladę (a także spacery, gdy pada deszcz).</blockquote>\n\n... lub taki:\n\n<blockquote>Firma Wihajstry XYZ została założona w 1971 roku i od początku swojego istnienia zajmuje się produkcją najlepszych wihajstrów. W naszej siedzibie w Gotham City pracuje ponad 2000 osób, które zajmują się robieniem całej masy fantastycznych rzeczy dla mieszkańców Gotham.</blockquote>\n\nJako nowy użytkownik WordPressa powinieneś przejść do <a href=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-admin/\">swojego kokpitu</a>, aby usunąć tę stronę i utworzyć nowe strony z własną treścią. Baw się dobrze!', 'Przykładowa strona', '', 'publish', 'closed', 'open', '', 'przykladowa-strona', '', '', '2021-09-05 20:55:39', '2021-09-05 18:55:39', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-05 20:55:39', '2021-09-05 18:55:39', '<h2>Kim jesteśmy</h2><p>Adres naszej strony internetowej to: http://localhost/kubki-reklamowe24.lan/public/wordpress.</p><h2>Jakie dane osobiste zbieramy i dlaczego je zbieramy</h2><h3>Komentarze</h3><p>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><p>Zanonimizowany ciąg znaków stworzony na podstawie twojego adresu email (tak zwany hash) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jej używasz. Polityka prywatności usługi Gravatar jest dostępna tutaj: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><h3>Media</h3><p>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><h3>Formularze kontaktowe</h3><h3>Ciasteczka</h3><p>Jeśli zostawisz na naszej witrynie komentarz, będziesz mógł wybrać opcję zapisu twojej nazwy, adresu email i adresu strony internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Te ciasteczka wygasają po roku.</p><p>Jeśli masz konto i zalogujesz się na tej witrynie, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. To ciasteczko nie zawiera żadnych danych osobistych i zostanie wyrzucone kiedy zamkniesz przeglądarkę.</p><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><h3>Osadzone treści z innych witryn</h3><p>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><h3>Analityka</h3><h2>Z kim dzielimy się danymi</h2><h2>Jak długo przechowujemy twoje dane</h2><p>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><h2>Jakie masz prawa do swoich danych</h2><p>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><h2>Gdzie przesyłamy dane</h2><p>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><h2>Twoje dane kontaktowe</h2><h2>Informacje dodatkowe</h2><h3>Jak chronimy twoje dane?</h3><h3>Jakie mamy obowiązujące procedury w przypadku naruszenia prywatności danych</h3><h3>Od jakich stron trzecich otrzymujemy dane</h3><h3>Jakie automatyczne podejmowanie decyzji i/lub tworzenie profili przeprowadzamy z użyciem danych użytkownika</h3><h3>Branżowe wymogi regulacyjne dotyczące ujawniania informacji</h3>', 'Polityka prywatności', '', 'draft', 'closed', 'open', '', 'polityka-prywatnosci', '', '', '2021-09-05 20:55:39', '2021-09-05 18:55:39', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2021-09-06 14:05:19', '2021-09-06 12:05:19', '<!-- wp:paragraph -->\n<p>Nowy squo Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo </p>\n<!-- /wp:paragraph -->', 'Nowy post', '', 'publish', 'open', 'open', '', 'nowy-post', '', '', '2021-09-18 21:25:40', '2021-09-18 19:25:40', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2021-09-06 14:05:19', '2021-09-06 12:05:19', '<!-- wp:paragraph -->\n<p>Nowy squo</p>\n<!-- /wp:paragraph -->', 'Nowy post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-06 14:05:19', '2021-09-06 12:05:19', '', 5, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-09-07 18:12:02', '2021-09-07 16:12:02', '<!-- wp:paragraph -->\n<p>God bless żeby to działało</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tutaj jakiś nagłóweczek coś teges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/214582483_880863385864857_1440798179915814201_n.png\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->', 'Kkkkolejny nowy post', 'Co to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleóleCo to jest w ogóleCo to jest w ogóle', 'publish', 'open', 'open', '', 'kkkkolejny-nowy-post', '', '', '2021-09-18 20:31:53', '2021-09-18 18:31:53', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=7', 0, 'post', '', 0),
(8, 1, '2021-09-07 18:11:57', '2021-09-07 16:11:57', '', 'yerbownik-2', '', 'inherit', 'open', 'closed', '', 'yerbownik-2', '', '', '2021-09-07 18:11:57', '2021-09-07 16:11:57', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2021-09-07 18:12:02', '2021-09-07 16:12:02', '<!-- wp:paragraph -->\n<p>God bless żeby to działało</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tutaj jakiś nagłóweczek coś teges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik-2-1024x700.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Kkkkolejny nowy post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-09-07 18:12:02', '2021-09-07 16:12:02', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=9', 0, 'revision', '', 0),
(11, 1, '2021-09-08 21:46:07', '2021-09-08 19:46:07', '', 'yerbownik123', '', 'inherit', 'open', 'closed', '', 'yerbownik123', '', '', '2021-09-08 21:46:07', '2021-09-08 19:46:07', '', 5, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik123.jpeg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2021-09-08 21:46:15', '2021-09-08 19:46:15', '', 'yerbownik123', '', 'inherit', 'open', 'closed', '', 'yerbownik123-2', '', '', '2021-09-08 21:46:15', '2021-09-08 19:46:15', '', 5, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik123.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-09-08 21:47:03', '2021-09-08 19:47:03', 'Witamy w WordPressie. To jest twój pierwszy post. Edytuj go lub usuń, a następnie zacznij pisać!', 'Witaj, świecie!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-08 21:47:03', '2021-09-08 19:47:03', '', 1, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-09-08 21:49:27', '2021-09-08 19:49:27', '<!-- wp:paragraph -->\n<p>Nowy squo Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo  Nowy squo </p>\n<!-- /wp:paragraph -->', 'Nowy post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-08 21:49:27', '2021-09-08 19:49:27', '', 5, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2021-09-08 21:50:13', '2021-09-08 19:50:13', '<!-- wp:paragraph -->\n<p>God bless żeby to działało</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges  Tutaj jakiś nagłóweczek coś teges </h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik-2-1024x700.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Kkkkolejny nowy post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-09-08 21:50:13', '2021-09-08 19:50:13', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-09-08 21:50:34', '2021-09-08 19:50:34', '<!-- wp:paragraph -->\n<p>God bless żeby to działało</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tutaj jakiś nagłóweczek coś teges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik-2-1024x700.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Kkkkolejny nowy post', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-09-08 21:50:34', '2021-09-08 19:50:34', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-09-08 21:54:14', '2021-09-08 19:54:14', '<!-- wp:paragraph -->\n<p>God bless żeby to działało</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tutaj jakiś nagłóweczek coś teges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik-2-1024x700.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Kkkkolejny nowy post', 'Co to jest w ogóle', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-09-08 21:54:14', '2021-09-08 19:54:14', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-09-08 21:54:44', '2021-09-08 19:54:44', '<!-- wp:paragraph -->\n<p>God bless żeby to działało</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tutaj jakiś nagłóweczek coś teges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik-2-1024x700.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Kkkkolejny nowy post', 'Co to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóle', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-09-08 21:54:44', '2021-09-08 19:54:44', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=19', 0, 'revision', '', 0),
(20, 1, '2021-09-08 21:55:01', '2021-09-08 19:55:01', '<!-- wp:paragraph -->\n<p>God bless żeby to działało</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tutaj jakiś nagłóweczek coś teges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/yerbownik-2-1024x700.jpg\" alt=\"\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->', 'Kkkkolejny nowy post', 'Co to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleóleCo to jest w ogóleCo to jest w ogóle', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-09-08 21:55:01', '2021-09-08 19:55:01', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-09-09 17:42:50', '2021-09-09 15:42:50', '<!-- wp:paragraph -->\n<p> sfds fd sdfs dfs dfsdf sdf s dfs df</p>\n<!-- /wp:paragraph -->', 'fdsfd s sdf sfd sfd', '', 'publish', 'open', 'open', '', 'fdsfd-s-sdf-sfd-sfd', '', '', '2021-09-18 21:25:34', '2021-09-18 19:25:34', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=21', 0, 'post', '', 0),
(22, 1, '2021-09-09 17:40:47', '2021-09-09 15:40:47', '', 'avatar', '', 'inherit', 'open', 'closed', '', 'avatar', '', '', '2021-09-09 17:40:47', '2021-09-09 15:40:47', '', 21, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/avatar.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2021-09-09 17:42:50', '2021-09-09 15:42:50', '<!-- wp:paragraph -->\n<p> sfds fd sdfs dfs dfsdf sdf s dfs df</p>\n<!-- /wp:paragraph -->', 'fdsfd s sdf sfd sfd', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-09-09 17:42:50', '2021-09-09 15:42:50', '', 21, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-09-09 17:44:14', '2021-09-09 15:44:14', '<!-- wp:paragraph -->\n<p>asda sda sda sda sda sda sda sdasd </p>\n<!-- /wp:paragraph -->', 'asdasda sd asdsad', '', 'publish', 'open', 'open', '', 'asdasda-sd-asdsad', '', '', '2021-09-18 21:25:27', '2021-09-18 19:25:27', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=24', 0, 'post', '', 0),
(26, 1, '2021-09-09 17:44:14', '2021-09-09 15:44:14', '<!-- wp:paragraph -->\n<p>asda sda sda sda sda sda sda sdasd </p>\n<!-- /wp:paragraph -->', 'asdasda sd asdsad', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-09-09 17:44:14', '2021-09-09 15:44:14', '', 24, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-09-09 17:44:48', '2021-09-09 15:44:48', '<!-- wp:paragraph -->\n<p>ad fs afds daf daf dafsa dfsa fdsa fdsa sfda sfda sfda fdsf ds fsd dsfd sa dfa dfad sasd asd asd asd  asdc xzxcz xzc c xvv cxcv bc vb cb vghghgh gfhdgrestressr  sfddf fds sfd sfd sfdg sfd sfd sfd sfd sfds fd</p>\n<!-- /wp:paragraph -->', 'safd fasdfda sa fds', '', 'publish', 'open', 'open', '', 'safd-fasdfda-sa-fds', '', '', '2021-09-18 21:25:23', '2021-09-18 19:25:23', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=27', 0, 'post', '', 0),
(29, 1, '2021-09-09 17:44:48', '2021-09-09 15:44:48', '<!-- wp:paragraph -->\n<p>ad fs afds daf daf dafsa dfsa fdsa fdsa sfda sfda sfda fdsf ds fsd dsfd sa dfa dfad sasd asd asd asd  asdc xzxcz xzc c xvv cxcv bc vb cb vghghgh gfhdgrestressr  sfddf fds sfd sfd sfdg sfd sfd sfd sfd sfds fd</p>\n<!-- /wp:paragraph -->', 'safd fasdfda sa fds', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-09-09 17:44:48', '2021-09-09 15:44:48', '', 27, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=29', 0, 'revision', '', 0),
(30, 1, '2021-09-09 17:46:55', '2021-09-09 15:46:55', '<!-- wp:paragraph -->\n<p> fsd fdsf sd sfd fds fsd fds fdsfd sd sf fdg gfdfx gxgfh cghjuj ghj cggh jcg fh</p>\n<!-- /wp:paragraph -->', 'dgf sfd dsf dsf sfd', '', 'publish', 'open', 'open', '', 'dgf-sfd-dsf-dsf-sfd', '', '', '2021-09-18 21:25:19', '2021-09-18 19:25:19', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=30', 0, 'post', '', 0),
(32, 1, '2021-09-09 17:46:55', '2021-09-09 15:46:55', '<!-- wp:paragraph -->\n<p> fsd fdsf sd sfd fds fsd fds fdsfd sd sf fdg gfdfx gxgfh cghjuj ghj cggh jcg fh</p>\n<!-- /wp:paragraph -->', 'dgf sfd dsf dsf sfd', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2021-09-09 17:46:55', '2021-09-09 15:46:55', '', 30, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-09-09 17:51:04', '2021-09-09 15:51:04', '<!-- wp:paragraph -->\n<p> asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf </p>\n<!-- /wp:paragraph -->', 'asndf asfd njfdasnasjkdf', '', 'publish', 'open', 'open', '', 'asndf-asfd-njfdasnasjkdf', '', '', '2021-09-18 21:25:12', '2021-09-18 19:25:12', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=33', 0, 'post', '', 0),
(35, 1, '2021-09-09 17:51:04', '2021-09-09 15:51:04', '<!-- wp:paragraph -->\n<p> asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf  asndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdfasndf asfd njfdasnasjkdf </p>\n<!-- /wp:paragraph -->', 'asndf asfd njfdasnasjkdf', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2021-09-09 17:51:04', '2021-09-09 15:51:04', '', 33, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-09-09 17:53:44', '2021-09-09 15:53:44', '<!-- wp:paragraph -->\n<p>d fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjkns</p>\n<!-- /wp:paragraph -->', 'd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjkns', '', 'publish', 'open', 'open', '', 'd-fsjf-sdjnk-nsjfd-sfjkdsjsfdjkns-fdns-fdnjk-sfdjksdfnsdfsfdnjk-sfdjkns', '', '', '2021-09-18 21:25:07', '2021-09-18 19:25:07', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=36', 0, 'post', '', 0),
(37, 1, '2021-09-09 17:53:37', '2021-09-09 15:53:37', '', 'elektryk_zawodowy', '', 'inherit', 'open', 'closed', '', 'elektryk_zawodowy', '', '', '2021-09-09 17:53:37', '2021-09-09 15:53:37', '', 36, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/elektryk_zawodowy.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2021-09-09 17:53:44', '2021-09-09 15:53:44', '<!-- wp:paragraph -->\n<p>d fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjknsd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjkns</p>\n<!-- /wp:paragraph -->', 'd fsjf sdjnk nsjfd sfjkdsjsfdjkns fdns fdnjk sfdjksdfnsdfsfdnjk sfdjkns', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2021-09-09 17:53:44', '2021-09-09 15:53:44', '', 36, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2021-09-09 17:54:29', '2021-09-09 15:54:29', '<!-- wp:paragraph -->\n<p> ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d  ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d  ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d  ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d  ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d </p>\n<!-- /wp:paragraph -->', 'ozfdzn fdznlksa fdn fdsfiod fji d', '', 'publish', 'open', 'open', '', 'ozfdzn-fdznlksa-fdn-fdsfiod-fji-d', '', '', '2021-09-18 21:25:02', '2021-09-18 19:25:02', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=39', 0, 'post', '', 0),
(41, 1, '2021-09-09 17:54:29', '2021-09-09 15:54:29', '<!-- wp:paragraph -->\n<p> ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d  ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d  ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d  ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d  ozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji dozfdzn fdznlksa fdn fdsfiod fji d </p>\n<!-- /wp:paragraph -->', 'ozfdzn fdznlksa fdn fdsfiod fji d', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2021-09-09 17:54:29', '2021-09-09 15:54:29', '', 39, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=41', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(42, 1, '2021-09-09 17:57:14', '2021-09-09 15:57:14', '<!-- wp:paragraph {\"align\":\"right\"} -->\n<p class=\"has-text-align-right\"> asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lsk<em>danf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  </em>asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":49,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/124030315_964882594000401_1523260873557814359_n.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf<strong> lskadf lknasdflk nasdlkfn lskdanf lkasd</strong>n flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf <strong>lkasdn </strong>flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czx<strong>vn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasd</strong>n flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj </p>\n<!-- /wp:paragraph -->', 'lkdsfldsaf nksadfn lkasdnfk lnks', '', 'publish', 'open', 'open', '', 'lkdsfldsaf-nksadfn-lkasdnfk-lnks', '', '', '2021-09-18 21:24:57', '2021-09-18 19:24:57', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=42', 0, 'post', '', 0),
(44, 1, '2021-09-09 17:57:14', '2021-09-09 15:57:14', '<!-- wp:paragraph -->\n<p> asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj </p>\n<!-- /wp:paragraph -->', 'lkdsfldsaf nksadfn lkasdnfk lnks', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2021-09-09 17:57:14', '2021-09-09 15:57:14', '', 42, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=44', 0, 'revision', '', 0),
(45, 1, '2021-09-09 20:30:56', '2021-09-09 18:30:56', '<!-- wp:paragraph -->\n<p> fad adadf sadf afds ds fddf d fs fdsf ds</p>\n<!-- /wp:paragraph -->', 'da sfsf fdas', '', 'publish', 'open', 'open', '', 'da-sfsf-fdas', '', '', '2021-09-18 21:24:49', '2021-09-18 19:24:49', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=45', 0, 'post', '', 0),
(46, 1, '2021-09-09 20:30:52', '2021-09-09 18:30:52', '', 'bert', '', 'inherit', 'open', 'closed', '', 'bert', '', '', '2021-09-09 20:30:52', '2021-09-09 18:30:52', '', 45, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/bert.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2021-09-09 20:30:56', '2021-09-09 18:30:56', '<!-- wp:paragraph -->\n<p> fad adadf sadf afds ds fddf d fs fdsf ds</p>\n<!-- /wp:paragraph -->', 'da sfsf fdas', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2021-09-09 20:30:56', '2021-09-09 18:30:56', '', 45, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=47', 0, 'revision', '', 0),
(49, 1, '2021-09-14 19:17:50', '2021-09-14 17:17:50', '', '124030315_964882594000401_1523260873557814359_n', '', 'inherit', 'open', 'closed', '', '124030315_964882594000401_1523260873557814359_n', '', '', '2021-09-14 19:17:50', '2021-09-14 17:17:50', '', 42, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/124030315_964882594000401_1523260873557814359_n.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2021-09-14 19:17:54', '2021-09-14 17:17:54', '<!-- wp:paragraph -->\n<p> asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":49,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/124030315_964882594000401_1523260873557814359_n.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj </p>\n<!-- /wp:paragraph -->', 'lkdsfldsaf nksadfn lkasdnfk lnks', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2021-09-14 19:17:54', '2021-09-14 17:17:54', '', 42, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=50', 0, 'revision', '', 0),
(51, 1, '2021-09-14 19:19:13', '2021-09-14 17:19:13', '<!-- wp:paragraph {\"align\":\"right\"} -->\n<p class=\"has-text-align-right\"> asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lsk<em>danf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  </em>asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":49,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/124030315_964882594000401_1523260873557814359_n.png\" alt=\"\" class=\"wp-image-49\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf<strong> lskadf lknasdflk nasdlkfn lskdanf lkasd</strong>n flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf <strong>lkasdn </strong>flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czx<strong>vn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasdn flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj  asdlnkf lskadf lknasdflk nasdlkfn lskdanf lkasdn flkasdnf lkasd</strong>n flkasdnflk ansdklf zmxvcn m,czxvn,mc xzvopqwje opwerjfiasdofnj </p>\n<!-- /wp:paragraph -->', 'lkdsfldsaf nksadfn lkasdnfk lnks', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2021-09-14 19:19:13', '2021-09-14 17:19:13', '', 42, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=51', 0, 'revision', '', 0),
(52, 1, '2021-09-14 19:22:12', '2021-09-14 17:22:12', '<!-- wp:paragraph -->\n<p> gfsgf sgf gsf sg fds gfds gfd sgfds gfd</p>\n<!-- /wp:paragraph -->', 'dgfg f gfss fgds', '', 'publish', 'open', 'open', '', 'dgfg-f-gfss-fgds', '', '', '2021-09-18 21:24:43', '2021-09-18 19:24:43', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=52', 0, 'post', '', 0),
(53, 1, '2021-09-14 19:22:12', '2021-09-14 17:22:12', '<!-- wp:paragraph -->\n<p> gfsgf sgf gsf sg fds gfds gfd sgfds gfd</p>\n<!-- /wp:paragraph -->', 'dgfg f gfss fgds', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2021-09-14 19:22:12', '2021-09-14 17:22:12', '', 52, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-09-15 11:15:19', '2021-09-15 09:15:19', '', 'Tibia_icon', '', 'inherit', 'open', 'closed', '', 'tibia_icon', '', '', '2021-09-15 11:15:19', '2021-09-15 09:15:19', '', 42, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/Tibia_icon.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2021-09-15 11:16:32', '2021-09-15 09:16:32', '', '17470164', '', 'inherit', 'open', 'closed', '', '17470164', '', '', '2021-09-15 11:16:32', '2021-09-15 09:16:32', '', 39, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/17470164.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2021-09-15 11:17:52', '2021-09-15 09:17:52', '', 'monke', '', 'inherit', 'open', 'closed', '', 'monke', '', '', '2021-09-15 11:17:52', '2021-09-15 09:17:52', '', 33, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/monke.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2021-09-15 11:18:23', '2021-09-15 09:18:23', '', 'monkeitalian', '', 'inherit', 'open', 'closed', '', 'monkeitalian', '', '', '2021-09-15 11:18:23', '2021-09-15 09:18:23', '', 30, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/monkeitalian.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2021-09-15 11:19:22', '2021-09-15 09:19:22', '', 'thumb-1920-920077', '', 'inherit', 'open', 'closed', '', 'thumb-1920-920077', '', '', '2021-09-15 11:19:22', '2021-09-15 09:19:22', '', 27, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/thumb-1920-920077.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-09-15 11:24:49', '2021-09-15 09:24:49', '', '214582483_880863385864857_1440798179915814201_n', '', 'inherit', 'open', 'closed', '', '214582483_880863385864857_1440798179915814201_n', '', '', '2021-09-15 11:24:49', '2021-09-15 09:24:49', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/214582483_880863385864857_1440798179915814201_n.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2021-09-15 11:25:53', '2021-09-15 09:25:53', '<p>Witamy w WordPressie. To jest twój pierwszy post. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2021-09-15 11:25:53', '2021-09-15 09:25:53', '', 1, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=62', 0, 'revision', '', 0),
(63, 1, '2021-09-15 11:24:55', '2021-09-15 09:24:55', '<!-- wp:paragraph -->\n<p>God bless żeby to działało</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Tutaj jakiś nagłóweczek coś teges</h2>\n<!-- /wp:heading -->\n\n<!-- wp:image {\"id\":61,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/214582483_880863385864857_1440798179915814201_n.png\" alt=\"\" class=\"wp-image-61\"/></figure>\n<!-- /wp:image -->', 'Kkkkolejny nowy post', 'Co to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleCo to jest w ogóleóleCo to jest w ogóleCo to jest w ogóle', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-09-15 11:24:55', '2021-09-15 09:24:55', '', 7, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=63', 0, 'revision', '', 0),
(64, 1, '2021-09-15 11:25:49', '2021-09-15 09:25:49', '', 'saynotopizza', '', 'inherit', 'open', 'closed', '', 'saynotopizza', '', '', '2021-09-15 11:25:49', '2021-09-15 09:25:49', '', 1, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/wp-content/uploads/2021/09/saynotopizza.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2021-09-15 11:26:03', '2021-09-15 09:26:03', '<p>Witamy w WordPressie. To jest twój pierwszy post. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-15 11:26:03', '2021-09-15 09:26:03', '', 1, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-09-19 15:05:40', '2021-09-19 13:05:40', '<!-- wp:paragraph -->\n<p> sgfd sgfd gfs fgd</p>\n<!-- /wp:paragraph -->', 'gfd gfd gfd sgfd', '', 'trash', 'open', 'open', '', 'gfd-gfd-gfd-sgfd__trashed', '', '', '2021-09-19 15:05:51', '2021-09-19 13:05:51', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=66', 0, 'post', '', 0),
(67, 1, '2021-09-19 15:05:40', '2021-09-19 13:05:40', '<!-- wp:paragraph -->\n<p> sgfd sgfd gfs fgd</p>\n<!-- /wp:paragraph -->', 'gfd gfd gfd sgfd', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2021-09-19 15:05:40', '2021-09-19 13:05:40', '', 66, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=67', 0, 'revision', '', 0),
(68, 1, '2021-09-19 15:06:16', '2021-09-19 13:06:16', '<!-- wp:paragraph -->\n<p>asfdsfdasadfdafsasdf a fa sfd</p>\n<!-- /wp:paragraph -->', 'asdasfdasfd', '', 'trash', 'open', 'open', '', 'asdasfdasfd__trashed', '', '', '2021-09-19 15:06:21', '2021-09-19 13:06:21', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=68', 0, 'post', '', 0),
(69, 1, '2021-09-19 15:06:16', '2021-09-19 13:06:16', '<!-- wp:paragraph -->\n<p>asfdsfdasadfdafsasdf a fa sfd</p>\n<!-- /wp:paragraph -->', 'asdasfdasfd', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2021-09-19 15:06:16', '2021-09-19 13:06:16', '', 68, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=69', 0, 'revision', '', 0),
(70, 1, '2021-09-19 15:07:04', '2021-09-19 13:07:04', '<!-- wp:paragraph -->\n<p>sdaffdafasfd </p>\n<!-- /wp:paragraph -->', 'asdfasfd', '', 'trash', 'open', 'open', '', 'asdfasfd__trashed', '', '', '2021-09-19 15:07:09', '2021-09-19 13:07:09', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=70', 0, 'post', '', 0),
(71, 1, '2021-09-19 15:07:04', '2021-09-19 13:07:04', '<!-- wp:paragraph -->\n<p>sdaffdafasfd </p>\n<!-- /wp:paragraph -->', 'asdfasfd', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2021-09-19 15:07:04', '2021-09-19 13:07:04', '', 70, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=71', 0, 'revision', '', 0),
(72, 1, '2021-09-19 15:17:04', '2021-09-19 13:17:04', '<!-- wp:paragraph -->\n<p>sad  asdsd ad sads d s</p>\n<!-- /wp:paragraph -->', 'sdasdaasdads dsad as das', '', 'trash', 'open', 'open', '', 'sdasdaasdads-dsad-as-das__trashed', '', '', '2021-09-19 15:20:49', '2021-09-19 13:20:49', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=72', 0, 'post', '', 0),
(73, 1, '2021-09-19 15:17:04', '2021-09-19 13:17:04', '<!-- wp:paragraph -->\n<p>sad  asdsd ad sads d s</p>\n<!-- /wp:paragraph -->', 'sdasdaasdads dsad as das', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2021-09-19 15:17:04', '2021-09-19 13:17:04', '', 72, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-09-19 15:20:45', '2021-09-19 13:20:45', '', 'fs d', '', 'trash', 'open', 'open', '', 'fs-d__trashed', '', '', '2021-09-19 15:20:51', '2021-09-19 13:20:51', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=74', 0, 'post', '', 0),
(75, 1, '2021-09-19 15:20:45', '2021-09-19 13:20:45', '', 'fs d', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2021-09-19 15:20:45', '2021-09-19 13:20:45', '', 74, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=75', 0, 'revision', '', 0),
(76, 1, '2021-09-19 15:23:03', '2021-09-19 13:23:03', '<!-- wp:paragraph -->\n<p>dsfsfdfdsfdssfd</p>\n<!-- /wp:paragraph -->', 'sdf sfdsdfsdfsdfsfd', '', 'trash', 'open', 'open', '', 'sdf-sfdsdfsdfsdfsfd__trashed', '', '', '2021-09-19 15:23:08', '2021-09-19 13:23:08', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=76', 0, 'post', '', 0),
(77, 1, '2021-09-19 15:23:03', '2021-09-19 13:23:03', '<!-- wp:paragraph -->\n<p>dsfsfdfdsfdssfd</p>\n<!-- /wp:paragraph -->', 'sdf sfdsdfsdfsdfsfd', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2021-09-19 15:23:03', '2021-09-19 13:23:03', '', 76, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=77', 0, 'revision', '', 0),
(78, 1, '2021-09-19 15:26:38', '2021-09-19 13:26:38', '<!-- wp:paragraph -->\n<p>fd</p>\n<!-- /wp:paragraph -->', 'fgdg', '', 'trash', 'open', 'open', '', 'fgdg__trashed', '', '', '2021-09-19 15:40:42', '2021-09-19 13:40:42', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=78', 0, 'post', '', 0),
(79, 1, '2021-09-19 15:26:38', '2021-09-19 13:26:38', '<!-- wp:paragraph -->\n<p>fd</p>\n<!-- /wp:paragraph -->', 'fgdg', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2021-09-19 15:26:38', '2021-09-19 13:26:38', '', 78, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=79', 0, 'revision', '', 0),
(80, 1, '2021-09-19 15:40:34', '2021-09-19 13:40:34', '', 'sdf', '', 'trash', 'open', 'open', '', 'sdf__trashed', '', '', '2021-09-19 15:40:40', '2021-09-19 13:40:40', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=80', 0, 'post', '', 0),
(81, 1, '2021-09-19 15:40:34', '2021-09-19 13:40:34', '', 'sdf', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2021-09-19 15:40:34', '2021-09-19 13:40:34', '', 80, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-09-19 15:49:26', '2021-09-19 13:49:26', '<!-- wp:paragraph -->\n<p>xzccxzcxz</p>\n<!-- /wp:paragraph -->', 'czczcx', '', 'trash', 'open', 'open', '', 'czczcx__trashed', '', '', '2021-09-19 15:50:29', '2021-09-19 13:50:29', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=82', 0, 'post', '', 0),
(83, 1, '2021-09-19 15:49:26', '2021-09-19 13:49:26', '<!-- wp:paragraph -->\n<p>xzccxzcxz</p>\n<!-- /wp:paragraph -->', 'czczcx', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2021-09-19 15:49:26', '2021-09-19 13:49:26', '', 82, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2021-09-19 15:50:20', '2021-09-19 13:50:20', '', 'dfas', '', 'trash', 'open', 'open', '', 'dfas__trashed', '', '', '2021-09-19 15:50:25', '2021-09-19 13:50:25', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=84', 0, 'post', '', 0),
(85, 1, '2021-09-19 15:50:20', '2021-09-19 13:50:20', '', 'dfas', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2021-09-19 15:50:20', '2021-09-19 13:50:20', '', 84, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=85', 0, 'revision', '', 0),
(86, 1, '2021-09-19 15:53:14', '2021-09-19 13:53:14', '', 'sfd', '', 'trash', 'open', 'open', '', 'sfd__trashed', '', '', '2021-09-20 12:52:12', '2021-09-20 10:52:12', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=86', 0, 'post', '', 0),
(87, 1, '2021-09-19 15:53:14', '2021-09-19 13:53:14', '', 'sfd', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2021-09-19 15:53:14', '2021-09-19 13:53:14', '', 86, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-09-20 12:40:55', '2021-09-20 10:40:55', '<!-- wp:paragraph -->\n<p>kszfdggfdgfddgfklgfdnkgfdsnklsgfdnlk</p>\n<!-- /wp:paragraph -->', 'kjvzkzvdkjzvnjkzvcnkj', '', 'trash', 'open', 'open', '', 'kjvzkzvdkjzvnjkzvcnkj__trashed', '', '', '2021-09-20 12:52:10', '2021-09-20 10:52:10', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=88', 0, 'post', '', 0),
(89, 1, '2021-09-20 12:40:55', '2021-09-20 10:40:55', '<!-- wp:paragraph -->\n<p>kszfdggfdgfddgfklgfdnkgfdsnklsgfdnlk</p>\n<!-- /wp:paragraph -->', 'kjvzkzvdkjzvnjkzvcnkj', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2021-09-20 12:40:55', '2021-09-20 10:40:55', '', 88, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-09-20 12:41:27', '2021-09-20 10:41:27', '<!-- wp:paragraph -->\n<p>sdfgdgfdasgsfdfsdfddfssdffsdsfdfsfdsfdsdsdfsdf</p>\n<!-- /wp:paragraph -->', 'sddssdsd', '', 'trash', 'open', 'open', '', 'sddssdsd__trashed', '', '', '2021-09-20 12:52:07', '2021-09-20 10:52:07', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=90', 0, 'post', '', 0),
(91, 1, '2021-09-20 12:41:27', '2021-09-20 10:41:27', '<!-- wp:paragraph -->\n<p>sdfgdgfdasg</p>\n<!-- /wp:paragraph -->', 'sddssdsd', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2021-09-20 12:41:27', '2021-09-20 10:41:27', '', 90, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-09-20 12:45:47', '2021-09-20 10:45:47', '<!-- wp:paragraph -->\n<p>sdfgdgfdasgsfdfsdfd</p>\n<!-- /wp:paragraph -->', 'sddssdsd', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2021-09-20 12:45:47', '2021-09-20 10:45:47', '', 90, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=92', 0, 'revision', '', 0),
(93, 1, '2021-09-20 12:46:17', '2021-09-20 10:46:17', '<!-- wp:paragraph -->\n<p>sdfgdgfdasgsfdfsdfddfssdffsdsfdfsfdsfdsdsdfsdf</p>\n<!-- /wp:paragraph -->', 'sddssdsd', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2021-09-20 12:46:17', '2021-09-20 10:46:17', '', 90, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-09-20 12:49:23', '2021-09-20 10:49:23', '<!-- wp:paragraph -->\n<p>asdasdas</p>\n<!-- /wp:paragraph -->', 'asdasdsfdsfdsa', '', 'trash', 'open', 'open', '', 'asdasdsa__trashed', '', '', '2021-09-20 12:52:05', '2021-09-20 10:52:05', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=94', 0, 'post', '', 0),
(95, 1, '2021-09-20 12:49:23', '2021-09-20 10:49:23', '<!-- wp:paragraph -->\n<p>asdasdas</p>\n<!-- /wp:paragraph -->', 'asdasdsa', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2021-09-20 12:49:23', '2021-09-20 10:49:23', '', 94, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=95', 0, 'revision', '', 0),
(96, 1, '2021-09-20 12:51:52', '2021-09-20 10:51:52', '<!-- wp:paragraph -->\n<p>asdasdas</p>\n<!-- /wp:paragraph -->', 'asdasdsfdsfdsa', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2021-09-20 12:51:52', '2021-09-20 10:51:52', '', 94, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=96', 0, 'revision', '', 0),
(97, 1, '2021-09-20 12:52:44', '2021-09-20 10:52:44', '<!-- wp:paragraph -->\n<p>fgfdfdfdas</p>\n<!-- /wp:paragraph -->', 'sdafsadd', '', 'trash', 'open', 'open', '', 'sdafsadd__trashed', '', '', '2021-09-20 12:53:24', '2021-09-20 10:53:24', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=97', 0, 'post', '', 0),
(98, 1, '2021-09-20 12:52:44', '2021-09-20 10:52:44', '<!-- wp:paragraph -->\n<p>fgfdfdfdas</p>\n<!-- /wp:paragraph -->', 'sdafsadd', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-09-20 12:52:44', '2021-09-20 10:52:44', '', 97, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=98', 0, 'revision', '', 0),
(99, 1, '2021-09-20 12:53:09', '2021-09-20 10:53:09', '<!-- wp:paragraph -->\n<p>csdfsdsd</p>\n<!-- /wp:paragraph -->', 'asdsdsd', '', 'trash', 'open', 'open', '', 'asdsdsd__trashed', '', '', '2021-09-20 12:53:21', '2021-09-20 10:53:21', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=99', 0, 'post', '', 0),
(100, 1, '2021-09-20 12:53:09', '2021-09-20 10:53:09', '<!-- wp:paragraph -->\n<p>csdfsdsd</p>\n<!-- /wp:paragraph -->', 'asdsdsd', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-09-20 12:53:09', '2021-09-20 10:53:09', '', 99, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=100', 0, 'revision', '', 0),
(101, 1, '2021-09-20 12:53:57', '2021-09-20 10:53:57', '<!-- wp:paragraph -->\n<p>sdsfsfd</p>\n<!-- /wp:paragraph -->', 'asfdas', '', 'trash', 'open', 'open', '', 'asfdas__trashed', '', '', '2021-09-20 12:54:57', '2021-09-20 10:54:57', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=101', 0, 'post', '', 0),
(102, 1, '2021-09-20 12:53:57', '2021-09-20 10:53:57', '<!-- wp:paragraph -->\n<p>sdsfsfd</p>\n<!-- /wp:paragraph -->', 'asfdas', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2021-09-20 12:53:57', '2021-09-20 10:53:57', '', 101, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=102', 0, 'revision', '', 0),
(103, 1, '2021-09-20 12:55:06', '2021-09-20 10:55:06', '<!-- wp:paragraph -->\n<p>sdffdsafd</p>\n<!-- /wp:paragraph -->', 'vsdfdfdsdfs', '', 'trash', 'open', 'open', '', 'vsdfdfdsdfs__trashed', '', '', '2021-09-20 12:58:33', '2021-09-20 10:58:33', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=103', 0, 'post', '', 0),
(104, 1, '2021-09-20 12:55:06', '2021-09-20 10:55:06', '<!-- wp:paragraph -->\n<p>sdffdsafd</p>\n<!-- /wp:paragraph -->', 'vsdfdfdsdfs', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2021-09-20 12:55:06', '2021-09-20 10:55:06', '', 103, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=104', 0, 'revision', '', 0),
(105, 1, '2021-09-20 12:58:09', '2021-09-20 10:58:09', '<!-- wp:paragraph -->\n<p>fsdsfdsdfsfd</p>\n<!-- /wp:paragraph -->', 'ewfsfsf', '', 'trash', 'open', 'open', '', 'ewfsfsf__trashed', '', '', '2021-09-20 12:58:31', '2021-09-20 10:58:31', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=105', 0, 'post', '', 0),
(106, 1, '2021-09-20 12:58:09', '2021-09-20 10:58:09', '<!-- wp:paragraph -->\n<p>fsdsfdsdfsfd</p>\n<!-- /wp:paragraph -->', 'ewfsfsf', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2021-09-20 12:58:09', '2021-09-20 10:58:09', '', 105, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=106', 0, 'revision', '', 0),
(107, 1, '2021-09-20 12:58:45', '2021-09-20 10:58:45', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfdsdsdfdfdsffdsdddsdffsdd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'trash', 'open', 'open', '', 'sdfds__trashed', '', '', '2021-09-21 16:51:18', '2021-09-21 14:51:18', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=107', 0, 'post', '', 0),
(108, 1, '2021-09-20 12:58:45', '2021-09-20 10:58:45', '<!-- wp:paragraph -->\n<p>sd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 12:58:45', '2021-09-20 10:58:45', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=108', 0, 'revision', '', 0),
(109, 1, '2021-09-20 12:59:02', '2021-09-20 10:59:02', '<!-- wp:paragraph -->\n<p>sdjhb</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 12:59:02', '2021-09-20 10:59:02', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=109', 0, 'revision', '', 0),
(110, 1, '2021-09-20 12:59:31', '2021-09-20 10:59:31', '<!-- wp:paragraph -->\n<p>sdjhbasd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 12:59:31', '2021-09-20 10:59:31', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=110', 0, 'revision', '', 0),
(111, 1, '2021-09-20 13:00:25', '2021-09-20 11:00:25', '<!-- wp:paragraph -->\n<p>sdjhbasdsdf</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:00:25', '2021-09-20 11:00:25', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=111', 0, 'revision', '', 0),
(113, 1, '2021-09-20 13:17:50', '2021-09-20 11:17:50', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfds</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:17:50', '2021-09-20 11:17:50', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=113', 0, 'revision', '', 0),
(114, 1, '2021-09-20 13:25:18', '2021-09-20 11:25:18', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:25:18', '2021-09-20 11:25:18', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=114', 0, 'revision', '', 0),
(115, 1, '2021-09-20 13:25:57', '2021-09-20 11:25:57', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:25:57', '2021-09-20 11:25:57', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-09-20 13:26:03', '2021-09-20 11:26:03', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfdsdsdfdf</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:26:03', '2021-09-20 11:26:03', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=116', 0, 'revision', '', 0),
(117, 1, '2021-09-20 13:26:32', '2021-09-20 11:26:32', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfdsdsdfdfdsffds</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:26:32', '2021-09-20 11:26:32', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=117', 0, 'revision', '', 0),
(118, 1, '2021-09-20 13:26:46', '2021-09-20 11:26:46', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfdsdsdfdfdsffdsd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:26:46', '2021-09-20 11:26:46', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=118', 0, 'revision', '', 0),
(119, 1, '2021-09-20 13:29:25', '2021-09-20 11:29:25', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfdsdsdfdfdsffdsdd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:29:25', '2021-09-20 11:29:25', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=119', 0, 'revision', '', 0),
(120, 1, '2021-09-20 13:29:45', '2021-09-20 11:29:45', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfdsdsdfdfdsffdsddds</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:29:45', '2021-09-20 11:29:45', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=120', 0, 'revision', '', 0),
(121, 1, '2021-09-20 13:33:20', '2021-09-20 11:33:20', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfdsdsdfdfdsffdsdddsdffsd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:33:20', '2021-09-20 11:33:20', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=121', 0, 'revision', '', 0),
(122, 1, '2021-09-20 13:33:24', '2021-09-20 11:33:24', '<!-- wp:paragraph -->\n<p>sdjhbasdsdffdfdsvdfsdddfsfdsfdsdsdfdfdsffdsdddsdffsdd</p>\n<!-- /wp:paragraph -->', 'sdfds', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-09-20 13:33:24', '2021-09-20 11:33:24', '', 107, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=122', 0, 'revision', '', 0),
(123, 1, '2021-09-21 16:51:32', '2021-09-21 14:51:32', '<!-- wp:paragraph -->\n<p>testowy</p>\n<!-- /wp:paragraph -->', 'gdd', '', 'publish', 'open', 'open', '', 'gdd', '', '', '2021-09-21 16:51:32', '2021-09-21 14:51:32', '', 0, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=123', 0, 'post', '', 0),
(124, 1, '2021-09-21 16:51:32', '2021-09-21 14:51:32', '<!-- wp:paragraph -->\n<p>testowy</p>\n<!-- /wp:paragraph -->', 'gdd', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2021-09-21 16:51:32', '2021-09-21 14:51:32', '', 123, 'http://localhost/kubki-reklamowe24.lan/public/wordpress/?p=124', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'Poradniki', 'poradniki', 0),
(4, 'Poradnik', 'poradnik', 0),
(5, 'Przykładowy tag', 'przykladowy-tag', 0),
(7, 'Poradniki', 'poradniki', 0),
(8, 'Do testu', 'do-testu', 0),
(9, 'Ależ to działa', 'alez-to-dziala', 0),
(10, 'Mmmm', 'mmmm', 0),
(11, 'Miłego dnia', 'milego-dnia', 0),
(12, 'Bez obrazka', 'bez-obrazka', 0),
(13, 'Z obrazkiem', 'z-obrazkiem', 0),
(14, 'Blog', 'blog', 0),
(15, 'Baza Wiedzy', 'baza-wiedzy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 13, 0),
(1, 14, 0),
(5, 1, 0),
(5, 13, 0),
(5, 14, 0),
(7, 2, 0),
(7, 13, 0),
(7, 15, 0),
(21, 1, 0),
(21, 13, 0),
(21, 14, 0),
(24, 1, 0),
(24, 12, 0),
(24, 14, 0),
(27, 1, 0),
(27, 13, 0),
(27, 14, 0),
(30, 1, 0),
(30, 13, 0),
(30, 14, 0),
(33, 1, 0),
(33, 13, 0),
(33, 14, 0),
(36, 1, 0),
(36, 13, 0),
(36, 14, 0),
(39, 1, 0),
(39, 13, 0),
(39, 14, 0),
(42, 1, 0),
(42, 7, 0),
(42, 8, 0),
(42, 9, 0),
(42, 10, 0),
(42, 11, 0),
(42, 13, 0),
(42, 14, 0),
(45, 1, 0),
(45, 13, 0),
(45, 14, 0),
(52, 1, 0),
(52, 12, 0),
(52, 14, 0),
(66, 1, 0),
(68, 1, 0),
(70, 1, 0),
(70, 14, 0),
(72, 1, 0),
(72, 14, 0),
(74, 1, 0),
(74, 14, 0),
(76, 1, 0),
(76, 14, 0),
(78, 1, 0),
(78, 2, 0),
(78, 14, 0),
(78, 15, 0),
(80, 1, 0),
(80, 14, 0),
(82, 1, 0),
(82, 14, 0),
(84, 1, 0),
(84, 14, 0),
(86, 1, 0),
(86, 14, 0),
(88, 1, 0),
(88, 14, 0),
(90, 2, 0),
(90, 15, 0),
(94, 2, 0),
(94, 15, 0),
(97, 1, 0),
(97, 14, 0),
(99, 2, 0),
(99, 15, 0),
(101, 1, 0),
(101, 14, 0),
(103, 1, 0),
(103, 14, 0),
(105, 2, 0),
(105, 15, 0),
(107, 2, 0),
(107, 15, 0),
(123, 1, 0),
(123, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 14, 13),
(2, 2, 'category', 'Wszystko co potrzebne, aby korzystać z naszej strony.', 15, 1),
(4, 4, 'post_tag', '', 0, 0),
(5, 5, 'post_tag', '', 0, 0),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 2),
(13, 13, 'post_tag', '', 0, 11),
(14, 14, 'category', '', 0, 13),
(15, 15, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Szymon'),
(3, 1, 'last_name', 'Mlonek'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"c888c182af696f4916f1b35e024cc918eb67242d5324ab72c6f787bb8e8b9ee0\";a:4:{s:10:\"expiration\";i:1632306696;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0\";s:5:\"login\";i:1632133896;}s:64:\"3b7e70c6e552a5b6b921d0ae6226fba97f3452fab0ed69a179f6ebd117c90176\";a:4:{s:10:\"expiration\";i:1632408664;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:92.0) Gecko/20100101 Firefox/92.0\";s:5:\"login\";i:1632235864;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '48'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=upload'),
(20, 1, 'wp_user-settings-time', '1631697904'),
(21, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BELtMTArZiCMfecWSHn5voOCUjEwPZ/', 'admin', 'szymon.mlnk@gmail.com', '', '2021-09-05 18:55:39', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_70C0C6E66352511C` (`admin_user_id`);

--
-- Indexes for table `bitbag_cms_block`
--
ALTER TABLE `bitbag_cms_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_321C84CF77153098` (`code`);

--
-- Indexes for table `bitbag_cms_block_channels`
--
ALTER TABLE `bitbag_cms_block_channels`
  ADD PRIMARY KEY (`block_id`,`channel_id`),
  ADD KEY `IDX_8417B073E9ED820C` (`block_id`),
  ADD KEY `IDX_8417B07372F5A1AA` (`channel_id`);

--
-- Indexes for table `bitbag_cms_block_products`
--
ALTER TABLE `bitbag_cms_block_products`
  ADD PRIMARY KEY (`block_id`,`product_id`),
  ADD KEY `IDX_C4B9089FE9ED820C` (`block_id`),
  ADD KEY `IDX_C4B9089F4584665A` (`product_id`);

--
-- Indexes for table `bitbag_cms_block_sections`
--
ALTER TABLE `bitbag_cms_block_sections`
  ADD PRIMARY KEY (`block_id`,`section_id`),
  ADD KEY `IDX_5C95115DE9ED820C` (`block_id`),
  ADD KEY `IDX_5C95115DD823E37A` (`section_id`);

--
-- Indexes for table `bitbag_cms_block_translation`
--
ALTER TABLE `bitbag_cms_block_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bitbag_cms_block_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_32897FDF2C2AC5D3` (`translatable_id`);

--
-- Indexes for table `bitbag_cms_faq`
--
ALTER TABLE `bitbag_cms_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bitbag_cms_faq_channels`
--
ALTER TABLE `bitbag_cms_faq_channels`
  ADD PRIMARY KEY (`faq_id`,`channel_id`),
  ADD KEY `IDX_FF6D59AC81BEC8C2` (`faq_id`),
  ADD KEY `IDX_FF6D59AC72F5A1AA` (`channel_id`);

--
-- Indexes for table `bitbag_cms_faq_translation`
--
ALTER TABLE `bitbag_cms_faq_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bitbag_cms_faq_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_8B30DD2E2C2AC5D3` (`translatable_id`);

--
-- Indexes for table `bitbag_cms_media`
--
ALTER TABLE `bitbag_cms_media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DB2BB2E177153098` (`code`),
  ADD UNIQUE KEY `UNIQ_DB2BB2E1B548B0F` (`path`);

--
-- Indexes for table `bitbag_cms_media_channels`
--
ALTER TABLE `bitbag_cms_media_channels`
  ADD PRIMARY KEY (`block_id`,`channel_id`),
  ADD KEY `IDX_D109622EE9ED820C` (`block_id`),
  ADD KEY `IDX_D109622E72F5A1AA` (`channel_id`);

--
-- Indexes for table `bitbag_cms_media_products`
--
ALTER TABLE `bitbag_cms_media_products`
  ADD PRIMARY KEY (`media_id`,`product_id`),
  ADD KEY `IDX_91A7DAC2EA9FDD75` (`media_id`),
  ADD KEY `IDX_91A7DAC24584665A` (`product_id`);

--
-- Indexes for table `bitbag_cms_media_sections`
--
ALTER TABLE `bitbag_cms_media_sections`
  ADD PRIMARY KEY (`media_id`,`section_id`),
  ADD KEY `IDX_98BC300EA9FDD75` (`media_id`),
  ADD KEY `IDX_98BC300D823E37A` (`section_id`);

--
-- Indexes for table `bitbag_cms_media_translation`
--
ALTER TABLE `bitbag_cms_media_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bitbag_cms_media_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_1FEC58972C2AC5D3` (`translatable_id`);

--
-- Indexes for table `bitbag_cms_page`
--
ALTER TABLE `bitbag_cms_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_18F07F1B77153098` (`code`);

--
-- Indexes for table `bitbag_cms_page_channels`
--
ALTER TABLE `bitbag_cms_page_channels`
  ADD PRIMARY KEY (`page_id`,`channel_id`),
  ADD KEY `IDX_DCA4269C4663E4` (`page_id`),
  ADD KEY `IDX_DCA426972F5A1AA` (`channel_id`);

--
-- Indexes for table `bitbag_cms_page_image`
--
ALTER TABLE `bitbag_cms_page_image`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C9C589EA7E3C61F9` (`owner_id`);

--
-- Indexes for table `bitbag_cms_page_products`
--
ALTER TABLE `bitbag_cms_page_products`
  ADD PRIMARY KEY (`page_id`,`product_id`),
  ADD KEY `IDX_4D64FA85C4663E4` (`page_id`),
  ADD KEY `IDX_4D64FA854584665A` (`product_id`);

--
-- Indexes for table `bitbag_cms_page_sections`
--
ALTER TABLE `bitbag_cms_page_sections`
  ADD PRIMARY KEY (`block_id`,`section_id`),
  ADD KEY `IDX_D548E347E9ED820C` (`block_id`),
  ADD KEY `IDX_D548E347D823E37A` (`section_id`);

--
-- Indexes for table `bitbag_cms_page_translation`
--
ALTER TABLE `bitbag_cms_page_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bitbag_cms_page_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_FDD074A62C2AC5D3` (`translatable_id`);

--
-- Indexes for table `bitbag_cms_section`
--
ALTER TABLE `bitbag_cms_section`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_421D079777153098` (`code`);

--
-- Indexes for table `bitbag_cms_section_translation`
--
ALTER TABLE `bitbag_cms_section_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bitbag_cms_section_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_F99CA8582C2AC5D3` (`translatable_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7FC45F1DDE13F470` (`taxon_id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3D0AE6DCE7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_3D0AE6DC5E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_3D0AE6DC6352511C` (`admin_user_id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`product_id`,`tag_id`),
  ADD KEY `IDX_E3A6E39C4584665A` (`product_id`),
  ADD KEY `IDX_E3A6E39CBAD26311` (`tag_id`);

--
-- Indexes for table `sylius_address`
--
ALTER TABLE `sylius_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B97FF0589395C3F3` (`customer_id`);

--
-- Indexes for table `sylius_address_log_entries`
--
ALTER TABLE `sylius_address_log_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  ADD KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  ADD KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`);

--
-- Indexes for table `sylius_admin_api_access_token`
--
ALTER TABLE `sylius_admin_api_access_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  ADD KEY `IDX_2AA4915D19EB6921` (`client_id`),
  ADD KEY `IDX_2AA4915DA76ED395` (`user_id`);

--
-- Indexes for table `sylius_admin_api_auth_code`
--
ALTER TABLE `sylius_admin_api_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  ADD KEY `IDX_E366D84819EB6921` (`client_id`),
  ADD KEY `IDX_E366D848A76ED395` (`user_id`);

--
-- Indexes for table `sylius_admin_api_client`
--
ALTER TABLE `sylius_admin_api_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sylius_admin_api_refresh_token`
--
ALTER TABLE `sylius_admin_api_refresh_token`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  ADD KEY `IDX_9160E3FA19EB6921` (`client_id`),
  ADD KEY `IDX_9160E3FAA76ED395` (`user_id`);

--
-- Indexes for table `sylius_admin_user`
--
ALTER TABLE `sylius_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88D5CC4D6557905D` (`administrationRole_id`);

--
-- Indexes for table `sylius_channel`
--
ALTER TABLE `sylius_channel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  ADD KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  ADD KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  ADD KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  ADD KEY `IDX_16C8119EE551C011` (`hostname`);

--
-- Indexes for table `sylius_channel_currencies`
--
ALTER TABLE `sylius_channel_currencies`
  ADD PRIMARY KEY (`channel_id`,`currency_id`),
  ADD KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  ADD KEY `IDX_AE491F9338248176` (`currency_id`);

--
-- Indexes for table `sylius_channel_locales`
--
ALTER TABLE `sylius_channel_locales`
  ADD PRIMARY KEY (`channel_id`,`locale_id`),
  ADD KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  ADD KEY `IDX_786B7A84E559DFD1` (`locale_id`);

--
-- Indexes for table `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  ADD KEY `IDX_7801820CA80EF684` (`product_variant_id`);

--
-- Indexes for table `sylius_country`
--
ALTER TABLE `sylius_country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  ADD KEY `IDX_E74256BF77153098` (`code`);

--
-- Indexes for table `sylius_currency`
--
ALTER TABLE `sylius_currency`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`);

--
-- Indexes for table `sylius_customer`
--
ALTER TABLE `sylius_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  ADD UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  ADD KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`);

--
-- Indexes for table `sylius_customer_group`
--
ALTER TABLE `sylius_customer_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`);

--
-- Indexes for table `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  ADD KEY `IDX_5F52B852A76BEED` (`source_currency`),
  ADD KEY `IDX_5F52B85B3FD5856` (`target_currency`);

--
-- Indexes for table `sylius_gateway_config`
--
ALTER TABLE `sylius_gateway_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sylius_locale`
--
ALTER TABLE `sylius_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7BA1286477153098` (`code`);

--
-- Indexes for table `sylius_order`
--
ALTER TABLE `sylius_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  ADD UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  ADD UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  ADD KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  ADD KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  ADD KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  ADD KEY `IDX_6196A1F9CDEADB2A` (`agency_id`);

--
-- Indexes for table `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  ADD KEY `IDX_77B587ED3B69A9AF` (`variant_id`);

--
-- Indexes for table `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  ADD KEY `IDX_82BF226E7BE036FC` (`shipment_id`);

--
-- Indexes for table `sylius_order_sequence`
--
ALTER TABLE `sylius_order_sequence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sylius_payment`
--
ALTER TABLE `sylius_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9191BD419883967` (`method_id`),
  ADD KEY `IDX_D9191BD48D9F6D38` (`order_id`);

--
-- Indexes for table `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  ADD KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`);

--
-- Indexes for table `sylius_payment_method_channels`
--
ALTER TABLE `sylius_payment_method_channels`
  ADD PRIMARY KEY (`payment_method_id`,`channel_id`),
  ADD KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  ADD KEY `IDX_543AC0CC72F5A1AA` (`channel_id`);

--
-- Indexes for table `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_payment_security_token`
--
ALTER TABLE `sylius_payment_security_token`
  ADD PRIMARY KEY (`hash`);

--
-- Indexes for table `sylius_product`
--
ALTER TABLE `sylius_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  ADD KEY `IDX_677B9B74731E505` (`main_taxon_id`),
  ADD KEY `IDX_677B9B74A23B42D` (`manufacturer_id`);

--
-- Indexes for table `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  ADD KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  ADD KEY `IDX_48E9CDAB4584665A` (`product_id`);

--
-- Indexes for table `sylius_product_association_product`
--
ALTER TABLE `sylius_product_association_product`
  ADD PRIMARY KEY (`association_id`,`product_id`),
  ADD KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  ADD KEY `IDX_A427B9834584665A` (`product_id`);

--
-- Indexes for table `sylius_product_association_type`
--
ALTER TABLE `sylius_product_association_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`);

--
-- Indexes for table `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_4F618E52C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_product_attribute`
--
ALTER TABLE `sylius_product_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`);

--
-- Indexes for table `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8A053E544584665A` (`product_id`),
  ADD KEY `IDX_8A053E54B6E62EFA` (`attribute_id`);

--
-- Indexes for table `sylius_product_channels`
--
ALTER TABLE `sylius_product_channels`
  ADD PRIMARY KEY (`product_id`,`channel_id`),
  ADD KEY `IDX_F9EF269B4584665A` (`product_id`),
  ADD KEY `IDX_F9EF269B72F5A1AA` (`channel_id`);

--
-- Indexes for table `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_88C64B2D7E3C61F9` (`owner_id`);

--
-- Indexes for table `sylius_product_image_product_variants`
--
ALTER TABLE `sylius_product_image_product_variants`
  ADD PRIMARY KEY (`image_id`,`variant_id`),
  ADD KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  ADD KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`);

--
-- Indexes for table `sylius_product_option`
--
ALTER TABLE `sylius_product_option`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`);

--
-- Indexes for table `sylius_product_options`
--
ALTER TABLE `sylius_product_options`
  ADD PRIMARY KEY (`product_id`,`option_id`),
  ADD KEY `IDX_2B5FF0094584665A` (`product_id`),
  ADD KEY `IDX_2B5FF009A7C41D6F` (`option_id`);

--
-- Indexes for table `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  ADD KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`);

--
-- Indexes for table `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C7056A994584665A` (`product_id`),
  ADD KEY `IDX_C7056A99F675F31B` (`author_id`);

--
-- Indexes for table `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  ADD KEY `IDX_169C6CD94584665A` (`product_id`),
  ADD KEY `IDX_169C6CD9DE13F470` (`taxon_id`);

--
-- Indexes for table `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  ADD UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_105A9082C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  ADD KEY `IDX_A29B5234584665A` (`product_id`),
  ADD KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  ADD KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`);

--
-- Indexes for table `sylius_product_variant_option_value`
--
ALTER TABLE `sylius_product_variant_option_value`
  ADD PRIMARY KEY (`variant_id`,`option_value_id`),
  ADD KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  ADD KEY `IDX_76CDAFA1D957CA06` (`option_value_id`);

--
-- Indexes for table `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_promotion`
--
ALTER TABLE `sylius_promotion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F157396377153098` (`code`);

--
-- Indexes for table `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_933D0915139DF194` (`promotion_id`);

--
-- Indexes for table `sylius_promotion_channels`
--
ALTER TABLE `sylius_promotion_channels`
  ADD PRIMARY KEY (`promotion_id`,`channel_id`),
  ADD KEY `IDX_1A044F64139DF194` (`promotion_id`),
  ADD KEY `IDX_1A044F6472F5A1AA` (`channel_id`);

--
-- Indexes for table `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  ADD KEY `IDX_B04EBA85139DF194` (`promotion_id`);

--
-- Indexes for table `sylius_promotion_order`
--
ALTER TABLE `sylius_promotion_order`
  ADD PRIMARY KEY (`order_id`,`promotion_id`),
  ADD KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  ADD KEY `IDX_BF9CF6FB139DF194` (`promotion_id`);

--
-- Indexes for table `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2C188EA8139DF194` (`promotion_id`);

--
-- Indexes for table `sylius_province`
--
ALTER TABLE `sylius_province`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  ADD UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  ADD KEY `IDX_B5618FE4F92F3E70` (`country_id`);

--
-- Indexes for table `sylius_rbac_administration_role`
--
ALTER TABLE `sylius_rbac_administration_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3333A12E5E237E06` (`name`);

--
-- Indexes for table `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FD707B3319883967` (`method_id`),
  ADD KEY `IDX_FD707B338D9F6D38` (`order_id`);

--
-- Indexes for table `sylius_shipping_category`
--
ALTER TABLE `sylius_shipping_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B1D6465277153098` (`code`);

--
-- Indexes for table `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  ADD KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  ADD KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  ADD KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`);

--
-- Indexes for table `sylius_shipping_method_channels`
--
ALTER TABLE `sylius_shipping_method_channels`
  ADD PRIMARY KEY (`shipping_method_id`,`channel_id`),
  ADD KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  ADD KEY `IDX_2D98333572F5A1AA` (`channel_id`);

--
-- Indexes for table `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`);

--
-- Indexes for table `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  ADD KEY `IDX_CFD811CAA977936C` (`tree_root`),
  ADD KEY `IDX_CFD811CA727ACA70` (`parent_id`);

--
-- Indexes for table `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DBE52B287E3C61F9` (`owner_id`);

--
-- Indexes for table `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  ADD UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  ADD KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`);

--
-- Indexes for table `sylius_tax_category`
--
ALTER TABLE `sylius_tax_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`);

--
-- Indexes for table `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  ADD KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  ADD KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`);

--
-- Indexes for table `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_provider` (`user_id`,`provider`),
  ADD KEY `IDX_C3471B78A76ED395` (`user_id`);

--
-- Indexes for table `sylius_zone`
--
ALTER TABLE `sylius_zone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`);

--
-- Indexes for table `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  ADD KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_389B783989D9B62` (`slug`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `bitbag_cms_block`
--
ALTER TABLE `bitbag_cms_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitbag_cms_block_translation`
--
ALTER TABLE `bitbag_cms_block_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitbag_cms_faq`
--
ALTER TABLE `bitbag_cms_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitbag_cms_faq_translation`
--
ALTER TABLE `bitbag_cms_faq_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitbag_cms_media`
--
ALTER TABLE `bitbag_cms_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `bitbag_cms_media_translation`
--
ALTER TABLE `bitbag_cms_media_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitbag_cms_page`
--
ALTER TABLE `bitbag_cms_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bitbag_cms_page_image`
--
ALTER TABLE `bitbag_cms_page_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitbag_cms_page_translation`
--
ALTER TABLE `bitbag_cms_page_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bitbag_cms_section`
--
ALTER TABLE `bitbag_cms_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bitbag_cms_section_translation`
--
ALTER TABLE `bitbag_cms_section_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sylius_address`
--
ALTER TABLE `sylius_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- AUTO_INCREMENT for table `sylius_address_log_entries`
--
ALTER TABLE `sylius_address_log_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- AUTO_INCREMENT for table `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `sylius_admin_api_access_token`
--
ALTER TABLE `sylius_admin_api_access_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_admin_api_auth_code`
--
ALTER TABLE `sylius_admin_api_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_admin_api_client`
--
ALTER TABLE `sylius_admin_api_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_admin_api_refresh_token`
--
ALTER TABLE `sylius_admin_api_refresh_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_admin_user`
--
ALTER TABLE `sylius_admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sylius_channel`
--
ALTER TABLE `sylius_channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sylius_country`
--
ALTER TABLE `sylius_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_currency`
--
ALTER TABLE `sylius_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_customer`
--
ALTER TABLE `sylius_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `sylius_customer_group`
--
ALTER TABLE `sylius_customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_gateway_config`
--
ALTER TABLE `sylius_gateway_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sylius_locale`
--
ALTER TABLE `sylius_locale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_order`
--
ALTER TABLE `sylius_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=752;

--
-- AUTO_INCREMENT for table `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_order_sequence`
--
ALTER TABLE `sylius_order_sequence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_payment`
--
ALTER TABLE `sylius_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sylius_product`
--
ALTER TABLE `sylius_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_product_association_type`
--
ALTER TABLE `sylius_product_association_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_product_attribute`
--
ALTER TABLE `sylius_product_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `sylius_product_option`
--
ALTER TABLE `sylius_product_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `sylius_promotion`
--
ALTER TABLE `sylius_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_province`
--
ALTER TABLE `sylius_province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_rbac_administration_role`
--
ALTER TABLE `sylius_rbac_administration_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `sylius_shipping_category`
--
ALTER TABLE `sylius_shipping_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sylius_tax_category`
--
ALTER TABLE `sylius_tax_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sylius_zone`
--
ALTER TABLE `sylius_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agency`
--
ALTER TABLE `agency`
  ADD CONSTRAINT `FK_70C0C6E66352511C` FOREIGN KEY (`admin_user_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bitbag_cms_block_channels`
--
ALTER TABLE `bitbag_cms_block_channels`
  ADD CONSTRAINT `FK_8417B07372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8417B073E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_block` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_block_products`
--
ALTER TABLE `bitbag_cms_block_products`
  ADD CONSTRAINT `FK_C4B9089F4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C4B9089FE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_block` (`id`);

--
-- Constraints for table `bitbag_cms_block_sections`
--
ALTER TABLE `bitbag_cms_block_sections`
  ADD CONSTRAINT `FK_5C95115DD823E37A` FOREIGN KEY (`section_id`) REFERENCES `bitbag_cms_section` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5C95115DE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_block` (`id`);

--
-- Constraints for table `bitbag_cms_block_translation`
--
ALTER TABLE `bitbag_cms_block_translation`
  ADD CONSTRAINT `FK_32897FDF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_block` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_faq_channels`
--
ALTER TABLE `bitbag_cms_faq_channels`
  ADD CONSTRAINT `FK_FF6D59AC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FF6D59AC81BEC8C2` FOREIGN KEY (`faq_id`) REFERENCES `bitbag_cms_faq` (`id`);

--
-- Constraints for table `bitbag_cms_faq_translation`
--
ALTER TABLE `bitbag_cms_faq_translation`
  ADD CONSTRAINT `FK_8B30DD2E2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_faq` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_media_channels`
--
ALTER TABLE `bitbag_cms_media_channels`
  ADD CONSTRAINT `FK_D109622E72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D109622EE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_media_products`
--
ALTER TABLE `bitbag_cms_media_products`
  ADD CONSTRAINT `FK_91A7DAC24584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_91A7DAC2EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `bitbag_cms_media` (`id`);

--
-- Constraints for table `bitbag_cms_media_sections`
--
ALTER TABLE `bitbag_cms_media_sections`
  ADD CONSTRAINT `FK_98BC300D823E37A` FOREIGN KEY (`section_id`) REFERENCES `bitbag_cms_section` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_98BC300EA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `bitbag_cms_media` (`id`);

--
-- Constraints for table `bitbag_cms_media_translation`
--
ALTER TABLE `bitbag_cms_media_translation`
  ADD CONSTRAINT `FK_1FEC58972C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_page_channels`
--
ALTER TABLE `bitbag_cms_page_channels`
  ADD CONSTRAINT `FK_DCA426972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_DCA4269C4663E4` FOREIGN KEY (`page_id`) REFERENCES `bitbag_cms_page` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_page_image`
--
ALTER TABLE `bitbag_cms_page_image`
  ADD CONSTRAINT `FK_C9C589EA7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `bitbag_cms_page_translation` (`id`);

--
-- Constraints for table `bitbag_cms_page_products`
--
ALTER TABLE `bitbag_cms_page_products`
  ADD CONSTRAINT `FK_4D64FA854584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4D64FA85C4663E4` FOREIGN KEY (`page_id`) REFERENCES `bitbag_cms_page` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_page_sections`
--
ALTER TABLE `bitbag_cms_page_sections`
  ADD CONSTRAINT `FK_D548E347D823E37A` FOREIGN KEY (`section_id`) REFERENCES `bitbag_cms_section` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D548E347E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `bitbag_cms_page` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_page_translation`
--
ALTER TABLE `bitbag_cms_page_translation`
  ADD CONSTRAINT `FK_FDD074A62C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_page` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bitbag_cms_section_translation`
--
ALTER TABLE `bitbag_cms_section_translation`
  ADD CONSTRAINT `FK_F99CA8582C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `bitbag_cms_section` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter`
--
ALTER TABLE `filter`
  ADD CONSTRAINT `FK_7FC45F1DDE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`);

--
-- Constraints for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD CONSTRAINT `FK_3D0AE6DC6352511C` FOREIGN KEY (`admin_user_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `FK_E3A6E39C4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E3A6E39CBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_address`
--
ALTER TABLE `sylius_address`
  ADD CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  ADD CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_admin_api_access_token`
--
ALTER TABLE `sylius_admin_api_access_token`
  ADD CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Constraints for table `sylius_admin_api_auth_code`
--
ALTER TABLE `sylius_admin_api_auth_code`
  ADD CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Constraints for table `sylius_admin_api_refresh_token`
--
ALTER TABLE `sylius_admin_api_refresh_token`
  ADD CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Constraints for table `sylius_admin_user`
--
ALTER TABLE `sylius_admin_user`
  ADD CONSTRAINT `FK_88D5CC4D6557905D` FOREIGN KEY (`administrationRole_id`) REFERENCES `sylius_rbac_administration_role` (`id`);

--
-- Constraints for table `sylius_channel`
--
ALTER TABLE `sylius_channel`
  ADD CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  ADD CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  ADD CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sylius_channel_currencies`
--
ALTER TABLE `sylius_channel_currencies`
  ADD CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_channel_locales`
--
ALTER TABLE `sylius_channel_locales`
  ADD CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  ADD CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_customer`
--
ALTER TABLE `sylius_customer`
  ADD CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`);

--
-- Constraints for table `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  ADD CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_order`
--
ALTER TABLE `sylius_order`
  ADD CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  ADD CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  ADD CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`),
  ADD CONSTRAINT `FK_6196A1F9CDEADB2A` FOREIGN KEY (`agency_id`) REFERENCES `agency` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  ADD CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  ADD CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  ADD CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_payment`
--
ALTER TABLE `sylius_payment`
  ADD CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  ADD CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  ADD CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sylius_payment_method_channels`
--
ALTER TABLE `sylius_payment_method_channels`
  ADD CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  ADD CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product`
--
ALTER TABLE `sylius_product`
  ADD CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`),
  ADD CONSTRAINT `FK_677B9B74A23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  ADD CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_association_product`
--
ALTER TABLE `sylius_product_association_product`
  ADD CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  ADD CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  ADD CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  ADD CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_channels`
--
ALTER TABLE `sylius_product_channels`
  ADD CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  ADD CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_image_product_variants`
--
ALTER TABLE `sylius_product_image_product_variants`
  ADD CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_options`
--
ALTER TABLE `sylius_product_options`
  ADD CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  ADD CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  ADD CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  ADD CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  ADD CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  ADD CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  ADD CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  ADD CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sylius_product_variant_option_value`
--
ALTER TABLE `sylius_product_variant_option_value`
  ADD CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  ADD CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  ADD CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Constraints for table `sylius_promotion_channels`
--
ALTER TABLE `sylius_promotion_channels`
  ADD CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  ADD CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Constraints for table `sylius_promotion_order`
--
ALTER TABLE `sylius_promotion_order`
  ADD CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  ADD CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  ADD CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Constraints for table `sylius_province`
--
ALTER TABLE `sylius_province`
  ADD CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`);

--
-- Constraints for table `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  ADD CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  ADD CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  ADD CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  ADD CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Constraints for table `sylius_shipping_method_channels`
--
ALTER TABLE `sylius_shipping_method_channels`
  ADD CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  ADD CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  ADD CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Constraints for table `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  ADD CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  ADD CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  ADD CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  ADD CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  ADD CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Constraints for table `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  ADD CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`);

--
-- Constraints for table `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  ADD CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
