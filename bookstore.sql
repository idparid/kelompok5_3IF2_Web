-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2019 at 02:14 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `jumlah_halaman` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `judul`, `kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `stok`, `deskripsi`, `jumlah_halaman`, `harga`, `createdAt`, `updatedAt`) VALUES
(1, 'Belajar Jaringan', 'komputer', 'jhon', 'tempat buku', 2015, 5, 'Belajar Jaringan adalah', 234, 300000, '2019-07-19 00:00:00', '2019-07-18 23:21:07'),
(2, 'Belajar Jaringan', 'komputer', 'Jhon', 'Gramedia', 2015, 5, 'Belajar Jaringan adalah', 234, 300000, '2019-07-18 16:18:35', '2019-07-18 23:19:03'),
(3, 'The Scientist', 'science', 'doe', 'gramed', 2001, 3, 'Buku Science', 340, 125000, '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(4, 'Belajar laravel', 'komputer', 'jhon', 'gramedia', 2015, 10, 'Belajar Web adalah', 234, 200000, '2019-07-18 16:28:25', '2019-07-18 16:28:25'),
(5, 'A Brief History of Time', 'komputer', 'stephen', 'gramedia', 2015, 2, 'Buku science', 234, 250000, '2019-07-18 17:21:11', '2019-07-18 17:21:11'),
(6, 'Dimensi', 'biography', 'Hawking', 'Gramedia', 2015, 2, 'Buku biografi', 234, 250000, '2019-07-19 11:30:12', '2019-07-19 11:30:12'),
(8, 'DNA', 'science', 'albert', 'gramed', 2003, 2, 'ini adalah buku science', 340, 60000, '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(9, 'Dokumenter', 'biography', 'doe', 'gramed', 1999, 5, 'buku bagus', 233, 55000, '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(10, 'majalah bobo', 'magazine', 'bobo', 'gramed', 2009, 20, 'Majalah remaja dulu', 20, 20000, '2019-07-19 00:00:00', '2019-07-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `bookId` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bookId`, `qty`, `createdAt`, `updatedAt`) VALUES
(1, 2, 2, '2019-07-19 10:43:22', '2019-07-19 10:43:22'),
(2, 2, 4, '2019-07-19 00:00:00', '2019-07-19 00:00:00'),
(3, 3, 5, '2019-07-19 00:00:00', '2019-07-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `roles`, `createdAt`, `updatedAt`) VALUES
(1, 'adminkelompok5', 'adminkelompok5@gmail.com', '$2a$10$YavBCjoGVQjSKYL3C09s5O9USgM5J1CesoOYPjXIUq2Xnc/lP3JgC', 'admin', '2019-07-19 10:56:24', '2019-07-19 10:56:24'),
(2, 'userkelompok5', 'userkelompok5@gmail.com', '$2a$10$R.yw9W7Jy3Wdo34wU4XW4eIq.qYBYhcZlzFTI/Nve9WDFVR0lNYmq', 'user', '2019-07-19 10:56:42', '2019-07-19 10:56:42'),
(3, 'admin', 'admin@gmail.com', '$2a$10$48WgyvEj2p.dNBGuDtlQoOtv4Qyl2Ns194BCUeKeO5rj3kz3V8KmS', 'admin', '2019-07-19 11:29:14', '2019-07-19 11:29:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
