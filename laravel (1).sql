-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2024 pada 03.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `isian`
--

CREATE TABLE `isian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Survei` varchar(255) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam_Mulai` time NOT NULL,
  `Jam_Selesai` time NOT NULL,
  `Coordinates` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `NBS` varchar(255) NOT NULL,
  `NUS` varchar(255) NOT NULL,
  `Responden` varchar(255) NOT NULL,
  `Jumlah_ART` int(11) NOT NULL,
  `Beras_Kg` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2024_10_30_062856_create_tracking_table', 1),
(6, '2024_10_30_064627_create_tbaru_table', 1),
(7, '2024_10_30_064651_create_sampel2024_table', 1),
(8, '2024_10_30_064701_create_pengawasan_table', 1),
(9, '2024_10_30_064706_create_pengawasan1_table', 1),
(10, '2024_10_30_064723_create_isian_table', 1),
(11, '2024_10_30_064729_create_user_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengawasan`
--

CREATE TABLE `pengawasan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nama_Pengawas` varchar(255) NOT NULL,
  `Kegiatan` varchar(255) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam_Mulai` time NOT NULL,
  `Jam_Selesai` time NOT NULL,
  `Coordinates` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Petugas` varchar(255) NOT NULL,
  `Catatan` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengawasan`
--

INSERT INTO `pengawasan` (`id`, `Nama_Pengawas`, `Kegiatan`, `Tanggal`, `Jam_Mulai`, `Jam_Selesai`, `Coordinates`, `Alamat`, `Petugas`, `Catatan`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'biljono', 'Pengawasan', '2024-02-07', '09:03:41', '09:03:42', '-7.32835,112.72845', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'Likah(sakernas)', 'Pengumpulan dokumen', 'a', NULL, NULL),
(2, 'biljono', 'Pengawasan', '0000-00-00', '09:03:41', '09:03:42', '-7.32835,112.72845', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'fvv', 'dff', 'a ', NULL, NULL),
(3, 'sulrini', 'Pengawasan', '0000-00-00', '13:30:49', '13:31:47', '-7.3284,112.72841', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'susenas', 'pengumpulan dokumen', 'b ', NULL, NULL),
(4, 'sulrini', 'Pengawasan', '0000-00-00', '13:30:49', '13:31:47', '-7.3284,112.72841', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'susenas', 'pengumpulan dokumen', 'a ', NULL, NULL),
(5, 'sulrini', 'Pengawasan', '0000-00-00', '13:30:49', '13:31:47', '-7.3284,112.72841', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'susenas', 'pengumpulan dokumen', 'b ', NULL, NULL),
(6, 'nugrohoaryo', 'Pengawasan', '0000-00-00', '14:11:12', '14:12:47', '-7.29165,112.74072', 'Jl. Serayu No.33, Darmo, Kec. Wonokromo, Surabaya, Jawa Timur 60241, Indonesia', 'Endang Rusmianingsih', 'Penerimaan Dokumen DSRT blok 042B Kelurahan Ketintang', 'a ', NULL, NULL),
(7, 'sulrini', 'Pengawasan', '0000-00-00', '15:25:21', '15:26:32', '-7.32903,112.72806', 'Jl. Gayung Kebonsari No.152A, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'pengumpulan dokumen', '', 'b ', NULL, NULL),
(8, 'sulrini', 'Pengawasan', '0000-00-00', '15:25:21', '15:26:32', '-7.32903,112.72806', 'Jl. Gayung Kebonsari No.152A, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'pengumpulan dokumen', '', 'a ', NULL, NULL),
(9, 'nugrohoaryo', 'Pengawasan', '0000-00-00', '16:19:34', '16:20:04', '-7.32877,112.74751', 'Jl. Raya Kendangsari Gg. II No.5, Kendangsari, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur 60292, Indonesia', 'Sri Prasetyanti (SUSENAS(', 'penyerahan dokumen DSRT', 'b ', NULL, NULL),
(10, 'nugrohoaryo', 'Pengawasan', '0000-00-00', '16:19:34', '16:20:04', '-7.32877,112.74751', 'Jl. Raya Kendangsari Gg. II No.5, Kendangsari, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur 60292, Indonesia', 'Sri Prasetyanti (SUSENAS(', 'penyerahan dokumen DSRT', 'a ', NULL, NULL),
(11, 'akhdiri', 'Pengawasan', '0000-00-00', '10:03:54', '10:38:24', '-7.21005,112.77594', 'Jl. Tambak Wedi No.28, RT.003/RW.02, Tambak Wedi, Kec. Kenjeran, Surabaya, Jawa Timur 60126, Indonesia', 'snapshot', '', 'b ', NULL, NULL),
(12, 'ichuadi', 'Pengawasan', '0000-00-00', '10:54:46', '10:59:05', '-7.25822,112.74728', 'Jl. Sedap Malam No.1-7, Ketabang, Kec. Genteng, Surabaya, Jawa Timur 60272, Indonesia', 'Ichwan ( Panjang Jalan) ', '', 'a ', NULL, NULL),
(13, 'faharno', 'Pengawasan', '0000-00-00', '15:52:52', '15:54:51', '-7.32835,112.72842', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'likah(sakernas)', '', 'b ', NULL, NULL),
(14, 'parutri', 'Pengawasan', '0000-00-00', '10:54:42', '10:54:43', '-7.23222,112.62668', 'Pondok Benowo Indah blok BW-01, RT.02, RW.09 Surabaya, Babat Jerawat, Kec. Pakal, Surabaya, Jawa Timur 60197, Indonesia', 'kpps', '', 'a ', NULL, NULL),
(15, 'faharno', 'Pengawasan', '0000-00-00', '10:19:48', '11:25:17', '-7.22879,112.77354', 'Jl. Kalilom Lor III Jl. Kalilom Lor No.24, RT.004/RW.03, Tanah Kali Kedinding, Kec. Kenjeran, Surabaya, Jawa Timur 60129, Indonesia', 'tatik(sakernas)', '', 'b ', NULL, NULL),
(16, 'faharno', 'Pengawasan', '0000-00-00', '14:51:05', '14:49:42', '-7.2465,112.7197', 'Jl. Simo Gn. Bar. Tol Sidorukun Gg. III No.15, Dupak, Kec. Krembangan, Surabaya, Jawa Timur 60179, Indonesia', 'hanif (sakernas)', '', 'a ', NULL, NULL),
(17, 'faharno', 'Pengawasan', '0000-00-00', '16:27:18', '16:27:22', '-7.3284,112.72845', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'testing', '', 'b ', NULL, NULL),
(18, 'faharno', 'Pengawasan', '0000-00-00', '16:27:47', '16:27:22', '-7.3284,112.72845', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'testing', '', 'a ', NULL, NULL),
(19, 'andyadi', 'Pengawasan', '0000-00-00', '09:48:00', '09:47:57', '-7.29819,112.7552', 'Jl. Bratang Wetan III A No.4-G, RT.007/RW.08, Ngagelrejo, Kec. Wonokromo, Surabaya, Jawa Timur 60245, Indonesia', 'devie (seruti )', '', 'b ', NULL, NULL),
(20, 'achyadi', 'Pengawasan', '0000-00-00', '09:54:11', '09:58:12', '-7.25829,112.75237', 'Jl. Kenikir No.16, RT.002/RW.02, Ketabang, Kec. Genteng, Surabaya, Jawa Timur 60272, Indonesia', 'sakernas respondem pak toha', '', 'a ', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengawasan1`
--

CREATE TABLE `pengawasan1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Survei` varchar(255) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam_Mulai` time NOT NULL,
  `Jam_Selesai` time NOT NULL,
  `Coordinates` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Peserta` varchar(255) NOT NULL,
  `Catatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengawasan1`
--

INSERT INTO `pengawasan1` (`id`, `Nama`, `Survei`, `Tanggal`, `Jam_Mulai`, `Jam_Selesai`, `Coordinates`, `Alamat`, `Peserta`, `Catatan`, `created_at`, `updated_at`) VALUES
(1, 'sulrini', 'Pengawasan', '0000-00-00', '13:30:49', '13:31:47', '-7.3284,112.72841', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'susenas', 'pengumpulan dokumen ', NULL, NULL),
(2, 'sulrini', 'Pengawasan', '0000-00-00', '13:30:49', '13:31:47', '-7.3284,112.72841', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'susenas', 'pengumpulan dokumen ', NULL, NULL),
(3, 'sulrini', 'Pengawasan', '0000-00-00', '13:30:49', '13:31:47', '-7.3284,112.72841', 'Jl. Ahmad Yani No.152E, Gayungan, Kec. Gayungan, Surabaya, Jawa Timur 60235, Indonesia', 'susenas', 'pengumpulan dokumen ', NULL, NULL),
(4, 'nugrohoaryo', 'Pengawasan', '0000-00-00', '14:11:12', '14:12:47', '-7.29165,112.74072', 'Jl. Serayu No.33, Darmo, Kec. Wonokromo, Surabaya, Jawa Timur 60241, Indonesia', 'Endang Rusmianingsih', 'Penerimaan Dokumen DSRT blok 042B Kelurahan Ketintang ', NULL, NULL),
(5, 'nugrohoaryo', 'Pengawasan', '0000-00-00', '16:19:34', '16:20:04', '-7.32877,112.74751', 'Jl. Raya Kendangsari Gg. II No.5, Kendangsari, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur 60292, Indonesia', 'Sri Prasetyanti (SUSENAS(', 'penyerahan dokumen DSRT ', NULL, NULL),
(6, 'nugrohoaryo', 'Pengawasan', '0000-00-00', '16:19:34', '16:20:04', '-7.32877,112.74751', 'Jl. Raya Kendangsari Gg. II No.5, Kendangsari, Kec. Tenggilis Mejoyo, Surabaya, Jawa Timur 60292, Indonesia', 'Sri Prasetyanti (SUSENAS(', 'penyerahan dokumen DSRT ', NULL, NULL),
(7, 'retsati', 'Pengawasan', '0000-00-00', '09:23:28', '10:22:01', '-7.32816,112.72799', 'MPCH Q82, Gayungan, Surabaya, East Java 60235, Indonesia', 'sumarni', 'pengawasan susenas ', NULL, NULL),
(8, 'diawari', 'Pengawasan', '0000-00-00', '09:42:14', '10:37:46', '-7.26152,112.68056', 'Jl. Darmo Indah Barat I Blok AC No.22, Karangpoh, Kec. Tandes, Surabaya, Jawa Timur 60186, Indonesia', 'Janti Sulistyowati', 'SUSENAS SERUTI ', NULL, NULL),
(9, 'biljono', 'Pengawasan', '0000-00-00', '09:58:22', '10:43:14', '-7.24258,112.79178', 'Jl. Bambang Sutoro No.26, Komp. Kenjeran, Kec. Bulak, Surabaya, Jawa Timur 60121, Indonesia', 'Agustina (Susenas)', 'Semua item perlu disebutkan,,Sebelum menanyakan konsumsi tolong sebutkan rentang waktunya,,makanan jadi berbeda dengan bahan makanan instant,,kuantitas nya juga harus ditanyakan,,aplikasi lancar ', NULL, NULL),
(10, 'retsati', 'Pengawasan', '0000-00-00', '09:23:28', '10:22:01', '-7.32816,112.72799', 'MPCH Q82, Gayungan, Surabaya, East Java 60235, Indonesia', 'sumarni', 'pengawasan susenas ', NULL, NULL),
(11, 'retsati', 'Pengawasan', '0000-00-00', '09:23:28', '10:22:01', '-7.32816,112.72799', 'MPCH Q82, Gayungan, Surabaya, East Java 60235, Indonesia', 'sumarni (susenas)', 'pengawasan susenas ', NULL, NULL),
(12, 'roberth', 'Pengawasan', '0000-00-00', '10:57:23', '11:06:24', '-7.2551,112.75092', 'Jl. Ambengan Batu II No.9, RT.002/RW.04, Tambaksari, Kec. Tambaksari, Surabaya, Jawa Timur 60136, Indonesia', 'dwi ernawati (susenas)', 'responden : prihartiningsih ', NULL, NULL),
(13, 'diawari', 'Pengawasan', '0000-00-00', '11:00:32', '11:48:05', '-7.26199,112.68129', 'Darmo Indah Barat VI Blok AD No.37, Karangpoh, Kec. Tandes, Surabaya, Jawa Timur 60186, Indonesia', 'Janti S', 'SERUTI ', NULL, NULL),
(14, 'faliman', 'Pengawasan', '0000-00-00', '09:42:44', '11:48:09', '-7.34288,112.79608', 'No address available', 'Falah Susenas', 'Pengawasan Susenas ', NULL, NULL),
(15, 'faliman', 'Pengawasan', '0000-00-00', '09:50:21', '11:57:07', '-7.34287,112.79608', 'No address available', 'Ika Puji Indrasari SUSENAS', 'Pengawasan Susenas ', NULL, NULL),
(16, 'Winarsih', 'Pengawasan', '0000-00-00', '13:05:31', '13:19:18', '-7.27918,112.72598', 'Banyu Urip Wetan V No.32E, RT.004/RW.04, Putat Jaya, Kec. Sawahan, Surabaya, Jawa Timur 60255, Indonesia', 'EMMi ROFIK', 'Pengawasan pencacahan Susenas ', NULL, NULL),
(17, 'faliman', 'Pengawasan', '0000-00-00', '12:40:04', '14:44:38', '-7.31601,112.77587', 'Jl. Kedung Asem No.111, Kedung Baruk, Kec. Rungkut, Surabaya, Jawa Timur 60298, Indonesia', 'Maftukah SUSENAS', 'Pengawasan SUSENAS ', NULL, NULL),
(18, 'faliman', 'Pengawasan', '0000-00-00', '12:40:04', '14:44:38', '-7.31601,112.77587', 'Jl. Kedung Asem No.111, Kedung Baruk, Kec. Rungkut, Surabaya, Jawa Timur 60298, Indonesia', 'Maftukah SUSENAS', 'Pengawasan SUSENAS ', NULL, NULL),
(19, 'roberth', 'Pengawasan', '0000-00-00', '17:13:59', '18:29:29', '-7.25501,112.75101', 'Jl. Ambengan Batu II No.15, RT.002/RW.04, Tambaksari, Kec. Tambaksari, Surabaya, Jawa Timur 60136, Indonesia', 'dwi ernawati (susenas)', 'responden : slamet riyadi ', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sampel2024`
--

CREATE TABLE `sampel2024` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `nama_survei` varchar(255) NOT NULL,
  `nama_responden` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sampel2024`
--

INSERT INTO `sampel2024` (`id`, `nama_petugas`, `nama_user`, `nama_survei`, `nama_responden`, `created_at`, `updated_at`) VALUES
(1, 'A. Karim', 'abdkarim', 'SHP', 'SINAR BAJA ELECTRIC, CV', NULL, NULL),
(2, 'A. Karim', 'abdkarim', 'SHP', 'DAYA SATYA ABRASIVES, PT', NULL, NULL),
(3, 'A. Karim', 'abdkarim', 'SHP', 'ACC. UD', NULL, NULL),
(4, 'A. Karim', 'abdkarim', 'SHP', 'TUNAS SEJATI PERKASA, PT', NULL, NULL),
(5, 'A. Karim', 'abdkarim', 'SHP', 'WELLGAN GEMILANG, PT', NULL, NULL),
(6, 'A. Karim', 'abdkarim', 'SHP', 'PINGAN SEAFOOD PRODUCT MANUFAKTUR, PT', NULL, NULL),
(7, 'A. Karim', 'abdkarim', 'SHP', 'KAIROS LOGAM MAKMUR, PT', NULL, NULL),
(8, 'A. Karim', 'abdkarim', 'SHP', 'TRIJAYA GEMILANG, CV', NULL, NULL),
(9, 'A. Karim', 'abdkarim', 'SHP', 'CIPTA WARNA JAYA, CV', NULL, NULL),
(10, 'Arifin', 'muhhafin', 'SHP', 'GOLDCOIN INDONESIA, PT', NULL, NULL),
(11, 'Arifin', 'muhhafin', 'SHP', 'INDOBERKA INVESTAMA, PT', NULL, NULL),
(12, 'Arifin', 'muhhafin', 'SHP', 'MATAHARI SAKTI, PT', NULL, NULL),
(13, 'Arifin', 'muhhafin', 'SHP', 'CARVIN ARTAMAS, PT', NULL, NULL),
(14, 'Arifin', 'muhhafin', 'SHP', 'SUPARINDO JAYA MAKMUR, PT', NULL, NULL),
(15, 'Arifin', 'muhhafin', 'SHP', 'BENTENG MAS ABADI, PT', NULL, NULL),
(16, 'Diah Muharini', 'dyaahini', 'SHP', 'GOLDEN CENDANA JAYA, PT', NULL, NULL),
(17, 'Diah Muharini', 'dyaahini', 'SHP', 'ALLNEX RESIN INDONESIA, PT', NULL, NULL),
(18, 'Diah Muharini', 'dyaahini', 'SHP', 'HANA COSMETIC, UD', NULL, NULL),
(19, 'Inur', 'inurinur', 'SHP', 'BAYER INDONESIA, PT', NULL, NULL),
(20, 'Inur', 'inurinur', 'SHP', 'AKTIF INDONESIA INDAH, PT', NULL, NULL),
(21, 'Inur', 'inurinur', 'SHP', 'MULTI ANEKA PANGAN NUSANTARA, PT', NULL, NULL),
(22, 'Inur', 'inurinur', 'SHP', 'TRANSGOLD, CV', NULL, NULL),
(23, 'Inur', 'inurinur', 'SHP', 'GOROM KENCANA, PT', NULL, NULL),
(24, 'Inur', 'inurinur', 'SHP', 'IKAN DORANG, PT', NULL, NULL),
(25, 'Inur', 'inurinur', 'SHP', 'LIMA BENUA KONEKSINDO', NULL, NULL),
(26, 'Kasiyanto', 'kasiyanto', 'SHP', 'ISHIZUKA MASPION INDONESIA, PT', NULL, NULL),
(27, 'Kasiyanto', 'kasiyanto', 'SHP', 'SUSANTI MEGAH, PT', NULL, NULL),
(28, 'Kasiyanto', 'kasiyanto', 'SHP', 'JISHUI MULIA ABADI, PT', NULL, NULL),
(29, 'Kasiyanto', 'kasiyanto', 'SHP', 'SS UTAMA SHOES DIVISION, PT', NULL, NULL),
(30, 'Kasiyanto', 'kasiyanto', 'SHP', 'KALEO PRIMA PERKASA, CV', NULL, NULL),
(31, 'Kasiyanto', 'kasiyanto', 'SHP', 'MAKMUR MARINA METALINDO, PT', NULL, NULL),
(32, 'Kasiyanto', 'kasiyanto', 'SHP', 'PAGODA PERKASA', NULL, NULL),
(33, 'Kasiyanto', 'kasiyanto', 'SHP', 'TUNAS JAYA SANTOSA, PT', NULL, NULL),
(34, 'Kasiyanto', 'kasiyanto', 'SHP', 'LIMAS ANUGRAH STEEL, PT', NULL, NULL),
(35, 'Kasiyanto', 'kasiyanto', 'SHP', 'GEMA LESTARI INDONESIA, PT', NULL, NULL),
(36, 'Kasiyanto', 'kasiyanto', 'SHP', 'SKYLINE JAYA, PT', NULL, NULL),
(37, 'Kasiyanto', 'kasiyanto', 'SHP', 'TRIAS ADATU CIPTA, PT', NULL, NULL),
(38, 'Kasiyanto', 'kasiyanto', 'SHP', 'GUNAWAN DIANJAYA STEEL TBK, PT', NULL, NULL),
(39, 'Lena', 'lenawati', 'SHP', 'GELORA DJAJA, PT', NULL, NULL),
(40, 'Lena', 'lenawati', 'SHP', 'HEPTASARI UNGGUL, PT', NULL, NULL),
(41, 'Lena', 'lenawati', 'SHP', 'PAKABAJA, PT', NULL, NULL),
(42, 'Lena', 'lenawati', 'SHP', 'PERURI WIRA TIMUR, PT', NULL, NULL),
(43, 'Mariatun', 'mariatun', 'SHP', 'GUNUNG SARI MAKMUR, PT', NULL, NULL),
(44, 'Mariatun', 'mariatun', 'SHP', 'MIRADO ABADI, PT', NULL, NULL),
(45, 'Mariatun', 'mariatun', 'SHP', 'REMAJA PRIMA ENGINEERING, PT', NULL, NULL),
(46, 'Mariatun', 'mariatun', 'SHP', 'DAMAI, CV', NULL, NULL),
(47, 'Nunik', 'nuniyuli', 'SHP', 'SINAR ALASKA MULIA PERKASA, PT', NULL, NULL),
(48, 'Nunik', 'nuniyuli', 'SHP', 'NISSO BAHARI, PT', NULL, NULL),
(49, 'Nunik', 'nuniyuli', 'SHP', 'KEDAWUNG SURYA IND LTD, PT', NULL, NULL),
(50, 'Nunik', 'nuniyuli', 'SHP', 'KEDAWUNG SUBUR, PT', NULL, NULL),
(51, 'Nunik', 'nuniyuli', 'SHP', 'METRO ABDIBINA SENTOSA, PT', NULL, NULL),
(52, 'Nunik', 'nuniyuli', 'SHP', 'CLASSIC PRIMA MARKET INDUSTRIES, PT', NULL, NULL),
(53, 'Siti Latifah', 'sitilatifah', 'SHP', 'SC JOHNSON MANUFACTURING SURABAYA', NULL, NULL),
(54, 'Siti Latifah', 'sitilatifah', 'SHP', 'VITAPHARM, PT', NULL, NULL),
(55, 'Siti Latifah', 'sitilatifah', 'SHP', 'SINAR ANGKASA RUNGKUT, PT', NULL, NULL),
(56, 'Siti Latifah', 'sitilatifah', 'SHP', 'SARANA INDAH JAYA, CV', NULL, NULL),
(57, 'Siti Latifah', 'sitilatifah', 'SHP', 'WINGS SURYA, PT', NULL, NULL),
(58, 'Siti Latifah', 'sitilatifah', 'SHP', 'DJATIM SURABAYA PERKASA, PT', NULL, NULL),
(59, 'Siti Latifah', 'sitilatifah', 'SHP', 'UTOMODECK METAL WORK, PT', NULL, NULL),
(60, 'Siti Latifah', 'sitilatifah', 'SHP', 'SMART CORPORATION, PT', NULL, NULL),
(61, 'Siti Latifah', 'sitilatifah', 'SHP', 'SURYA MULTI INDOPACK, PT', NULL, NULL),
(62, 'Siti Latifah', 'sitilatifah', 'SHP', 'MUTIARA CAHAYA PLATTINDO, PT', NULL, NULL),
(63, 'Soegiartatik', 'soegiartatik', 'SHP', 'METRONIK EKO PERTIWI, PT', NULL, NULL),
(64, 'Soegiartatik', 'soegiartatik', 'SHP', 'COLLEGE', NULL, NULL),
(65, 'Soegiartatik', 'soegiartatik', 'SHP', 'PREMIUM PARFUM INDONESIA, PT', NULL, NULL),
(66, 'Soegiartatik', 'soegiartatik', 'SHP', 'KAROSERI NGAGEL TAMA', NULL, NULL),
(67, 'Soesilo', 'soesilo', 'SHP', 'MAJU, UD', NULL, NULL),
(68, 'Soesilo', 'soesilo', 'SHP', 'PROFIL 88, CV', NULL, NULL),
(69, 'Soesilo', 'soesilo', 'SHP', 'KENT POWER DINAMIKA INDONESIA, PT', NULL, NULL),
(70, 'Soesilo', 'soesilo', 'SHP', 'BOGASARI, PT', NULL, NULL),
(71, 'Soesilo', 'soesilo', 'SHP', 'MITRA CAHAYA ABADI METALINDO PT.', NULL, NULL),
(72, 'Soesilo', 'soesilo', 'SHP', 'WELCO, PT', NULL, NULL),
(73, 'Soesilo', 'soesilo', 'SHP', 'ANDALAN BANGUN BUANA, PT', NULL, NULL),
(74, 'Soesilo', 'soesilo', 'SHP', 'KONVEKSI AYZAH', NULL, NULL),
(75, 'Soesilo', 'soesilo', 'SHP', 'SIGARET SRIWIDJAYA, PT', NULL, NULL),
(76, 'Soesilo', 'soesilo', 'SHP', 'SAMODRA MAS, CV', NULL, NULL),
(77, 'Soesilo', 'soesilo', 'SHP', 'MAKMUR, UD', NULL, NULL),
(78, 'Soesilo', 'soesilo', 'SHP', 'BOOMAX CHEMICAL WORK, PT', NULL, NULL),
(79, 'Soesilo', 'soesilo', 'SHP', 'KASA HUSADA WIRA JATIM, PT', NULL, NULL),
(80, 'Soesilo', 'soesilo', 'SHP', 'BEN SANTOSA, PT', NULL, NULL),
(81, 'Soesilo', 'soesilo', 'SHP', 'SAHATI HARAPAN TANGGUH, PT', NULL, NULL),
(82, 'Soesilo', 'soesilo', 'SHP', 'REMPEYEK TIYAH', NULL, NULL),
(83, 'Soesilo', 'soesilo', 'SHP', 'KONVEKSI SUMARNI', NULL, NULL),
(84, 'Soesilo', 'soesilo', 'SHP', 'ENAM JAYA OFFSET', NULL, NULL),
(85, 'Soesilo', 'soesilo', 'SHP', 'BAKWAN GILI', NULL, NULL),
(86, 'Soesilo', 'soesilo', 'SHP', 'BAK SAMPAH HASUN', NULL, NULL),
(87, 'Soesilo', 'soesilo', 'SHP', 'KACANG EMA', NULL, NULL),
(88, 'Soesilo', 'soesilo', 'SHP', 'PAGAR YOYOK', NULL, NULL),
(89, 'Soesilo', 'soesilo', 'SHP', 'KUSEN PINTU NAWAWI', NULL, NULL),
(90, 'Suprihatin', 'suphatin', 'SHP', 'SOLIHIN JAYA INDUSTRI', NULL, NULL),
(91, 'Suyono', 'suyono', 'SHP', 'CAMPINA, PT', NULL, NULL),
(92, 'Suyono', 'suyono', 'SHP', 'CENTRAL DIESEL, PT', NULL, NULL),
(93, 'Suyono', 'suyono', 'SHP', 'NYATA CORP, PT', NULL, NULL),
(94, 'Suyono', 'suyono', 'SHP', 'MENJANGAN, CV', NULL, NULL),
(95, 'Tatik', 'tattiati', 'SHP', 'MORODADI', NULL, NULL),
(96, 'Tatik', 'tattiati', 'SHP', 'SOFTNESS INDONESIA INDAH', NULL, NULL),
(97, 'Tatik', 'tattiati', 'SHP', 'GARUDA TOP PLASINDO. PT', NULL, NULL),
(98, 'Tatik', 'tattiati', 'SHP', 'RUNGKUT CAHAYA INDUSTRI', NULL, NULL),
(99, 'Tatik', 'tattiati', 'SHP', 'CATUR PUTRA SURYA, PT', NULL, NULL),
(100, 'Tatik', 'tattiati', 'SHP', 'IMEX TAMA, CV', NULL, NULL),
(101, 'Tatik', 'tattiati', 'SHP', 'SUMATRACO LANGGENG MAKMUR, PT', NULL, NULL),
(102, 'Tatik', 'tattiati', 'SHP', 'VARIA', NULL, NULL),
(103, 'Tatik', 'tattiati', 'SHP', 'KARYA BARU', NULL, NULL),
(104, 'Tatik', 'tattiati', 'SHP', 'ALMICOS PRATAMA', NULL, NULL),
(105, 'Tatik', 'tattiati', 'SHP', 'WISMA JAYA', NULL, NULL),
(106, 'Tatik', 'tattiati', 'SHP', 'INDONESIA MULTI COLOUR PRINTING, PT', NULL, NULL),
(107, 'Tatik', 'tattiati', 'SHP', 'ARJUNA UTAMA KIMIA, PT', NULL, NULL),
(108, 'Tatik', 'tattiati', 'SHP', 'KEN JAYA GARMEN, UD', NULL, NULL),
(109, 'Tatik', 'tattiati', 'SHP', 'CAHAYA ARGO TEKNIK', NULL, NULL),
(110, 'Tatik', 'tattiati', 'SHP', 'MATAHARI ANEKA JAYA', NULL, NULL),
(111, 'Tatik', 'tattiati', 'SHP', 'NIKI MAPAN', NULL, NULL),
(112, 'Tatik', 'tattiati', 'SHP', 'TAHU GO HANG BUN', NULL, NULL),
(113, 'Tatik', 'tattiati', 'SHP', 'DUTA SARANA PRATAMA, CV', NULL, NULL),
(114, 'Tatik', 'tattiati', 'SHP', 'UNTUNG BERSAMA SEJAHTERA, PT', NULL, NULL),
(115, 'Tatik', 'tattiati', 'SHP', 'CELLENE SHOES', NULL, NULL),
(116, 'Yusron', 'yusron', 'SHP', 'TRI INDAH JAYA', NULL, NULL),
(117, 'Yusron', 'yusron', 'SHP', 'DIMAS REIZA PERWIRA, PT', NULL, NULL),
(118, 'Yusron', 'yusron', 'SHP', 'BANGUN, UD', NULL, NULL),
(119, 'Yusron', 'yusron', 'SHP', 'TIGA RASA INDONESIA, PT', NULL, NULL),
(120, 'Yusron', 'yusron', 'SHP', 'LINTECH FUJIKEN ENGINEERING, PT', NULL, NULL),
(121, 'Yusron', 'yusron', 'SHP', 'GOOD YEAR, CV', NULL, NULL),
(122, 'Yusron', 'yusron', 'SHP', 'WARU GUNUNG, PT', NULL, NULL),
(123, 'Yusron', 'yusron', 'SHP', 'SIDOMUNCUL/PORNOMO SARI PLASTIK, UD', NULL, NULL),
(124, 'Yusron', 'yusron', 'SHP', 'ASIA PLASTIK, CV', NULL, NULL),
(125, 'Yusron', 'yusron', 'SHP', 'SUPARMA TBK, PT', NULL, NULL),
(126, 'Yusron', 'yusron', 'SHP', 'SUKSES MITRA SEJAHTERA, PT', NULL, NULL),
(127, 'Yusron', 'yusron', 'SHP', 'KARUNIA ALAM SEGAR, PT', NULL, NULL),
(128, 'Yusron', 'yusron', 'SHP', 'WONOSARI JAYA, PT', NULL, NULL),
(129, 'Djumain', 'djudjuma', 'SHPB', 'Bintang sakti', NULL, NULL),
(130, 'Djumain', 'djudjuma', 'SHPB', 'ASTELIA CELL', NULL, NULL),
(131, 'Djumain', 'djudjuma', 'SHPB', 'AKHOIRI', NULL, NULL),
(132, 'Djumain', 'djudjuma', 'SHPB', 'ASTA PARAWISINDA SENTAUSA, PT', NULL, NULL),
(133, 'Djumain', 'djudjuma', 'SHPB', 'ALPHA UTAMA MANDIRI', NULL, NULL),
(134, 'Eva Riana Dewi', 'evariewi', 'SHPB', 'PT ANTAR SURYA', NULL, NULL),
(135, 'Eva Riana Dewi', 'evariewi', 'SHPB', 'INDO KIMIA', NULL, NULL),
(136, 'Eva Riana Dewi', 'evariewi', 'SHPB', 'PT SURYA POLY PLAS', NULL, NULL),
(137, 'Eva Riana Dewi', 'evariewi', 'SHPB', 'CV KARUNIA', NULL, NULL),
(138, 'Eva Riana Dewi', 'evariewi', 'SHPB', 'PRIMA UNTUNG BERSAMA, PT', NULL, NULL),
(139, 'Fajar Z.', 'fajfari', 'SHPB', 'PT. MEGAH MEDIKA PHARMA', NULL, NULL),
(140, 'Fajar Z.', 'fajfari', 'SHPB', 'PT. KARUNIA DINAMIKA CEMERLANG', NULL, NULL),
(141, 'Fajar Z.', 'fajfari', 'SHPB', 'DELPHIA PRIMA JAYA, PT', NULL, NULL),
(142, 'Fajar Z.', 'fajfari', 'SHPB', 'SAI INDONESIA, PT', NULL, NULL),
(143, 'Inur', 'inurinur', 'SHPB', 'MULTI SARANA COMPUTER, PT', NULL, NULL),
(144, 'Inur', 'inurinur', 'SHPB', 'NEW RUKUN JAYA TEXTIL', NULL, NULL),
(145, 'Inur', 'inurinur', 'SHPB', 'UHATA CITRA INDO PRIMA, CV', NULL, NULL),
(146, 'Karim', 'abdkarim', 'SHPB', 'PT. KAIROS LOGAM MAKMUR', NULL, NULL),
(147, 'Karim', 'abdkarim', 'SHPB', 'Memorandum Sejahtera', NULL, NULL),
(148, 'Karim', 'abdkarim', 'SHPB', 'BHISMA SAKTI JAYA, PT', NULL, NULL),
(149, 'Karim', 'abdkarim', 'SHPB', 'JAYA MAKMUR GROSIR', NULL, NULL),
(150, 'Karim', 'abdkarim', 'SHPB', 'RICKY JAYA SAKTI, PT', NULL, NULL),
(151, 'Karim', 'abdkarim', 'SHPB', 'SUMBER INTI KIMIA', NULL, NULL),
(158, 'Karim', 'abdkarim', 'SHPB', 'UD SURYA TERANG SANTOSA', NULL, NULL),
(159, 'Karim', 'abdkarim', 'SHPB', 'TOKO BANGUNAN MEGA', NULL, NULL),
(160, 'Lena', 'lenawati', 'SHPB', 'ANUGRAH INDAH ABADI, CV', NULL, NULL),
(161, 'Lena', 'lenawati', 'SHPB', 'CAHAYA FAJAR, PT', NULL, NULL),
(162, 'Lena', 'lenawati', 'SHPB', 'DUNIA BAN', NULL, NULL),
(163, 'Lena', 'lenawati', 'SHPB', 'DEPO BANGUNAN (NUSANTARA BUIL', NULL, NULL),
(164, 'Lena', 'lenawati', 'SHPB', 'ECS INDO JAYA', NULL, NULL),
(165, 'MARIATUN', 'mariatun', 'SHPJ', 'HOKA-HOKA BENTO', NULL, NULL),
(166, 'MARIATUN', 'mariatun', 'SHPJ', 'UNIVERSITAS NAHDATUL ULAMA', NULL, NULL),
(167, 'MARIATUN', 'mariatun', 'SHPJ', 'PIZZA HUT MULYOSARI', NULL, NULL),
(168, 'MARIATUN', 'mariatun', 'SHPJ', 'AW', NULL, NULL),
(169, '169MARIATUN', 'mariatun', 'SHPJ', 'RSUD DR. M. SOEWANDHIE', NULL, NULL),
(170, 'MARIATUN', 'mariatun', 'SHPJ', 'PERUSAHAAN GAS NEGARA', NULL, NULL),
(171, 'MARIATUN', 'mariatun', 'SHPJ', 'PDAM SURYA SEMBADA', NULL, NULL),
(172, 'Mariatun', 'mariatun', 'SHPB', 'UD Karunia jaya', NULL, NULL),
(173, 'Mariatun', 'mariatun', 'SHPB', 'Toko Thomas', NULL, NULL),
(174, 'Mariatun', 'mariatun', 'SHPB', 'Penjual Daging ayam Hj. Noor', NULL, NULL),
(175, 'Mariatun', 'mariatun', 'SHPB', 'Dewa Ruci, ud', NULL, NULL),
(176, 'Mariatun', 'mariatun', 'SHPB', 'AJBS HOME CENTER', NULL, NULL),
(177, 'Mariatun', 'mariatun', 'SHPB', 'MPM DISTRIBUTOR', NULL, NULL),
(178, 'Mariatun', 'mariatun', 'SHPB', 'PEDAGANG MBAK NUR', NULL, NULL),
(179, 'Mariatun', 'mariatun', 'SHPB', 'UD PIRAMIDA', NULL, NULL),
(180, 'Mariatun', 'mariatun', 'SHPB', 'TOKO ANUGRAH JAYA', NULL, NULL),
(181, 'Mariatun', 'mariatun', 'SHPB', 'CV MULYA ABADI', NULL, NULL),
(182, 'PUTRA', 'rizkyp', 'SHPJ', 'UD. DINOYO BARU BERSATU', NULL, NULL),
(183, 'PUTRA', 'rizkyp', 'SHPJ', 'SARI AMPENAN, PT', NULL, NULL),
(184, 'PUTRA', 'rizkyp', 'SHPJ', 'SARANA BANDAR LOGISTIK, PT', NULL, NULL),
(185, 'PUTRA', 'rizkyp', 'SHPJ', 'ASDP INDONESIA FERRY', NULL, NULL),
(186, 'PUTRA', 'rizkyp', 'SHPJ', 'PELNI CABANG SURABAYA', NULL, NULL),
(187, 'Ratnawati', 'ratwati', 'SHPB', 'Restu kita', NULL, NULL),
(188, 'Ratnawati', 'ratwati', 'SHPB', 'ROTI RAMAYANA PT', NULL, NULL),
(189, 'Ratnawati', 'ratwati', 'SHPB', 'SUMBER MURNI, UD', NULL, NULL),
(190, 'Ratnawati', 'ratwati', 'SHPB', 'TITANI ALAM SEMESTA, PT', NULL, NULL),
(191, 'Ratnawati', 'ratwati', 'SHPB', 'WIMCYCLE (GUNAWAN SUTEDJA)', NULL, NULL),
(192, 'Ratnawati', 'ratwati', 'SHPB', 'TOKO KACA HASIL KARYA', NULL, NULL),
(193, 'Ratnawati', 'ratwati', 'SHPB', 'TOKO KAYU LOKA KARYA', NULL, NULL),
(194, 'Ratnawati', 'ratwati', 'SHPB', 'LIBRA MOTOR (ROJI)', NULL, NULL),
(195, 'Ratnawati', 'ratwati', 'SHPB', 'UD WONOSARI', NULL, NULL),
(196, 'SITI LATIFAH', 'sitilatifah', 'SHPJ', 'MCD RUNGKUT MADYA', NULL, NULL),
(197, 'SITI LATIFAH', 'sitilatifah', 'SHPJ', 'AYAM BAKAR PAK D', NULL, NULL),
(198, 'SITI LATIFAH', 'sitilatifah', 'SHPJ', 'SD IPH', NULL, NULL),
(199, 'SITI LATIFAH', 'sitilatifah', 'SHPJ', 'STIE ABI', NULL, NULL),
(200, 'SOESILO', 'soesilo', 'SHPJ', 'GERBANG SAMUDERA SARANA, PT', NULL, NULL),
(201, 'SOESILO', 'soesilo', 'SHPJ', 'SETIA PALENGGU, PT', NULL, NULL),
(202, 'SOESILO', 'soesilo', 'SHPJ', 'BAHTERA ADHI GUNA, PT', NULL, NULL),
(203, 'SOESILO', 'soesilo', 'SHPJ', 'HARTINI, PT', NULL, NULL),
(204, 'SOESILO', 'soesilo', 'SHPJ', 'META LYON NUSANTARA, CV', NULL, NULL),
(205, 'SOESILO', 'soesilo', 'SHPJ', 'KUNCI INTI TRANSINDO', NULL, NULL),
(206, 'SOESILO', 'soesilo', 'SHPJ', 'SURYA BINTANG TIMUR, PT', NULL, NULL),
(207, 'SOESILO', 'soesilo', 'SHPJ', 'PO PUSPA SARI', NULL, NULL),
(208, 'Soesilo', 'soesilo', 'SHPB', 'Jangkar, cv', NULL, NULL),
(209, 'Soesilo', 'soesilo', 'SHPB', 'AJBS STENERS', NULL, NULL),
(210, 'Soesilo', 'soesilo', 'SHPB', 'MEGA ELTRA,PT', NULL, NULL),
(211, 'Soesilo', 'soesilo', 'SHPB', 'MAYA MUNCAR, PT', NULL, NULL),
(212, 'Soesilo', 'soesilo', 'SHPB', 'PENJUAL IKAN PAK H. SHOLEH', NULL, NULL),
(213, 'Soesilo', 'soesilo', 'SHPB', 'R P H', NULL, NULL),
(214, 'Soesilo', 'soesilo', 'SHPB', 'SITI', NULL, NULL),
(215, 'Soesilo', 'soesilo', 'SHPB', 'TOKO BERDIKARI', NULL, NULL),
(216, 'Soesilo', 'soesilo', 'SHPB', 'MEGAH PERTAMA INDAH, PT (TOKO', NULL, NULL),
(217, 'Soesilo', 'soesilo', 'SHPB', 'TIMUR RAYA SURYA UTAMA, PT', NULL, NULL),
(218, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'SINAR JAYA ABADI', NULL, NULL),
(219, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'Toko Cahaya BARU', NULL, NULL),
(220, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'Toko Delima', NULL, NULL),
(221, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'PENJUAL PINDANG H.SANIRI', NULL, NULL),
(222, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'CV AGUNG', NULL, NULL),
(223, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'PT UNITED TRACTOR', NULL, NULL),
(224, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'BINA PERTIWI, PT', NULL, NULL),
(225, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'CATUR, PT', NULL, NULL),
(226, 'TATIK SUPRIYATI', 'tattiati', 'SHPB', 'KARYA WARNA INDONESIA, PT', NULL, NULL),
(227, 'TATIK SUPRIYATI', 'tattiati', 'SHPJ', 'SD BAHRUL ULUM', NULL, NULL),
(228, 'TATIK SUPRIYATI', 'tattiati', 'SHPJ', 'SMP PANCA JAYA', NULL, NULL),
(229, 'TATIK SUPRIYATI', 'tattiati', 'SHPJ', 'RUMAH SAKIT MUJI RAHAYU', NULL, NULL),
(230, 'TATIK SUPRIYATI', 'tattiati', 'SHPJ', 'PRAKTEK DOKTER ISKANDAR', NULL, NULL),
(231, 'ARISTIYANTI', 'aranti', 'E-Commerce Listing', 'TANDES - MANUKAN KULON - 118B', NULL, NULL),
(232, 'ARISTIYANTI', 'aranti', 'E-Commerce Listing', 'SAWAHAN - PETEMON - 063B', NULL, NULL),
(233, 'ARISTIYANTI', 'aranti', 'E-Commerce Listing', 'KREMBANGAN - MOROKREMBANGAN - 146B', NULL, NULL),
(234, 'DIAN KURNIA', 'dianrahmawati93', 'E-Commerce Listing', 'GAYUNGAN - MENANGGAL - 013B', NULL, NULL),
(235, 'DIAN KURNIA', 'dianrahmawati93', 'E-Commerce Listing', 'TENGGILIS MEJOYO - TENGGILIS MEJOYO - 042B', NULL, NULL),
(236, 'DIAN KURNIA', 'dianrahmawati93', 'E-Commerce Listing', 'RUNGKUT - KALI RUNGKUT - 102B', NULL, NULL),
(237, 'LIKAH SARI', 'ikahsari', 'E-Commerce Listing', 'JAMBANGAN - KARAH - 007B', NULL, NULL),
(238, 'LIKAH SARI', 'ikahsari', 'E-Commerce Listing', 'WIYUNG - BALAS KLUMPRIK - 004B', NULL, NULL),
(239, 'LIKAH SARI', 'ikahsari', 'E-Commerce Listing', 'SAMBIKEREP - BRINGIN - 011B', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbaru`
--

CREATE TABLE `tbaru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `namapetugas` varchar(255) NOT NULL,
  `nama_survei` varchar(255) NOT NULL,
  `idresponden` varchar(255) NOT NULL,
  `waktu_unique` datetime NOT NULL,
  `waktu_kirim` time NOT NULL,
  `Coordinates` varchar(255) NOT NULL,
  `delete` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tbaru`
--

INSERT INTO `tbaru` (`id`, `namapetugas`, `nama_survei`, `idresponden`, `waktu_unique`, `waktu_kirim`, `Coordinates`, `delete`, `created_at`, `updated_at`) VALUES
(1, 'aidaila', 'HK 5', 'h. machmud', '2024-10-28 17:59:39', '10:13:30', '-7.28786,112.76383', 0, NULL, NULL),
(2, 'tatwaning', 'HK 4', 'andri yulianto', '2024-10-28 17:59:29', '10:13:48', '-7.2344,112.77617', 0, NULL, NULL),
(3, 'tatwaning', 'HK 4', 'andri yulianto', '2024-10-28 17:19:39', '10:13:49', '-7.2344,112.77616', 0, NULL, NULL),
(4, 'widyap', 'SUSENAS', 'djamal', '2024-10-11 12:59:19', '10:14:00', '-7.3271,112.7056', 0, NULL, NULL),
(5, 'eswanto', 'HK 2.2', 'Yanti kosmetik/Usaha Mandiri ', '2024-10-12 11:59:39', '10:14:12', '-7.30302,112.73758', 0, NULL, NULL),
(6, 'widyap', 'SUSENAS', 'djamal', '2024-10-13 17:59:39', '10:14:00', '-7.3271,112.7056', 0, NULL, NULL),
(7, 'sitilatifah', 'SHP', 'sinar angkasa rungkut,pt', '2024-08-28 17:59:39', '10:15:33', '-7.32687,112.75412', 0, NULL, NULL),
(8, 'sulrini', 'HK 1.2', 'hypermart royal', '2024-10-28 16:51:39', '10:15:15', '-7.30921,112.73434', 0, NULL, NULL),
(9, 'aidaila', 'HK 5', 'h. machmud', '2024-10-28 17:59:09', '10:15:30', '-7.28776,112.76384', 0, NULL, NULL),
(10, 'tatwaning', 'HK 4', 'andri yulianto', '2024-10-18 17:59:39', '10:15:48', '-7.2344,112.77623', 0, NULL, NULL),
(11, 'tatwaning', 'HK 4', 'andri yulianto', '2024-10-08 17:59:39', '10:15:49', '-7.2344,112.77623', 0, NULL, NULL),
(12, 'eswanto', 'HK 2.2', 'Usaha Mandiri', '2024-10-25 17:59:39', '10:15:44', '-7.30278,112.7376', 0, NULL, NULL),
(13, 'widyap', 'SUSENAS', 'djamal', '2024-10-24 17:59:39', '10:16:00', '-7.3271,112.7056', 0, NULL, NULL),
(14, 'widyap', 'SUSENAS', 'djamal', '2024-10-23 17:59:39', '10:17:00', '-7.3271,112.7056', 0, NULL, NULL),
(15, 'sitilatifah', 'SHP', 'sinar angkasa rungkut,pt', '2024-10-22 17:59:39', '10:17:33', '-7.32687,112.75412', 0, NULL, NULL),
(16, 'sulrini', 'HK 1.2', 'hypermart royal', '2024-10-21 17:59:39', '10:17:16', '-7.30925,112.73437', 0, NULL, NULL),
(17, 'sulrini', 'HK 1.2', 'hypermart royal', '2024-10-20 17:59:39', '10:17:16', '-7.30925,112.73437', 0, NULL, NULL),
(18, 'tatwaning', 'HK 4', 'andri yulianto', '2024-10-19 17:59:39', '10:17:49', '-7.23448,112.77614', 0, NULL, NULL),
(19, 'eswanto', 'HK 2.2', 'Usaha Mandiri', '2024-10-15 17:59:39', '10:17:44', '-7.30269,112.73766', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tracking`
--

CREATE TABLE `tracking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Timestamp` datetime NOT NULL,
  `Username_Surveyor` varchar(255) NOT NULL,
  `Waktu_Unique` datetime NOT NULL,
  `Nama_Survei` varchar(255) NOT NULL,
  `Nama_Responden` varchar(255) NOT NULL,
  `Timestamp_Tracking` datetime NOT NULL,
  `Coordinates` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tracking`
--

INSERT INTO `tracking` (`id`, `Timestamp`, `Username_Surveyor`, `Waktu_Unique`, `Nama_Survei`, `Nama_Responden`, `Timestamp_Tracking`, `Coordinates`, `created_at`, `updated_at`) VALUES
(1, '2024-10-28 18:44:11', 'abdkarim', '2024-10-29 01:44:11', 'TESTER', 'A', '2024-10-29 01:44:11', '-7.32876,112.72831', NULL, NULL),
(2, '2024-10-28 18:45:48', 'abdkarim', '2024-10-28 01:44:12', 'TESTER', 'A', '2024-10-29 01:45:48', '-7.3287,112.72824', NULL, NULL),
(3, '2024-10-28 18:46:48', 'abdkarim', '2024-10-27 01:46:48', 'TESTER', 'A', '2024-10-29 01:46:48', '-7.32877,112.72831', NULL, NULL),
(4, '2024-10-28 18:47:48', 'abdkarim', '2024-10-26 01:47:48', 'TESTER', 'A', '2024-10-29 01:47:48', '-7.32876,112.72831', NULL, NULL),
(5, '2024-10-28 18:48:48', 'abdkarim', '2024-10-25 01:48:48', 'TESTER', 'A', '2024-10-29 01:48:48', '-7.32873,112.72831', NULL, NULL),
(6, '2024-10-28 18:49:48', 'abdkarim', '2024-10-24 01:49:48', 'TESTER', 'A', '2024-10-29 01:49:48', '-7.32869,112.72835', NULL, NULL),
(7, '2024-09-08 20:08:55', 'biljono', '2024-10-23 01:49:48', 'TESTER', 'tester', '2024-09-09 03:08:55', '-7.32877,112.72827', NULL, NULL),
(8, '2024-09-08 20:10:55', 'biljono', '2024-09-09 03:10:55', 'TESTER', 'tester', '2024-09-09 03:10:55', '-7.32878,112.72828', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sifulan', 'sifulan@gmail.com', NULL, '$2y$10$rIzgTcXtuf4HXf4uE1F2Ou0yAj3iuIVCPdVsWIXQrlBanxJl18P9u', NULL, NULL, NULL, '2024-10-30 18:46:19', '2024-10-30 18:46:19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `isian`
--
ALTER TABLE `isian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengawasan`
--
ALTER TABLE `pengawasan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengawasan1`
--
ALTER TABLE `pengawasan1`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sampel2024`
--
ALTER TABLE `sampel2024`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbaru`
--
ALTER TABLE `tbaru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbaru_waktu_unique_unique` (`waktu_unique`);

--
-- Indeks untuk tabel `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracking_waktu_unique_unique` (`Waktu_Unique`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `isian`
--
ALTER TABLE `isian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pengawasan`
--
ALTER TABLE `pengawasan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pengawasan1`
--
ALTER TABLE `pengawasan1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `sampel2024`
--
ALTER TABLE `sampel2024`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT untuk tabel `tbaru`
--
ALTER TABLE `tbaru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
