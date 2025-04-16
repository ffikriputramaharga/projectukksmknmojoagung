-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2025 at 04:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` bigint(20) UNSIGNED NOT NULL,
  `kode_buku` bigint(20) NOT NULL,
  `nama_buku` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `rak` int(11) NOT NULL,
  `stok_buku` int(11) NOT NULL,
  `foto_buku` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_buku`, `nama_buku`, `penerbit`, `rak`, `stok_buku`, `foto_buku`, `created_at`, `updated_at`) VALUES
(10, 9786020649320, 'The Midnight Library', 'Gramedia Pustaka Utama', 12, 39, 'the-midnight-library-cov.jpg', '2025-01-10 05:38:32', '2025-01-11 16:16:44'),
(11, 9786020659923, 'The Song of Achilles', 'Gramedia Pustaka Utama', 12, 39, 'the-song-of-achilles-cov.jpg', '2025-01-10 05:49:36', '2025-01-11 16:15:00'),
(12, 9786020648293, 'Keajaiban Toko Kelontong Namiya', 'Gramedia Pustaka Utama', 12, 39, 'keajaiban-toko-kelontong-namiya-cov.jpg', '2025-01-10 05:53:58', '2025-01-11 16:16:44'),
(13, 9786020650357, 'Educated Terdidik', 'Gramedia Pustaka Utama', 12, 39, 'educated-cov.jpg', '2025-01-10 05:59:19', '2025-01-11 16:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `denda`
--

CREATE TABLE `denda` (
  `id_denda` bigint(20) UNSIGNED NOT NULL,
  `nominal_denda` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `denda`
--

INSERT INTO `denda` (`id_denda`, `nominal_denda`, `created_at`, `updated_at`) VALUES
(2, '1000', '2023-01-18 08:09:24', '2025-01-11 16:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelas` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `jenis_kelas`, `created_at`, `updated_at`) VALUES
(18, 'Kelas 12 RPL 1', '2025-01-09 01:25:42', '2025-01-09 01:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `kepala_sekolah`
--

CREATE TABLE `kepala_sekolah` (
  `id_kepsek` bigint(20) UNSIGNED NOT NULL,
  `nip_kepsek` varchar(255) NOT NULL,
  `nama_kepsek` varchar(255) NOT NULL,
  `jenis_kelamin_kepsek` enum('p','l') NOT NULL,
  `tgl_lahir_kepsek` date NOT NULL,
  `foto_kepsek` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kepala_sekolah`
--

INSERT INTO `kepala_sekolah` (`id_kepsek`, `nip_kepsek`, `nama_kepsek`, `jenis_kelamin_kepsek`, `tgl_lahir_kepsek`, `foto_kepsek`, `created_at`, `updated_at`) VALUES
(2, '20503374', 'Panca Sutrisno', 'l', '1990-01-08', 'kepala-sekolah-smkn-mojoagung.jpg', '2025-01-10 04:43:12', '2025-01-10 04:43:12');

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_12_02_070552_create_kelas_table', 3),
(11, '2022_12_03_214202_create_rak_table', 4),
(12, '2022_12_02_051558_create_siswa_table', 5),
(13, '2022_12_04_135623_create_buku_table', 6),
(16, '2022_12_06_005647_create_pinjambuku_table', 9),
(17, '2022_12_06_121632_create_riwayat_pinjam_table', 10),
(18, '2023_01_18_000007_create_denda_table', 11),
(20, '2023_01_18_184407_create_kepala_sekolah_table', 12);

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
-- Table structure for table `pinjambuku`
--

CREATE TABLE `pinjambuku` (
  `id_pinjam` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pinjambuku`
--

INSERT INTO `pinjambuku` (`id_pinjam`, `id_siswa`, `id_buku`, `tanggal_kembali`, `created_at`, `updated_at`) VALUES
(12, 14, 11, '2025-01-18', '2025-01-11 16:15:00', '2025-01-11 16:15:00'),
(13, 15, 12, '2025-01-18', '2025-01-11 16:16:44', '2025-01-11 16:16:44'),
(14, 15, 10, '2025-01-18', '2025-01-11 16:16:44', '2025-01-11 16:16:44'),
(15, 15, 13, '2025-01-18', '2025-01-11 16:16:44', '2025-01-11 16:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `id_rak` bigint(20) UNSIGNED NOT NULL,
  `jenis_rak` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`id_rak`, `jenis_rak`, `created_at`, `updated_at`) VALUES
(11, 'Cerita Fiksi', '2025-01-09 01:55:33', '2025-01-09 01:55:33'),
(12, 'Novel', '2025-01-10 04:19:44', '2025-01-10 04:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pinjam`
--

CREATE TABLE `riwayat_pinjam` (
  `id_riwayat` bigint(20) UNSIGNED NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `denda` bigint(20) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_pinjam`
--

INSERT INTO `riwayat_pinjam` (`id_riwayat`, `id_siswa`, `id_buku`, `tanggal_kembali`, `denda`, `status`, `created_at`, `updated_at`) VALUES
(12, 14, 11, '2025-01-18', NULL, 'pinjam', '2025-01-11 16:15:00', '2025-01-11 16:15:00'),
(13, 15, 12, '2025-01-18', NULL, 'pinjam', '2025-01-11 16:16:44', '2025-01-11 16:16:44'),
(14, 15, 10, '2025-01-18', NULL, 'pinjam', '2025-01-11 16:16:44', '2025-01-11 16:16:44'),
(15, 15, 13, '2025-01-18', NULL, 'pinjam', '2025-01-11 16:16:44', '2025-01-11 16:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `nis` bigint(20) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `nama_siswa` varchar(255) NOT NULL,
  `jenis_kelamin` enum('p','l') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `barcode`, `nama_siswa`, `jenis_kelamin`, `tgl_lahir`, `kelas`, `foto`, `created_at`, `updated_at`) VALUES
(14, 13057, '472215461', 'ABDULAH YUSUF', 'l', '2006-01-16', '18', '', '2025-01-10 04:08:33', '2025-01-10 04:08:33'),
(15, 13058, '117906040', 'ACHMAD FATICH HAZAMI', 'l', '2006-01-16', '18', '', '2025-01-10 04:10:56', '2025-01-10 04:10:56'),
(16, 13059, '495466069', 'ACHMAD NAUFAL AZIZ', 'l', '2006-01-16', '18', '', '2025-01-10 04:12:27', '2025-01-10 04:12:27'),
(17, 13060, '181974849', 'ADITYA ESYA PRATAMA', 'l', '2006-01-16', '18', '', '2025-01-10 04:14:02', '2025-01-10 04:14:02'),
(18, 13061, '691711037', 'AISHA DIAN KARTIKA', 'p', '2006-01-10', '18', '', '2025-01-15 14:14:58', '2025-01-15 14:14:58'),
(19, 13062, '726813510', 'ALFIN AHSANU ROMADHONI', 'l', '2006-01-15', '18', '', '2025-01-15 14:16:52', '2025-01-15 14:16:52'),
(20, 13063, '304610708', 'ARGYA RAJASWA FIRJATULLAH', 'l', '2006-01-15', '18', '', '2025-01-15 14:20:24', '2025-01-15 14:20:24'),
(21, 13064, '555836539', 'ARRIDHO RENO SAPUTRA', 'l', '2006-01-15', '18', '', '2025-01-15 14:22:03', '2025-01-15 14:22:03'),
(22, 13065, '643685337', 'CHERIL VEBRI ANINDI', 'p', '2006-01-15', '18', '', '2025-01-15 14:23:40', '2025-01-15 14:23:40'),
(23, 13066, '118844223', 'DERIL VENO AMANULLAH', 'l', '2006-01-15', '18', '', '2025-01-15 14:24:41', '2025-01-15 14:24:41'),
(24, 13067, '720027175', 'DIMAS ARY PRAYOGA', 'l', '2006-01-20', '18', '', '2025-01-15 14:27:30', '2025-01-15 14:27:30'),
(25, 13068, '241299099', 'ELINDA OKTAHIVA FITRIANI', 'p', '2006-01-20', '18', '', '2025-01-15 14:31:26', '2025-01-15 14:31:26'),
(26, 13069, '416240819', 'FA\'IQ MAULANA ALWAN', 'l', '2006-01-20', '18', '', '2025-01-15 14:33:42', '2025-01-15 14:33:42'),
(27, 13070, '141044826', 'FIKRI PUTRA MAHARGA', 'l', '2006-01-20', '18', '', '2025-01-15 14:34:40', '2025-01-15 14:34:40'),
(28, 13071, '398718353', 'LIA WAROKAH', 'p', '2006-01-20', '18', '', '2025-01-15 14:36:32', '2025-01-15 14:36:32'),
(29, 13072, '633318477', 'LILIS SETIAWATI', 'p', '2006-01-20', '18', '', '2025-01-15 14:38:06', '2025-01-15 14:38:06'),
(30, 13073, '489808976', 'LUTFIYAH APTA INDRIATI', 'p', '2006-01-20', '18', '', '2025-01-15 14:41:21', '2025-01-15 14:41:21'),
(31, 13074, '161795177', 'MOCHAMAD CHAHARUDIN LUBIS', 'l', '2025-01-20', '18', '', '2025-01-15 14:43:48', '2025-01-15 14:43:48'),
(32, 13076, '303698058', 'MOH. AFIF MUZHAQI', 'l', '2006-01-20', '18', '', '2025-01-15 14:46:33', '2025-01-15 14:47:31'),
(33, 13075, '648370270', 'MOHAMAD RIZKY ALIF ZUWANA', 'l', '2006-01-20', '18', '', '2025-01-15 14:49:00', '2025-01-15 14:56:16'),
(34, 13077, '433350248', 'MUHAMMAD BAGUS PRATAMA FIRMANSYAH', 'l', '2006-01-20', '18', '', '2025-01-15 14:51:44', '2025-01-15 14:56:53'),
(35, 13078, '529786489', 'MUHAMMAD ILHAM', 'l', '2006-01-20', '18', '', '2025-01-15 14:52:58', '2025-01-15 14:57:11'),
(36, 13079, '651368838', 'MUHAMMAD MAULANA ASY\'ARI', 'l', '2006-01-20', '18', '', '2025-01-15 14:54:54', '2025-01-15 14:57:23'),
(37, 13081, '898433621', 'MUKHAMMAD \'IFAT AL FIKRI', 'l', '2006-01-20', '18', '', '2025-01-15 14:59:01', '2025-01-15 14:59:01'),
(38, 13082, '618404015', 'NAFF\'A RIDO DIRANDA', 'l', '2006-01-20', '18', '', '2025-01-15 15:00:20', '2025-01-15 15:00:20'),
(39, 13083, '356522744', 'NURUL AZMIL NASYIFA', 'p', '2006-01-20', '18', '', '2025-01-15 15:01:12', '2025-01-15 15:01:12'),
(40, 13084, '360247725', 'RAKA ADITYA RAMADHANI', 'l', '2006-01-20', '18', '', '2025-01-15 15:02:25', '2025-01-15 15:02:25'),
(41, 13085, '989510021', 'REGIEVIA VELINA MAHARANI', 'p', '2006-01-20', '18', '', '2025-01-15 15:03:43', '2025-01-15 15:03:43'),
(42, 13086, '645271343', 'REVALINA AZKA ARLIYANTI', 'p', '2006-01-20', '18', '', '2025-01-15 15:05:09', '2025-01-15 15:05:09'),
(43, 13087, '460122478', 'SCATZHI ANGGUN PUTRI KUMALA', 'p', '2006-01-20', '18', '', '2025-01-15 15:06:56', '2025-01-15 15:06:56'),
(44, 13088, '521542239', 'SLAMET RISKI HARDIYANTO', 'l', '2006-01-20', '18', '', '2025-01-15 15:08:08', '2025-01-15 15:08:41'),
(45, 13089, '464745173', 'STEVEN BRIYAN ALEXANDER', 'l', '2006-01-20', '18', '', '2025-01-15 15:10:09', '2025-01-15 15:10:09'),
(46, 13090, '927085551', 'WHIKU ADJI HIBATULLAH', 'l', '2006-01-20', '18', '', '2025-01-15 15:11:06', '2025-01-15 15:11:06'),
(47, 13091, '775798111', 'ZACKY AKBAR RAMADHAN', 'l', '2006-01-20', '18', '', '2025-01-15 15:12:11', '2025-01-15 15:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `foto` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nip`, `name`, `telp`, `email_verified_at`, `password`, `type`, `foto`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '123456789', 'Admin Perpustakaan SMKN Mojoagung', '088844444333', NULL, '$2y$10$4TYX2VzTQR36wVSlb2tF.eScNIVz4iVCoJg.o.Qwfdy2S3yduL.2G', 'Petugas', 'logo-white.png', NULL, '2022-12-01 07:34:32', '2025-01-10 05:35:49'),
(4, '20503374', 'Panca Sutrisno', '08774444333', NULL, '$2y$10$AHuZwRJ2OqhXTE2SkosyNOIkHH4AjzREBeWZAf.Mszhnq9F/raigS', 'Kepsek', 'kepala-sekolah-smkn-mojoagung.jpg', NULL, '2025-01-11 16:02:58', '2025-01-11 16:02:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  ADD PRIMARY KEY (`id_kepsek`);

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
-- Indexes for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indexes for table `rak`
--
ALTER TABLE `rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- Indexes for table `riwayat_pinjam`
--
ALTER TABLE `riwayat_pinjam`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `denda`
--
ALTER TABLE `denda`
  MODIFY `id_denda` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kepala_sekolah`
--
ALTER TABLE `kepala_sekolah`
  MODIFY `id_kepsek` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  MODIFY `id_pinjam` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rak`
--
ALTER TABLE `rak`
  MODIFY `id_rak` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `riwayat_pinjam`
--
ALTER TABLE `riwayat_pinjam`
  MODIFY `id_riwayat` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
