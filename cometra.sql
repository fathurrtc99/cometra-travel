-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 07:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cometra`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/snVY15XcjZV6VfCveCFhQefJjtHTcHAskvwPLphm.jpg', '2021-12-30 17:00:00', '2021-12-23 12:10:04', '2021-12-23 12:10:04'),
(2, 2, 'assets/gallery/y3abYTYlpPeUeiDsaZrS7MCryoZpAETUtaOe5ETZ.png', '2021-12-30 17:00:00', '2021-12-23 12:10:21', '2021-12-23 12:10:21'),
(3, 3, 'assets/gallery/rO1l6jyPto81kRQXeC18fDIxsnpGPCWWnsFSnTnn.png', '2021-12-30 17:00:00', '2021-12-27 11:12:59', '2021-12-27 11:12:59'),
(4, 6, 'assets/gallery/qxuxspYTWpSrzoBgS0wXeFMCLZKxbcz94ezIOKqs.jpg', NULL, '2021-12-28 09:57:48', '2021-12-28 10:42:47'),
(5, 6, 'assets/gallery/DKpjkOxq1I3Ja8vMJe0jgBzARZJbEF4TGEeEAbaJ.jpg', NULL, '2021-12-28 09:58:08', '2021-12-28 09:58:08'),
(6, 6, 'assets/gallery/EXj9VkgufjgCGdizBFo1cZs5dbtOeUE3CMdy1A73.jpg', NULL, '2021-12-28 09:58:24', '2021-12-28 09:58:24'),
(7, 6, 'assets/gallery/APM2LQt5OB33fKf9LtbaHKjMmzBRSkh2zVRZ0J3B.jpg', NULL, '2021-12-28 09:58:47', '2021-12-28 09:58:47'),
(8, 4, 'assets/gallery/5vwDlunrRCknzwJN8rdEipKKxm2scf3PfWAGKthp.jpg', NULL, '2021-12-28 09:59:28', '2021-12-28 09:59:28'),
(9, 5, 'assets/gallery/YhLIu6sIkZNqhd8VAyA1N83hm6EV30ocBNexQSj1.jpg', NULL, '2021-12-28 10:02:42', '2021-12-28 10:02:42'),
(10, 7, 'assets/gallery/VIVlxqz8p1JR560sZ2rQbD0IGZQF74kKk9dxz60K.jpg', NULL, '2021-12-28 10:05:06', '2021-12-28 10:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2021_10_06_192816_create_travel_packages_table', 1),
(14, '2021_10_07_133440_create_galleries_table', 1),
(15, '2021_10_07_142037_create_transactions_table', 1),
(16, '2021_10_07_143246_create_transactions_details_table', 1),
(17, '2021_10_07_151307_add_roles_field_to_users_table', 1),
(18, '2021_12_02_170819_add_username_field_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(17, 5, 2, 0, 345, 'IN_CART', NULL, '2022-01-04 08:36:30', '2022-01-04 08:36:30'),
(18, 5, 2, 0, 345, 'IN_CART', NULL, '2022-01-04 08:40:11', '2022-01-04 08:40:11'),
(19, 5, 2, 0, 345, 'IN_CART', NULL, '2022-01-04 08:47:30', '2022-01-04 08:47:30'),
(20, 5, 2, 0, 345, 'IN_CART', NULL, '2022-01-04 08:48:05', '2022-01-04 08:48:05'),
(21, 6, 2, 0, 550, 'CANCEL', NULL, '2022-01-04 08:57:37', '2022-01-04 10:44:11'),
(22, 6, 2, 0, -1100, 'SUCCESS', NULL, '2022-01-04 09:03:53', '2022-01-04 10:43:51'),
(23, 5, 2, 0, 345, 'IN_CART', NULL, '2022-01-11 11:07:15', '2022-01-11 11:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, 16, 'User1', 'ID', 0, '2027-01-04', NULL, '2022-01-04 08:28:46', '2022-01-04 08:28:46'),
(10, 17, 'User1', 'ID', 0, '2027-01-04', NULL, '2022-01-04 08:36:30', '2022-01-04 08:36:30'),
(11, 18, 'User1', 'ID', 0, '2027-01-04', NULL, '2022-01-04 08:40:11', '2022-01-04 08:40:11'),
(12, 22, 'User1', 'ID', 0, '2027-01-04', NULL, '2022-01-04 09:03:53', '2022-01-04 09:03:53'),
(13, 22, 'User2', 'ML', 0, '2022-01-19', '2022-01-04 10:42:07', '2022-01-04 09:06:13', '2022-01-04 10:42:07'),
(14, 22, 'User2', 'ML', 0, '2022-01-19', NULL, '2022-01-04 09:08:54', '2022-01-04 09:08:54'),
(15, 22, 'User2', 'ML', 0, '2022-01-19', '2022-01-04 10:42:00', '2022-01-04 09:11:34', '2022-01-04 10:42:00'),
(16, 22, 'User2', 'ML', 0, '2022-01-19', '2022-01-04 10:41:54', '2022-01-04 09:12:31', '2022-01-04 10:41:54'),
(17, 22, 'User2', 'ML', 0, '2022-01-19', '2022-01-04 10:41:48', '2022-01-04 10:41:39', '2022-01-04 10:41:48'),
(18, 23, 'User1', 'ID', 0, '2027-01-11', NULL, '2022-01-11 11:07:16', '2022-01-11 11:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured_event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departured_date` date NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departured_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'trip1', 'trip1', 'ubud,Bali', 'gathering', 'gathr', 'idn', 'idn', '2021-12-29', '3D', 'priv', 219, '2021-12-30 17:00:00', '2021-12-23 12:08:53', '2021-12-23 12:08:53'),
(2, 'trip2', 'trip2', 'lombok,ntt', 'show', 'show', 'id-eng', 'idn', '2021-12-31', '4D', 'Open', 213, '2021-12-30 17:00:00', '2021-12-23 12:09:35', '2021-12-23 12:09:35'),
(3, 'TRIP3', 'trip3', 'bali', 'ghater', 'meet', 'id', 'asdqwk', '2022-01-06', '2D', 'Public', 212, '2021-12-30 17:00:00', '2021-12-27 09:45:17', '2021-12-27 09:45:17'),
(4, 'Venesia,Italy', 'venesiaitaly', 'Italy', 'Italy, officially the Italian Republic, is a country consisting of a peninsula delimited by the Alps and several islands surrounding it,[15] whose territory largely coincides with the homonymous geographical region. Italy is located in the centre of the Mediterranean Sea, in Southern Europe, it is also considered part of Western Europe. A unitary parliamentary republic with Rome as its capital and largest city, the country covers a total area of 301,340 km2 and shares land borders with France, Switzerland, Austria, Slovenia, as well as the enclaved microstates of Vatican City and San Marino. Italy has a territorial exclave in Switzerland (Campione) and a maritime exclave in Tunisian waters (Lampedusa). With around 60 million inhabitants, Italy is the third-most populous member state of the European Union.\r\n\r\nDue to its central geographic location in Southern Europe and the Mediterranean, Italy has historically been home to myriad peoples and cultures. In addition to the various ancient peoples dispersed throughout what is now modern-day Italy, the most predominant being the Indo-European Italic peoples who gave the peninsula its name, beginning from the classical era, Phoenicians and Carthaginians founded colonies mostly in insular Italy, Greeks established settlements in the so-called Magna Graecia of Southern Italy, while Etruscans and Celts inhabited central and northern Italy respectively. An Italic tribe known as the Latins formed the Roman Kingdom in the 8th century BC, which eventually became a republic with a government of the Senate and the People. The Roman Republic initially conquered and assimilated its neighbours on the Italian peninsula, eventually expanding and conquering parts of Europe, North Africa and Asia. By the first century BC, the Roman Empire emerged as the dominant power in the Mediterranean Basin and became a leading cultural, political and religious centre, inaugurating the Pax Romana, a period of more than 200 years during which Italy\'s law, technology, economy, art, and literature developed.', 'New Year Event', 'Italian-English', 'Italian Foods', '2021-12-30', '4D 3N', 'Open Public', 445, NULL, '2021-12-28 09:40:43', '2021-12-28 09:47:08'),
(5, 'Istanbul, Turkey', 'istanbul-turkey', 'Republic Of Turkey', 'Turkey  officially the Republic of Turkey, is a country located mainly on Anatolia in Western Asia, with a small portion on the Balkans in Southeast Europe. It shares borders with Greece and Bulgaria to the northwest; the Black Sea to the north; Georgia to the northeast; Armenia, Azerbaijan, and Iran to the east; Iraq to the southeast; Syria and the Mediterranean Sea to the south; and the Aegean Sea to the west. Turks form the vast majority of the nation\'s population and Kurds are the largest minority. Ankara is Turkey\'s capital, while Istanbul, the Imperial capital, is its largest city and financial centre.\r\n\r\nOne of the world\'s earliest permanently settled regions, present-day Turkey was home to important Neolithic sites like Göbekli Tepe, and was inhabited by ancient civilisations such as the Hattians, other Anatolian peoples and Mycenaean Greeks. Following the conquests of Alexander the Great which started the Hellenistic period, most of the ancient regions in modern Turkey were culturally Hellenised, which continued during the Byzantine era. The Seljuk Turks began migrating in the 11th century, and the Sultanate of Rum ruled Anatolia until the Mongol invasion in 1243, when it disintegrated into small Turkish principalities. Beginning in the late 13th century, the Ottomans united the principalities and conquered the Balkans, and the Turkification of Anatolia increased during the Ottoman period. After Mehmed II conquered Constantinople (Istanbul) in 1453, Ottoman expansion continued under Selim I. During the reign of Suleiman the Magnificent, the Ottoman Empire became a global power. From the late 18th century onwards, the empire\'s power declined with a gradual loss of territories. Mahmud II started a period of modernisation in the early 19th century. The Young Turk Revolution of 1908 restricted the authority of the Sultan and restored the Ottoman Parliament after a 30-year suspension, ushering the empire into a multi-party period. The 1913 coup d\'état put the country under the control of the Three Pashas, who facilitated the Empire\'s entry into World War I as part of the Central Powers in 1914. During the war, the Ottoman government committed genocides against its Armenian, Assyrian subjects. After its defeat in the war, the Ottoman Empire was partitioned.', 'New Year Event', 'Turkesh-English', 'Turkey Foods', '2021-12-30', '4D 3N', 'Open Public', 345, NULL, '2021-12-28 09:46:54', '2021-12-28 09:46:54'),
(6, 'Ubud,Bali', 'ubudbali', 'INDONESIA', 'Bali adalah sebuah provinsi di Indonesia yang ibu kotanya bernama Denpasar. Bali juga merupakan salah satu pulau di Kepulauan Nusa Tenggara. Di awal kemerdekaan Indonesia, pulau ini termasuk dalam Provinsi Sunda Kecil yang beribu kota di Singaraja, dan kini terbagi menjadi 3 provinsi, yakni Bali, Nusa Tenggara Barat, dan Nusa Tenggara Timur. Pada tahun 2020, penduduk provinsi Bali berjumlah 4.317.404 jiwa, dengan kepadatan 747 jiwa/km2.\r\n\r\nSelain terdiri dari pulau Bali, wilayah provinsi Bali juga terdiri dari pulau-pulau yang lebih kecil di sekitarnya, yaitu pulau Nusa Penida, pulau Nusa Lembongan, pulau Nusa Ceningan, Pulau Serangan, dan Pulau Menjangan. Secara geografis, Bali terletak di antara Pulau Jawa dan Pulau Lombok. Mayoritas penduduk Bali adalah pemeluk agama Hindu. Di dunia, Bali terkenal sebagai tujuan pariwisata dengan keunikan berbagai hasil seni-budayanya, khususnya bagi para wisatawan Jepang dan Australia. Bali juga dikenal dengan julukan Pulau Dewata dan Pulau Seribu Pura.', 'New Year Event', 'Indonesia-English', 'Indonesia Foods', '2021-12-30', '4D 3N', 'Open Public', 550, NULL, '2021-12-28 09:49:13', '2021-12-28 09:49:13'),
(7, 'Cairo,Mesir', 'cairomesir', 'Mesir', 'Republik Arab Mesir adalah sebuah negara yang sebagian besar wilayahnya terletak di Afrika bagian timur laut. Mesir juga digolongkan sebagai negara maju di Afrika.\r\nMesir juga merupakan Negara pertama di dunia yang mengakui Kedaulatan Indonesia pada 17 Agustus 1945.\r\nDengan luas wilayah sekitar 997.739 km² Mesir mencakup Semenanjung Sinai (dianggap sebagai bagian dari Asia Barat Daya) sedangkan sebagian besar wilayahnya terletak di Afrika Utara. Mesir berbatasan dengan Libya di sebelah barat, Sudan di selatan, jalur Gaza dan Israel di utara-timur. Perbatasannya dengan perairan ialah melalui Laut Tengah di utara dan Laut Merah di timur.\r\n\r\nMayoritas penduduk Mesir menetap di pinggir Sungai Nil (sekitar 40.000 km²). Sebagian besar daratan merupakan bagian dari gurun Sahara yang jarang dihuni. Mayoritas penduduk negara Mesir menganut agama Islam sementara sisanya menganut agama Kristen Kubti.\r\n\r\nMesir terkenal dengan peradaban kuno dan beberapa monumen kuno termegah di dunia misalnya Piramid Giza, Kuil Karnak, Lembah Para Raja serta Kuil Ramses. Di Luxor, sebuah kota di wilayah selatan terdapat kira-kira artefak kuno yang mencakup sekitar 65% artefak kuno di seluruh dunia. Kini, Mesir diakui secara luas sebagai pusat budaya dan politikal utama di wilayah Arab dan Timur Tengah.', 'Mawa\'ed al rahman, Fanous Ramadan', 'Bahasa Arab', 'Ful', '2022-04-28', '4D 3N', 'Pubic', 712, NULL, '2021-12-28 09:55:39', '2021-12-28 09:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'FathurAdmin', 'admin1@gmail.com', NULL, '$2y$10$BHl6asz2aS8lxzVt12Duru7zvxkZ/9h8jozwXyivT1eJIKijHXjZe', NULL, '2021-12-23 12:07:17', '2021-12-23 12:07:17', 'ADMIN', 'iniAdmin'),
(2, 'Rahman', 'iniUser1@gmail.com', '2022-01-02 08:34:58', '$2y$10$sxkBgoiqId0130BWLBrDTefH/LeaLPLgifaHe.4c1MxxM7v3GFoyK', NULL, '2021-12-23 12:11:56', '2022-01-02 08:34:58', 'USER', 'User1'),
(3, 'rahmanUser', 'iniUser2@gmail.com', NULL, '$2y$10$TLRdlRP7mBG2dXS7N2Wk2efgecfqOEUSnV7wEyVTObxciJMOab4tu', NULL, '2021-12-23 12:13:03', '2022-01-01 12:13:03', 'USER', 'User2'),
(4, 'rahmanUser3', 'User3@gmail.com', '2022-01-03 08:37:52', '$2y$10$236A1F9Ng9rFRkXazj2pj.0gV1F0YCxezlCfCXuhzls9RK5XsADeK', NULL, '2022-01-03 08:35:58', '2022-01-03 08:37:52', 'USER', 'RahmanUser3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel_packages`
--
ALTER TABLE `travel_packages`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
