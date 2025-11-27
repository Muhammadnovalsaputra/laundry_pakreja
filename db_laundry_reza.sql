-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Nov 2025 pada 09.35
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
-- Database: `db_laundry_reza`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Reza Ibrahim', '0795617757730', 'Bekasi', '2025-11-27 02:20:19', NULL),
(2, 'Wahyu', '08993219087', 'Bekasi', '2025-11-27 02:20:19', NULL),
(3, 'Laras', '081807793051', 'Bekasi', '2025-11-27 02:21:03', NULL),
(4, 'Udin', '08771991002', 'Bandung', '2025-11-27 02:21:03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2025-11-25 01:59:07', NULL),
(2, 'Administrator', '2025-11-25 01:59:11', NULL),
(3, 'Operator', '2025-11-25 01:59:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `level_menus`
--

CREATE TABLE `level_menus` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `level_menus`
--

INSERT INTO `level_menus` (`id`, `level_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(33, 3, 8, '2025-11-26 06:52:19', NULL),
(34, 3, 7, '2025-11-26 06:52:19', NULL),
(35, 3, 6, '2025-11-26 06:52:19', NULL),
(43, 2, 8, '2025-11-26 07:44:31', NULL),
(44, 2, 7, '2025-11-26 07:44:31', NULL),
(45, 2, 6, '2025-11-26 07:44:31', NULL),
(46, 2, 5, '2025-11-26 07:44:31', NULL),
(47, 2, 4, '2025-11-26 07:44:31', NULL),
(48, 2, 3, '2025-11-26 07:44:31', NULL),
(49, 2, 2, '2025-11-26 07:44:31', NULL),
(50, 2, 1, '2025-11-26 07:44:31', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `link` varchar(30) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `name`, `icon`, `link`, `order`, `created_at`, `updated_at`) VALUES
(1, 'User', 'bi bi-person', 'user', 6, '2025-11-25 01:47:16', '2025-11-25 07:40:45'),
(2, 'Menu', 'bi bi-menu-button-wide', 'menu', 4, '2025-11-25 01:48:11', '2025-11-25 07:40:40'),
(3, 'Service', 'bi bi-book', 'service', 3, '2025-11-25 02:31:18', '2025-11-25 07:40:36'),
(4, 'Customer', 'bi bi-people', 'customer', 2, '2025-11-25 03:47:25', '2025-11-25 07:40:30'),
(5, 'Level', 'bi bi-person-check', 'level', 5, '2025-11-25 03:47:55', '2025-11-25 07:40:25'),
(6, 'Dashboard', 'bi bi-speedometer', 'dashboard', 1, '2025-11-25 05:01:37', '2025-11-25 07:38:28'),
(7, 'Tax', 'bi bi-percent', 'tax', 7, '2025-11-26 01:35:53', NULL),
(8, 'Order', 'bi bi-table', 'order', 8, '2025-11-26 06:51:46', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Cuma Cuci', 10000, '', '2025-11-27 03:05:12', '2025-11-27 03:41:10'),
(2, 'Cuma Gosok', 5000, '', '2025-11-27 03:06:54', NULL),
(3, 'Cuci dan Gosok', 7000, '', '2025-11-27 03:06:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `taxs`
--

CREATE TABLE `taxs` (
  `id` int(11) NOT NULL,
  `percent` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `taxs`
--

INSERT INTO `taxs` (`id`, `percent`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 10, 1, '2025-11-26 03:02:54', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_orders`
--

CREATE TABLE `trans_orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_code` varchar(20) NOT NULL,
  `order_end_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0,
  `order_pay` int(11) NOT NULL,
  `order_change` int(11) NOT NULL,
  `order_tax` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `trans_orders`
--

INSERT INTO `trans_orders` (`id`, `customer_id`, `order_code`, `order_end_date`, `order_status`, `order_pay`, `order_change`, `order_tax`, `order_total`, `created_at`, `updated_at`) VALUES
(3, 0, 'ORD-2711250001', '2025-11-27', 1, 0, 0, 5000, 15000, '2025-11-27 07:58:25', NULL),
(4, 0, 'ORD-2711250004', '2025-11-27', 1, 0, 0, 5000, 15000, '2025-11-27 07:59:20', NULL),
(5, 0, 'ORD-2711250005', '0000-00-00', 1, 0, 0, 5000, 15000, '2025-11-27 08:04:11', NULL),
(6, 0, 'ORD-2711250006', '0000-00-00', 1, 0, 0, 5000, 15000, '2025-11-27 08:04:29', NULL),
(7, 0, '', '0000-00-00', 1, 0, 0, 0, 0, '2025-11-27 08:04:38', NULL),
(8, 0, '', '0000-00-00', 1, 0, 0, 0, 0, '2025-11-27 08:18:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trans_order_details`
--

CREATE TABLE `trans_order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `trans_order_details`
--

INSERT INTO `trans_order_details` (`id`, `order_id`, `service_id`, `qty`, `price`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 5000, 5000, '2025-11-27 07:47:29', NULL),
(2, 2, 1, 1, 10000, 10000, '2025-11-27 07:47:53', NULL),
(3, 3, 1, 1, 10000, 10000, '2025-11-27 07:58:25', NULL),
(4, 4, 1, 1, 10000, 10000, '2025-11-27 07:59:20', NULL),
(5, 5, 1, 1, 10000, 10000, '2025-11-27 08:04:11', NULL),
(6, 6, 1, 1, 10000, 10000, '2025-11-27 08:04:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `level_id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 2, 'Admin', 'admin@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2025-11-24 02:57:20', '2025-11-25 04:48:42'),
(2, 3, 'Bambang Pamungkas', 'bambang@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', '2025-11-25 06:40:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `level_menus`
--
ALTER TABLE `level_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `taxs`
--
ALTER TABLE `taxs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trans_orders`
--
ALTER TABLE `trans_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trans_order_details`
--
ALTER TABLE `trans_order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `level_menus`
--
ALTER TABLE `level_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `taxs`
--
ALTER TABLE `taxs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `trans_orders`
--
ALTER TABLE `trans_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `trans_order_details`
--
ALTER TABLE `trans_order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
