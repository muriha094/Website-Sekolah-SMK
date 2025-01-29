-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 05:41 AM
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
-- Database: `db_smk`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `nip`, `nama`, `alamat`, `telpon`, `agama`, `foto`) VALUES
(1, '199013102012101001', 'Rudi Habibie, S.Si', 'Sidoarjo', '082564328711', 'Islam', '209-Guru_1.jpeg'),
(2, '199013102012101002', 'Putri Amanda, S.Si', 'Boyolali', '082564328712', 'Kristen', '91-Guru_2.jpeg'),
(3, '199013102012101003', 'Reza Mahardika, S.Si ', 'Klaten', '082564328712', 'Islam', '862-Guru_3.jpeg'),
(4, '199013102012101004', 'Almira Putri, S.Kom ', 'Solo', '082564328714', 'Katholik', '843-Guru_4.jpeg'),
(5, '199013102012101005', 'Armand Kurniawan, S.Kom', 'Karanganyar', '082564328715', 'Islam', '644-Guru_5.jpeg'),
(6, '199013102012101006', 'Bayu Santoso, S.Kom', 'Karanganyar', '082564328716', 'Islam', '809-Guru_6.jpeg'),
(7, '199013102012101007', 'Citra Dewi, S.Kom', 'Klaten', '082564328717', 'Islam', '198-Guru_7.jpeg'),
(8, '199013102012101008', 'Evelyn Nurhasanah, S.Ak', 'Semarang', '082564328718', 'Islam', '556-Guru_8.jpeg'),
(9, '199013102012101009', 'Nadira Ayu, S.Ak', 'Sukoharjo', '082564328712', 'Islam', '342-guru_9.jpeg'),
(10, '199013102012101010', 'Rania Safitri, S.Ak', 'Solo', '089564328713', 'Islam', '296-Guru_10.jpeg'),
(11, '199013102012101011', 'Fahri Nugraha, S.Pd', 'Solo', '082564328711', 'Islam', '19-Guru_11.jpeg'),
(12, '199013102012101012', 'Indira Sari, S.Pd', 'Klaten', '082564328712', 'Islam', '318-Guru_12.jpeg'),
(13, '199013102012101013', 'Jasmine Kartika, S.Pd', 'Solo', '082564328714', 'Islam', '733-Guru_13.jpeg'),
(14, '199013102012101014', 'Kirana Fauziah, S.Pd', 'Boyolali', '082564328715', 'Islam', '248-Guru_14.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_ujian`
--

CREATE TABLE `tbl_nilai_ujian` (
  `id` int(11) NOT NULL,
  `no_ujian` char(7) NOT NULL,
  `pelajaran` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `nilai_ujian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_nilai_ujian`
--

INSERT INTO `tbl_nilai_ujian` (`id`, `no_ujian`, `pelajaran`, `jurusan`, `nilai_ujian`) VALUES
(11, 'UTS-001', 'Matematika', 'Umum', 85),
(12, 'UTS-001', 'Bahasa Indonesia', 'Umum', 90),
(13, 'UTS-001', 'Pendidikan Agama ', 'Umum', 85),
(14, 'UTS-001', 'Seni Budaya', 'Umum', 90),
(15, 'UTS-001', 'Bahasa Inggris', 'Umum', 90),
(16, 'UTS-001', 'Kimia Dasar', 'Kimia Industri', 85),
(17, 'UTS-001', 'Kimia Analitik', 'Kimia Industri', 85),
(18, 'UTS-001', 'Instrumentasi Laboratorium', 'Kimia Industri', 90),
(19, 'UTS-001', 'Kimia Organik', 'Kimia Industri', 85),
(20, 'UTS-001', 'Kimia Anorganik', 'Kimia Industri', 80),
(21, 'UTS-002', 'Matematika', 'Umum', 85),
(22, 'UTS-002', 'Bahasa Indonesia', 'Umum', 95),
(23, 'UTS-002', 'Pendidikan Agama ', 'Umum', 85),
(24, 'UTS-002', 'Seni Budaya', 'Umum', 80),
(25, 'UTS-002', 'Bahasa Inggris', 'Umum', 85),
(26, 'UTS-002', 'Kimia Dasar', 'Kimia Industri', 90),
(27, 'UTS-002', 'Kimia Analitik', 'Kimia Industri', 80),
(28, 'UTS-002', 'Instrumentasi Laboratorium', 'Kimia Industri', 80),
(29, 'UTS-002', 'Kimia Organik', 'Kimia Industri', 75),
(30, 'UTS-002', 'Kimia Anorganik', 'Kimia Industri', 75),
(31, 'UTS-003', 'Matematika', 'Umum', 90),
(32, 'UTS-003', 'Bahasa Indonesia', 'Umum', 85),
(33, 'UTS-003', 'Pendidikan Agama ', 'Umum', 85),
(34, 'UTS-003', 'Seni Budaya', 'Umum', 75),
(35, 'UTS-003', 'Bahasa Inggris', 'Umum', 75),
(36, 'UTS-003', 'Kimia Dasar', 'Kimia Industri', 75),
(37, 'UTS-003', 'Kimia Analitik', 'Kimia Industri', 80),
(38, 'UTS-003', 'Instrumentasi Laboratorium', 'Kimia Industri', 80),
(39, 'UTS-003', 'Kimia Organik', 'Kimia Industri', 95),
(40, 'UTS-003', 'Kimia Anorganik', 'Kimia Industri', 80),
(41, 'UTS-004', 'Matematika', 'Umum', 75),
(42, 'UTS-004', 'Bahasa Indonesia', 'Umum', 80),
(43, 'UTS-004', 'Pendidikan Agama ', 'Umum', 80),
(44, 'UTS-004', 'Seni Budaya', 'Umum', 90),
(45, 'UTS-004', 'Bahasa Inggris', 'Umum', 90),
(46, 'UTS-004', 'Kimia Dasar', 'Kimia Industri', 85),
(47, 'UTS-004', 'Kimia Analitik', 'Kimia Industri', 85),
(48, 'UTS-004', 'Instrumentasi Laboratorium', 'Kimia Industri', 85),
(49, 'UTS-004', 'Kimia Organik', 'Kimia Industri', 75),
(50, 'UTS-004', 'Kimia Anorganik', 'Kimia Industri', 75),
(51, 'UTS-005', 'Matematika', 'Umum', 95),
(52, 'UTS-005', 'Bahasa Indonesia', 'Umum', 80),
(53, 'UTS-005', 'Pendidikan Agama ', 'Umum', 85),
(54, 'UTS-005', 'Seni Budaya', 'Umum', 85),
(55, 'UTS-005', 'Bahasa Inggris', 'Umum', 85),
(56, 'UTS-005', 'Kimia Dasar', 'Kimia Industri', 85),
(57, 'UTS-005', 'Kimia Analitik', 'Kimia Industri', 90),
(58, 'UTS-005', 'Instrumentasi Laboratorium', 'Kimia Industri', 90),
(59, 'UTS-005', 'Kimia Organik', 'Kimia Industri', 85),
(60, 'UTS-005', 'Kimia Anorganik', 'Kimia Industri', 95),
(61, 'UTS-006', 'Matematika', 'Umum', 90),
(62, 'UTS-006', 'Bahasa Indonesia', 'Umum', 85),
(63, 'UTS-006', 'Pendidikan Agama ', 'Umum', 85),
(64, 'UTS-006', 'Seni Budaya', 'Umum', 90),
(65, 'UTS-006', 'Bahasa Inggris', 'Umum', 75),
(66, 'UTS-006', 'SQL Dasar', 'RPL', 80),
(67, 'UTS-006', 'Pemrograman VB & VB.Net', 'RPL', 80),
(68, 'UTS-006', 'Pemrograman C++', 'RPL', 80),
(69, 'UTS-006', 'Web Dinamis Dasar', 'RPL', 80),
(70, 'UTS-006', 'Pemrograman Pyhton', 'RPL', 90),
(71, 'UTS-007', 'Matematika', 'Umum', 85),
(72, 'UTS-007', 'Bahasa Indonesia', 'Umum', 90),
(73, 'UTS-007', 'Pendidikan Agama ', 'Umum', 85),
(74, 'UTS-007', 'Seni Budaya', 'Umum', 75),
(75, 'UTS-007', 'Bahasa Inggris', 'Umum', 85),
(76, 'UTS-007', 'SQL Dasar', 'RPL', 80),
(77, 'UTS-007', 'Pemrograman VB & VB.Net', 'RPL', 75),
(78, 'UTS-007', 'Pemrograman C++', 'RPL', 75),
(79, 'UTS-007', 'Web Dinamis Dasar', 'RPL', 90),
(80, 'UTS-007', 'Pemrograman Pyhton', 'RPL', 75),
(81, 'UTS-008', 'Matematika', 'Umum', 55),
(82, 'UTS-008', 'Bahasa Indonesia', 'Umum', 75),
(83, 'UTS-008', 'Pendidikan Agama ', 'Umum', 80),
(84, 'UTS-008', 'Seni Budaya', 'Umum', 80),
(85, 'UTS-008', 'Bahasa Inggris', 'Umum', 85),
(86, 'UTS-008', 'SQL Dasar', 'RPL', 80),
(87, 'UTS-008', 'Pemrograman VB & VB.Net', 'RPL', 90),
(88, 'UTS-008', 'Pemrograman C++', 'RPL', 85),
(89, 'UTS-008', 'Web Dinamis Dasar', 'RPL', 75),
(90, 'UTS-008', 'Pemrograman Pyhton', 'RPL', 75),
(91, 'UTS-009', 'Matematika', 'Umum', 90),
(92, 'UTS-009', 'Bahasa Indonesia', 'Umum', 85),
(93, 'UTS-009', 'Pendidikan Agama ', 'Umum', 90),
(94, 'UTS-009', 'Seni Budaya', 'Umum', 75),
(95, 'UTS-009', 'Bahasa Inggris', 'Umum', 75),
(96, 'UTS-009', 'SQL Dasar', 'RPL', 75),
(97, 'UTS-009', 'Pemrograman VB & VB.Net', 'RPL', 80),
(98, 'UTS-009', 'Pemrograman C++', 'RPL', 80),
(99, 'UTS-009', 'Web Dinamis Dasar', 'RPL', 75),
(100, 'UTS-009', 'Pemrograman Pyhton', 'RPL', 90),
(101, 'UTS-010', 'Matematika', 'Umum', 70),
(102, 'UTS-010', 'Bahasa Indonesia', 'Umum', 75),
(103, 'UTS-010', 'Pendidikan Agama ', 'Umum', 75),
(104, 'UTS-010', 'Seni Budaya', 'Umum', 45),
(105, 'UTS-010', 'Bahasa Inggris', 'Umum', 40),
(106, 'UTS-010', 'SQL Dasar', 'RPL', 55),
(107, 'UTS-010', 'Pemrograman VB & VB.Net', 'RPL', 50),
(108, 'UTS-010', 'Pemrograman C++', 'RPL', 50),
(109, 'UTS-010', 'Web Dinamis Dasar', 'RPL', 65),
(110, 'UTS-010', 'Pemrograman Pyhton', 'RPL', 65),
(111, 'UTS-011', 'Matematika', 'Umum', 85),
(112, 'UTS-011', 'Bahasa Indonesia', 'Umum', 75),
(113, 'UTS-011', 'Pendidikan Agama ', 'Umum', 80),
(114, 'UTS-011', 'Seni Budaya', 'Umum', 75),
(115, 'UTS-011', 'Bahasa Inggris', 'Umum', 65),
(116, 'UTS-011', 'Etika Profesi', 'Akuntansi', 85),
(117, 'UTS-011', 'Akuntansi Dasar', 'Akuntansi', 80),
(118, 'UTS-011', 'Aplikasi Pengolahan Angka', 'Akuntansi', 85),
(119, 'UTS-011', 'Perbankan Dasar', 'Akuntansi', 80),
(120, 'UTS-011', 'Komputer Akuntansi', 'Akuntansi', 75),
(121, 'UTS-012', 'Matematika', 'Umum', 85),
(122, 'UTS-012', 'Bahasa Indonesia', 'Umum', 85),
(123, 'UTS-012', 'Pendidikan Agama ', 'Umum', 90),
(124, 'UTS-012', 'Seni Budaya', 'Umum', 75),
(125, 'UTS-012', 'Bahasa Inggris', 'Umum', 75),
(126, 'UTS-012', 'Etika Profesi', 'Akuntansi', 75),
(127, 'UTS-012', 'Akuntansi Dasar', 'Akuntansi', 75),
(128, 'UTS-012', 'Aplikasi Pengolahan Angka', 'Akuntansi', 80),
(129, 'UTS-012', 'Perbankan Dasar', 'Akuntansi', 80),
(130, 'UTS-012', 'Komputer Akuntansi', 'Akuntansi', 80),
(131, 'UTS-013', 'Matematika', 'Umum', 75),
(132, 'UTS-013', 'Bahasa Indonesia', 'Umum', 80),
(133, 'UTS-013', 'Pendidikan Agama ', 'Umum', 80),
(134, 'UTS-013', 'Seni Budaya', 'Umum', 80),
(135, 'UTS-013', 'Bahasa Inggris', 'Umum', 90),
(136, 'UTS-013', 'Etika Profesi', 'Akuntansi', 80),
(137, 'UTS-013', 'Akuntansi Dasar', 'Akuntansi', 75),
(138, 'UTS-013', 'Aplikasi Pengolahan Angka', 'Akuntansi', 75),
(139, 'UTS-013', 'Perbankan Dasar', 'Akuntansi', 80),
(140, 'UTS-013', 'Komputer Akuntansi', 'Akuntansi', 85),
(141, 'UTS-014', 'Matematika', 'Umum', 90),
(142, 'UTS-014', 'Bahasa Indonesia', 'Umum', 75),
(143, 'UTS-014', 'Pendidikan Agama ', 'Umum', 75),
(144, 'UTS-014', 'Seni Budaya', 'Umum', 75),
(145, 'UTS-014', 'Bahasa Inggris', 'Umum', 75),
(146, 'UTS-014', 'Etika Profesi', 'Akuntansi', 75),
(147, 'UTS-014', 'Akuntansi Dasar', 'Akuntansi', 75),
(148, 'UTS-014', 'Aplikasi Pengolahan Angka', 'Akuntansi', 75),
(149, 'UTS-014', 'Perbankan Dasar', 'Akuntansi', 75),
(150, 'UTS-014', 'Komputer Akuntansi', 'Akuntansi', 75),
(151, 'UTS-015', 'Matematika', 'Umum', 75),
(152, 'UTS-015', 'Bahasa Indonesia', 'Umum', 75),
(153, 'UTS-015', 'Pendidikan Agama ', 'Umum', 75),
(154, 'UTS-015', 'Seni Budaya', 'Umum', 75),
(155, 'UTS-015', 'Bahasa Inggris', 'Umum', 75),
(156, 'UTS-015', 'Etika Profesi', 'Akuntansi', 75),
(157, 'UTS-015', 'Akuntansi Dasar', 'Akuntansi', 75),
(158, 'UTS-015', 'Aplikasi Pengolahan Angka', 'Akuntansi', 75),
(159, 'UTS-015', 'Perbankan Dasar', 'Akuntansi', 75),
(160, 'UTS-015', 'Komputer Akuntansi', 'Akuntansi', 75);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelajaran`
--

CREATE TABLE `tbl_pelajaran` (
  `id` int(11) NOT NULL,
  `pelajaran` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `guru` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pelajaran`
--

INSERT INTO `tbl_pelajaran` (`id`, `pelajaran`, `jurusan`, `guru`) VALUES
(2, 'Matematika', 'Umum', 'Rudi Habibie, S.Si'),
(3, 'Bahasa Indonesia', 'Umum', 'Indira Sari, S.Pd'),
(4, 'Pendidikan Agama ', 'Umum', 'Fahri Nugraha, S.Pd'),
(5, 'Seni Budaya', 'Umum', 'Jasmine Kartika, S.Pd'),
(6, 'Bahasa Inggris', 'Umum', 'Kirana Fauziah, S.Pd'),
(7, 'Kimia Dasar', 'Kimia Industri', 'Rudi Habibie, S.Si'),
(8, 'Kimia Analitik', 'Kimia Industri', 'Putri Amanda, S.Si'),
(9, 'Instrumentasi Laboratorium', 'Kimia Industri', 'Reza Mahardika, S.Si '),
(10, 'Kimia Organik', 'Kimia Industri', 'Putri Amanda, S.Si'),
(11, 'Kimia Anorganik', 'Kimia Industri', 'Reza Mahardika, S.Si '),
(12, 'SQL Dasar', 'RPL', 'Almira Putri, S.Kom '),
(13, 'Pemrograman VB &amp; VB.Net', 'RPL', 'Armand Kurniawan, S.Kom'),
(14, 'Pemrograman C++', 'RPL', 'Bayu Santoso, S.Kom'),
(15, 'Web Dinamis Dasar', 'RPL', 'Citra Dewi, S.Kom'),
(16, 'Pemrograman Pyhton', 'RPL', 'Almira Putri, S.Kom '),
(17, 'Etika Profesi', 'Akuntansi', 'Evelyn Nurhasanah, S.Ak'),
(18, 'Akuntansi Dasar', 'Akuntansi', 'Nadira Ayu, S.Ak'),
(19, 'Aplikasi Pengolahan Angka', 'Akuntansi', 'Rania Safitri, S.Ak'),
(20, 'Perbankan Dasar', 'Akuntansi', 'Evelyn Nurhasanah, S.Ak'),
(21, 'Komputer Akuntansi', 'Akuntansi', 'Rania Safitri, S.Ak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sekolah`
--

CREATE TABLE `tbl_sekolah` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `akreditasi` char(1) NOT NULL,
  `status` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `visimisi` varchar(256) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sekolah`
--

INSERT INTO `tbl_sekolah` (`id`, `nama`, `alamat`, `akreditasi`, `status`, `email`, `visimisi`, `gambar`) VALUES
(1, 'SMK MURIHA', 'Jl.Raya Banaran, Sekaran, Kota Semarang, Jawa Tengah', 'B', 'Swasta', 'smkmuriha04@yahoo.com', 'Menciptakan lulusan yang beriman dan berilmu', '18-bgLogin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` char(7) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `nama`, `alamat`, `kelas`, `jurusan`, `foto`) VALUES
('2024001', 'Adrian Wijaya', 'Mangkubumen', 'XII', 'Kimia Industri', '408-Siswa_1.jpeg'),
('2024002', 'Alya Nuraini', 'Sukoharjo', 'XII', 'Kimia Industri', '20-Siswa_2.jpeg'),
('2024003', 'Bintang Saputra', 'Solo', 'XII', 'Kimia Industri', '444-Siswa_3.jpeg'),
('2024004', 'Bella Arifin', 'Klaten', 'XII', 'Kimia Industri', '645-Siswa_4.jpeg'),
('2024005', 'Dinda Pramesti', 'Solo', 'XII', 'Kimia Industri', '330-Siswa_5.jpeg'),
('2024006', 'Darian Firmansyah', 'Sukoharjo', 'XII', 'RPL', '851-Siswa_6.jpeg'),
('2024007', 'Fajar Ramadhan', 'Boyolali', 'XII', 'RPL', '962-Siswa_7.jpeg'),
('2024008', 'Gavin Pratama', 'Solo', 'XII', 'RPL', '417-Siswa_8.jpeg'),
('2024009', 'Farah Amalia', 'Sukoharjo', 'XII', 'RPL', '576-Siswa_9.jpeg'),
('2024010', 'Hana Salsabila', 'Klaten', 'X', 'RPL', '182-Siswa_10.jpeg'),
('2024011', 'Irfan Maulana', 'Karanganyar', 'XII', 'Akuntansi', '673-Siswa_11.jpeg'),
('2024012', 'Kayla Maharahi', 'Solo', 'XII', 'Akuntansi', '172-Siswa_12.jpeg'),
('2024013', 'Laila Azahra', 'Sukoharjo', 'XII', 'Akuntansi', '585-Siswa_13.jpeg'),
('2024014', 'Nisa Kamila ', 'Karanganyar', 'XII', 'Akuntansi', '488-siswa_14.jpeg'),
('2024015', 'Juna Kurniawan', 'Solo', 'XII', 'Akuntansi', '861-siswa_15.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ujian`
--

CREATE TABLE `tbl_ujian` (
  `no_ujian` char(7) NOT NULL,
  `tgl_ujian` date NOT NULL,
  `nis` char(7) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `total_nilai` int(11) NOT NULL,
  `nilai_terendah` int(11) NOT NULL,
  `nilai_tertinggi` int(11) NOT NULL,
  `nilai_rata2` int(11) NOT NULL,
  `hasil_ujian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_ujian`
--

INSERT INTO `tbl_ujian` (`no_ujian`, `tgl_ujian`, `nis`, `jurusan`, `total_nilai`, `nilai_terendah`, `nilai_tertinggi`, `nilai_rata2`, `hasil_ujian`) VALUES
('UTS-001', '2024-09-07', '2024001', 'Kimia Industri', 865, 80, 90, 87, 'LULUS'),
('UTS-002', '2024-09-07', '2024002', 'Kimia Industri', 830, 75, 95, 83, 'LULUS'),
('UTS-003', '2024-09-07', '2024003', 'Kimia Industri', 820, 75, 95, 82, 'LULUS'),
('UTS-004', '2024-09-07', '2024003', 'Kimia Industri', 820, 75, 90, 82, 'LULUS'),
('UTS-005', '2024-09-07', '2024005', 'Kimia Industri', 875, 80, 95, 88, 'LULUS'),
('UTS-006', '2024-09-07', '2024006', 'RPL', 835, 75, 90, 84, 'LULUS'),
('UTS-007', '2024-09-07', '2024007', 'RPL', 815, 75, 90, 82, 'LULUS'),
('UTS-008', '2024-09-07', '2024008', 'RPL', 780, 55, 90, 78, 'LULUS'),
('UTS-009', '2024-09-07', '2024009', 'RPL', 815, 75, 90, 82, 'LULUS'),
('UTS-010', '2024-09-07', '2024010', 'RPL', 590, 40, 75, 59, 'GAGAL'),
('UTS-011', '2024-09-07', '2024011', 'Akuntansi', 785, 65, 85, 79, 'LULUS'),
('UTS-012', '2024-09-07', '2024012', 'Akuntansi', 800, 75, 90, 80, 'LULUS'),
('UTS-013', '2024-09-07', '2024013', 'Akuntansi', 800, 75, 90, 80, 'LULUS'),
('UTS-014', '2024-09-08', '2024014', 'Akuntansi', 765, 75, 90, 77, 'LULUS'),
('UTS-015', '2024-09-08', '2024015', 'Akuntansi', 750, 75, 75, 75, 'LULUS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `jabatan` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `nama`, `alamat`, `jabatan`, `foto`) VALUES
(2, 'admin', '$2y$10$k8HlneQk.PurFX0FldZGPuXXBUnSZNmILtNObc.HVkwNRm4xlkppS', 'Reva', 'Klaten', 'Staf TU', 'default.png'),
(3, 'muriha04', '$2y$10$oufiq6BC1Y0zs5RHu0prquZDLTjodHOFivLe5IFwg.az3yfri0Yze', 'Rifky Hafan', 'Mangkubumen', 'Kepala Sekolah', '185-Guru_3.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbl_ujian`
--
ALTER TABLE `tbl_ujian`
  ADD PRIMARY KEY (`no_ujian`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_nilai_ujian`
--
ALTER TABLE `tbl_nilai_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `tbl_pelajaran`
--
ALTER TABLE `tbl_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_sekolah`
--
ALTER TABLE `tbl_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
