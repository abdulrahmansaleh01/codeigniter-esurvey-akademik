-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 03:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `aksi`
--

CREATE TABLE `aksi` (
  `id_aksi` int(11) NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `tgl_isi` datetime NOT NULL,
  `id_kuesioner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aksi`
--

INSERT INTO `aksi` (`id_aksi`, `nipd`, `tgl_isi`, `id_kuesioner`) VALUES
(69, '1931710002', '2020-12-28 14:18:34', 31);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_guru`
--

CREATE TABLE `aksi_guru` (
  `id_aksi_guru` int(11) NOT NULL,
  `nipd` varchar(128) NOT NULL,
  `tgl_isi` datetime NOT NULL,
  `id_survei_guru` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aksi_guru`
--

INSERT INTO `aksi_guru` (`id_aksi_guru`, `nipd`, `tgl_isi`, `id_survei_guru`, `id_guru`) VALUES
(56, '222', '2019-10-31 16:53:35', 22, 51),
(57, '777', '2019-11-06 04:17:01', 22, 51),
(58, '777', '2019-11-06 04:17:52', 22, 54),
(59, '222', '2019-11-07 09:43:46', 22, 50),
(60, '333', '2019-11-07 09:45:04', 22, 50),
(62, '333', '2019-11-10 16:21:18', 22, 51),
(63, '222', '2019-11-10 16:48:36', 24, 51),
(64, '333', '2019-11-10 16:49:02', 24, 50),
(65, '555', '2019-11-10 16:49:52', 22, 51),
(66, '555', '2019-11-10 16:50:05', 24, 51),
(67, '444', '2019-11-10 18:07:20', 22, 50),
(68, '1931710002', '2020-12-28 14:13:52', 27, 63);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_guru_tmp`
--

CREATE TABLE `aksi_guru_tmp` (
  `id_aksi_guru_tmp` int(11) NOT NULL,
  `id_aksi_guru` int(11) NOT NULL,
  `soal_no` int(11) NOT NULL,
  `id_opsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aksi_guru_tmp`
--

INSERT INTO `aksi_guru_tmp` (`id_aksi_guru_tmp`, `id_aksi_guru`, `soal_no`, `id_opsi`) VALUES
(221, 56, 1, 4),
(222, 56, 2, 3),
(223, 56, 3, 2),
(224, 56, 4, 1),
(225, 57, 1, 4),
(226, 57, 2, 3),
(227, 57, 3, 2),
(228, 57, 4, 4),
(229, 58, 1, 4),
(230, 58, 2, 4),
(231, 58, 3, 4),
(232, 58, 4, 4),
(233, 59, 1, 4),
(234, 59, 2, 4),
(235, 59, 3, 3),
(236, 59, 4, 3),
(237, 60, 1, 4),
(238, 60, 2, 3),
(239, 60, 3, 2),
(240, 60, 4, 2),
(245, 62, 1, 4),
(246, 62, 2, 4),
(247, 62, 3, 4),
(248, 62, 4, 4),
(249, 63, 1, 4),
(250, 63, 2, 3),
(251, 63, 3, 2),
(252, 63, 4, 3),
(253, 64, 1, 4),
(254, 64, 2, 4),
(255, 64, 3, 3),
(256, 64, 4, 2),
(257, 65, 1, 4),
(258, 65, 2, 4),
(259, 65, 3, 3),
(260, 65, 4, 1),
(261, 66, 1, 4),
(262, 66, 2, 4),
(263, 66, 3, 3),
(264, 66, 4, 2),
(265, 67, 1, 4),
(266, 67, 2, 4),
(267, 67, 3, 4),
(268, 67, 4, 3),
(269, 68, 1, 4),
(270, 68, 2, 4),
(271, 68, 3, 4),
(272, 68, 4, 3),
(273, 68, 5, 3),
(274, 68, 6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `aksi_tmp`
--

CREATE TABLE `aksi_tmp` (
  `id_aksi_tmp` int(11) NOT NULL,
  `id_aksi` int(11) NOT NULL,
  `soal_no` int(11) NOT NULL,
  `id_opsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aksi_tmp`
--

INSERT INTO `aksi_tmp` (`id_aksi_tmp`, `id_aksi`, `soal_no`, `id_opsi`) VALUES
(186, 69, 1, 4),
(187, 69, 2, 4),
(188, 69, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ampuan`
--

CREATE TABLE `ampuan` (
  `id_ampuan` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ampuan`
--

INSERT INTO `ampuan` (`id_ampuan`, `id_guru`, `id_kelas`) VALUES
(91, 51, 37),
(92, 51, 38),
(93, 51, 43),
(94, 51, 45),
(95, 51, 46),
(107, 50, 37),
(108, 50, 43),
(109, 50, 46),
(120, 54, 37),
(121, 54, 38),
(122, 54, 43),
(123, 54, 45),
(124, 49, 37),
(125, 49, 38),
(126, 49, 43),
(127, 49, 45),
(133, 56, 37),
(134, 56, 38),
(135, 56, 45),
(136, 57, 37),
(137, 57, 43),
(138, 57, 45),
(139, 58, 37),
(140, 58, 43),
(141, 58, 45),
(142, 59, 48),
(143, 59, 49),
(144, 59, 54),
(145, 59, 55),
(146, 60, 50),
(147, 60, 51),
(148, 60, 56),
(149, 60, 57),
(150, 61, 52),
(151, 61, 53),
(152, 61, 58),
(153, 61, 59),
(154, 62, 48),
(155, 62, 54),
(156, 62, 60),
(157, 62, 61),
(158, 63, 50),
(159, 63, 51),
(160, 63, 62);

-- --------------------------------------------------------

--
-- Table structure for table `aspek_kepuasan`
--

CREATE TABLE `aspek_kepuasan` (
  `id_aspek_kepuasan` int(11) NOT NULL,
  `aspek` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspek_kepuasan`
--

INSERT INTO `aspek_kepuasan` (`id_aspek_kepuasan`, `aspek`) VALUES
(1, 'Proses KBM'),
(2, 'Pelayanan Karyawan Sebagai Penunjang Pendidikan'),
(3, 'Kelas & Toilet');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama`) VALUES
(59, 'Faizin'),
(60, 'Husein'),
(61, 'Ali'),
(62, 'Hamdan'),
(63, 'Rudy');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(37, 'LDK'),
(38, 'Pra Studi'),
(39, 'Malam Keakraban'),
(40, 'Ujian TOEFL');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `sub` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`, `jurusan`, `sub`) VALUES
(48, '1', 'D3 MI', 'A'),
(49, '1', 'D3 MI', 'B'),
(50, '2', 'D3 MI', 'A'),
(51, '2', 'D3 MI', 'B'),
(52, '3', 'D3 MI', 'A'),
(53, '3', 'D3 MI', 'B'),
(54, '1', 'D4 TI', 'A'),
(55, '1', 'D4 TI', 'B'),
(56, '2', 'D4 TI', 'A'),
(57, '2', 'D4 TI', 'B'),
(58, '3', 'D4 TI', 'A'),
(59, '3', 'D4 TI', 'B'),
(60, '4', 'D4 TI', 'A'),
(61, '4', 'D4 TI', 'B'),
(62, '2', 'D3 MI', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `kuesioner`
--

CREATE TABLE `kuesioner` (
  `id_kuesioner` int(11) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuesioner`
--

INSERT INTO `kuesioner` (`id_kuesioner`, `judul`, `deskripsi`, `tgl_mulai`, `tgl_selesai`, `id_kategori`) VALUES
(28, 'Latihan Dasar Kepemimpinan', 'Tempat : Dodikjur', '2020-12-28', '2021-01-09', 37),
(29, 'Pra Studi', 'Khusus mahasiswa baru', '2020-12-28', '2021-01-09', 38),
(30, 'Tes', 'ss', '2020-12-29', '2020-12-31', 37),
(31, 'Ujian TOEFL', 'Wajib bagi mahasiswa tingkat 2', '2020-12-27', '2020-12-31', 40);

-- --------------------------------------------------------

--
-- Table structure for table `kuesioner_tmp`
--

CREATE TABLE `kuesioner_tmp` (
  `id_kuesioner_tmp` int(11) NOT NULL,
  `id_kuesioner` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuesioner_tmp`
--

INSERT INTO `kuesioner_tmp` (`id_kuesioner_tmp`, `id_kuesioner`, `id_kelas`) VALUES
(100, 28, 48),
(101, 28, 49),
(102, 28, 54),
(103, 28, 55),
(104, 29, 48),
(105, 29, 49),
(106, 29, 54),
(107, 29, 55),
(108, 30, 48),
(109, 31, 50),
(110, 31, 51),
(111, 31, 56),
(112, 31, 57),
(113, 31, 62);

-- --------------------------------------------------------

--
-- Table structure for table `masukan_guru`
--

CREATE TABLE `masukan_guru` (
  `id_masukan_guru` int(11) NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `id_survei_guru` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `tgl_komen` date NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masukan_guru`
--

INSERT INTO `masukan_guru` (`id_masukan_guru`, `nipd`, `id_survei_guru`, `id_guru`, `tgl_komen`, `komentar`) VALUES
(9, '1931710002', 27, 63, '2020-12-28', 'Dosen terbaik bagi saya. Mungkin sudah tidak ada saran.');

-- --------------------------------------------------------

--
-- Table structure for table `masukan_kegiatan`
--

CREATE TABLE `masukan_kegiatan` (
  `id_masukan_kegiatan` int(11) NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `id_kuesioner` int(11) NOT NULL,
  `tgl_komen` date NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masukan_kegiatan`
--

INSERT INTO `masukan_kegiatan` (`id_masukan_kegiatan`, `nipd`, `id_kuesioner`, `tgl_komen`, `komentar`) VALUES
(1, '1931710002', 31, '2020-12-28', 'Persiapan panitia mungkin sudah baik, akan lebih baik jika ditingkatkan lagi ');

-- --------------------------------------------------------

--
-- Table structure for table `opsi`
--

CREATE TABLE `opsi` (
  `id_opsi` int(11) NOT NULL,
  `opsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opsi`
--

INSERT INTO `opsi` (`id_opsi`, `opsi`) VALUES
(1, 'Sangat Baik'),
(2, 'Baik'),
(3, 'Cukup'),
(4, 'Kurang');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_tmp`
--

CREATE TABLE `siswa_tmp` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nipd` int(11) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_tmp`
--

INSERT INTO `siswa_tmp` (`id`, `nama`, `nipd`, `nama_ibu`, `id_kelas`) VALUES
(61, 'Abdul Rahman Saleh', 1931710038, 'Sulis', 50),
(62, 'Muhammad Fauzan Tri Aji', 1931710150, 'Maria', 51),
(65, 'Rahmawati', 1931710003, 'Mariati', 62);

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `soal` text NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id_soal`, `soal`, `id_kategori`) VALUES
(79, 'Pelayanan Pembina', 37),
(80, 'Pelayanan konsumsi', 37),
(81, 'Pelayanan kesehatan', 37),
(82, 'Ketegasan kakak pembimbing', 38),
(83, 'Tingkat kedisiplinan aturan', 38),
(84, 'Pelayanan kesehatan', 38),
(85, 'Kemeriahan acara', 39),
(86, 'Dekorasi', 39),
(87, 'Persiapan panitia', 39),
(88, 'Tingkat kesulitan ujian', 40),
(89, 'Fasilitas ujian', 40),
(90, 'Persiapan panitia', 40);

-- --------------------------------------------------------

--
-- Table structure for table `soal_guru`
--

CREATE TABLE `soal_guru` (
  `id_soal_aspek` int(11) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_guru`
--

INSERT INTO `soal_guru` (`id_soal_aspek`, `pertanyaan`) VALUES
(15, 'Penguasaan Kelas'),
(16, 'Penyampaian Materi'),
(17, 'Komunikasi dengan siswa'),
(18, 'Keterbukaan dalam penilaian'),
(19, 'Keterampilan dalam mengajar'),
(20, 'Menggunakan referensi lain sebagai bahan ajar ');

-- --------------------------------------------------------

--
-- Table structure for table `soal_kepuasan`
--

CREATE TABLE `soal_kepuasan` (
  `id_soal_kepuasan` int(11) NOT NULL,
  `id_aspek_kepuasan` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `opsi_1` varchar(50) NOT NULL,
  `opsi_2` varchar(50) NOT NULL,
  `opsi_3` varchar(50) NOT NULL,
  `opsi_4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal_kepuasan`
--

INSERT INTO `soal_kepuasan` (`id_soal_kepuasan`, `id_aspek_kepuasan`, `pertanyaan`, `opsi_1`, `opsi_2`, `opsi_3`, `opsi_4`) VALUES
(2, 1, 'Saya bisa menyebutkan visi dan misi SMA Bopkri 1 dengan benar dan lancar', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(3, 1, 'Berapa banyak guru yang memberikan rancangan pembelajaran ( silabus ) dan penilaian di setiap awal semester ?', '1 - 3 guru', '4 - 7 guru', '8 - 10 guru', 'lebih dari 10 guru'),
(4, 2, 'Bapak dan Ibu Karyawan ramah dan kooperatif dalam membantu siswa berkaitan dengan administrasi kesiswaaan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(5, 2, 'Pelayanan pembayaran SPP sangat cepat dan memuaskan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(6, 2, 'Pelayanan surat-menyurat yang berkaitan dengan administrasi siswa cepat dan memuaskan', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(7, 3, 'Pencahayaan di Kelas memadai', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(8, 3, 'Sirkulasi udara ruang kelas sudah cukup baik', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju'),
(9, 3, 'Saklar, stop kontak, LCD Proyektor dan kabel LCD di Kelas dalam keadaan baik dan aman', 'Tidak Setuju', 'Netral', 'Setuju', 'Sangat Setuju');

-- --------------------------------------------------------

--
-- Table structure for table `survei_guru`
--

CREATE TABLE `survei_guru` (
  `id_survei_guru` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei_guru`
--

INSERT INTO `survei_guru` (`id_survei_guru`, `tgl_mulai`, `tgl_selesai`) VALUES
(25, '2020-12-28', '2020-12-31'),
(26, '2021-01-04', '2021-01-09'),
(27, '2020-12-27', '2020-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `survei_guru_tmp`
--

CREATE TABLE `survei_guru_tmp` (
  `id_survei_guru_tmp` int(11) NOT NULL,
  `id_survei_guru` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survei_guru_tmp`
--

INSERT INTO `survei_guru_tmp` (`id_survei_guru_tmp`, `id_survei_guru`, `id_guru`) VALUES
(75, 25, 59),
(76, 25, 60),
(77, 25, 61),
(78, 25, 62),
(79, 26, 59),
(80, 26, 60),
(81, 26, 61),
(82, 26, 62),
(83, 27, 59),
(84, 27, 60),
(85, 27, 61),
(86, 27, 62),
(87, 27, 63);

-- --------------------------------------------------------

--
-- Table structure for table `survei_kepuasan`
--

CREATE TABLE `survei_kepuasan` (
  `id_survei_kepuasan` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survei_kepuasan_tmp`
--

CREATE TABLE `survei_kepuasan_tmp` (
  `id_survei_kepuasan_tmp` int(11) NOT NULL,
  `id_survei_kepuasan` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_siswa`
--

CREATE TABLE `user_siswa` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nipd` varchar(30) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `id_kelas` int(10) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_siswa`
--

INSERT INTO `user_siswa` (`id`, `nama`, `nipd`, `nama_ibu`, `id_kelas`, `password`, `role`) VALUES
(20, 'Admin', '1', 'Ibu', 0, '0192023a7bbd73250516f069df18b500', 1),
(41, 'Ahmad ', '1931710001', 'Fatimah', 48, '8de13959395270bf9d6819f818ab1a00', 2),
(42, 'Admin 2', '2', 'admin', 0, '0192023a7bbd73250516f069df18b500', 1),
(43, 'Hafidz Furqon', '1931710002', 'Sumiasri', 62, '6b7aeb73609de9a8c1b8c0eceabd60cc', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ampuan`
-- (See below for the actual view)
--
CREATE TABLE `v_ampuan` (
`id_guru` int(11)
,`nama` varchar(50)
,`ampuan` mediumtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_a_guru`
-- (See below for the actual view)
--
CREATE TABLE `v_a_guru` (
`id_survei_guru` int(11)
,`id_guru` int(11)
,`responden` bigint(21)
,`sangat_baik` decimal(22,0)
,`baik` decimal(22,0)
,`cukup` decimal(22,0)
,`buruk` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_a_kegiatan`
-- (See below for the actual view)
--
CREATE TABLE `v_a_kegiatan` (
`id_kuesioner` int(11)
,`judul` text
,`deskripsi` text
,`tgl_mulai` date
,`tgl_selesai` date
,`responden` bigint(21)
,`sangat_baik` decimal(22,0)
,`baik` decimal(22,0)
,`cukup` decimal(22,0)
,`buruk` decimal(22,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_siswa_tmp`
-- (See below for the actual view)
--
CREATE TABLE `v_siswa_tmp` (
`id` int(11)
,`nama` varchar(50)
,`nipd` int(11)
,`nama_ibu` varchar(50)
,`id_kelas` int(11)
,`kelas` varchar(73)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_soal_kegiatan`
-- (See below for the actual view)
--
CREATE TABLE `v_soal_kegiatan` (
`id_kuesioner` int(11)
,`id_soal` int(11)
,`soal` text
,`id_kelas` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_s_guru`
-- (See below for the actual view)
--
CREATE TABLE `v_s_guru` (
`id_survei_guru` int(11)
,`tgl_mulai` date
,`tgl_selesai` date
,`id_guru` int(11)
,`nama` varchar(50)
,`id_kelas` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_s_kegiatan`
-- (See below for the actual view)
--
CREATE TABLE `v_s_kegiatan` (
`id_kelas` int(11)
,`id_kuesioner` int(11)
,`judul` text
,`deskripsi` text
,`tgl_mulai` date
,`tgl_selesai` date
,`id_kategori` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_s_kepuasan`
-- (See below for the actual view)
--
CREATE TABLE `v_s_kepuasan` (
`id_soal_kepuasan` int(11)
,`pertanyaan` text
,`opsi_1` varchar(50)
,`opsi_2` varchar(50)
,`opsi_3` varchar(50)
,`opsi_4` varchar(50)
,`id_aspek_kepuasan` int(11)
,`aspek` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_user_siswa`
-- (See below for the actual view)
--
CREATE TABLE `v_user_siswa` (
`id` int(11)
,`nama` text
,`nipd` varchar(30)
,`nama_ibu` varchar(50)
,`id_kelas` int(10)
,`password` varchar(200)
,`role` int(11)
,`kelas` varchar(73)
);

-- --------------------------------------------------------

--
-- Structure for view `v_ampuan`
--
DROP TABLE IF EXISTS `v_ampuan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ampuan`  AS  select `guru`.`id_guru` AS `id_guru`,`guru`.`nama` AS `nama`,group_concat(' ',`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub` separator ',') AS `ampuan` from ((`guru` join `ampuan`) join `kelas`) where `guru`.`id_guru` = `ampuan`.`id_guru` and `ampuan`.`id_kelas` = `kelas`.`id_kelas` group by `ampuan`.`id_guru` ;

-- --------------------------------------------------------

--
-- Structure for view `v_a_guru`
--
DROP TABLE IF EXISTS `v_a_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_a_guru`  AS  select `aksi_guru`.`id_survei_guru` AS `id_survei_guru`,`aksi_guru`.`id_guru` AS `id_guru`,count(distinct `aksi_guru`.`nipd`) AS `responden`,sum(case when `aksi_guru_tmp`.`id_opsi` = '4' then 1 else 0 end) AS `sangat_baik`,sum(case when `aksi_guru_tmp`.`id_opsi` = '3' then 1 else 0 end) AS `baik`,sum(case when `aksi_guru_tmp`.`id_opsi` = '2' then 1 else 0 end) AS `cukup`,sum(case when `aksi_guru_tmp`.`id_opsi` = '1' then 1 else 0 end) AS `buruk` from (`aksi_guru` left join `aksi_guru_tmp` on(`aksi_guru`.`id_aksi_guru` = `aksi_guru_tmp`.`id_aksi_guru`)) group by `aksi_guru`.`id_survei_guru`,`aksi_guru`.`id_guru` ;

-- --------------------------------------------------------

--
-- Structure for view `v_a_kegiatan`
--
DROP TABLE IF EXISTS `v_a_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_a_kegiatan`  AS  select `aksi`.`id_kuesioner` AS `id_kuesioner`,`kuesioner`.`judul` AS `judul`,`kuesioner`.`deskripsi` AS `deskripsi`,`kuesioner`.`tgl_mulai` AS `tgl_mulai`,`kuesioner`.`tgl_selesai` AS `tgl_selesai`,count(distinct `aksi`.`nipd`) AS `responden`,sum(case when `aksi_tmp`.`id_opsi` = '4' then 1 else 0 end) AS `sangat_baik`,sum(case when `aksi_tmp`.`id_opsi` = '3' then 1 else 0 end) AS `baik`,sum(case when `aksi_tmp`.`id_opsi` = '2' then 1 else 0 end) AS `cukup`,sum(case when `aksi_tmp`.`id_opsi` = '1' then 1 else 0 end) AS `buruk` from ((`aksi` left join `aksi_tmp` on(`aksi`.`id_aksi` = `aksi_tmp`.`id_aksi`)) left join `kuesioner` on(`aksi`.`id_kuesioner` = `kuesioner`.`id_kuesioner`)) group by `aksi`.`id_kuesioner` ;

-- --------------------------------------------------------

--
-- Structure for view `v_siswa_tmp`
--
DROP TABLE IF EXISTS `v_siswa_tmp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_siswa_tmp`  AS  select `siswa_tmp`.`id` AS `id`,`siswa_tmp`.`nama` AS `nama`,`siswa_tmp`.`nipd` AS `nipd`,`siswa_tmp`.`nama_ibu` AS `nama_ibu`,`siswa_tmp`.`id_kelas` AS `id_kelas`,concat(`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub`) AS `kelas` from (`siswa_tmp` join `kelas`) where `siswa_tmp`.`id_kelas` = `kelas`.`id_kelas` ;

-- --------------------------------------------------------

--
-- Structure for view `v_soal_kegiatan`
--
DROP TABLE IF EXISTS `v_soal_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_soal_kegiatan`  AS  select `kuesioner`.`id_kuesioner` AS `id_kuesioner`,`soal`.`id_soal` AS `id_soal`,`soal`.`soal` AS `soal`,`kuesioner_tmp`.`id_kelas` AS `id_kelas` from ((`kuesioner` join `soal`) join `kuesioner_tmp`) where `kuesioner`.`id_kategori` = `soal`.`id_kategori` and `kuesioner_tmp`.`id_kuesioner` = `kuesioner`.`id_kuesioner` ;

-- --------------------------------------------------------

--
-- Structure for view `v_s_guru`
--
DROP TABLE IF EXISTS `v_s_guru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_guru`  AS  select `survei_guru`.`id_survei_guru` AS `id_survei_guru`,`survei_guru`.`tgl_mulai` AS `tgl_mulai`,`survei_guru`.`tgl_selesai` AS `tgl_selesai`,`guru`.`id_guru` AS `id_guru`,`guru`.`nama` AS `nama`,`ampuan`.`id_kelas` AS `id_kelas` from (((`survei_guru` join `survei_guru_tmp`) join `ampuan`) join `guru`) where `survei_guru`.`id_survei_guru` = `survei_guru_tmp`.`id_survei_guru` and `survei_guru_tmp`.`id_guru` = `guru`.`id_guru` and `ampuan`.`id_guru` = `guru`.`id_guru` ;

-- --------------------------------------------------------

--
-- Structure for view `v_s_kegiatan`
--
DROP TABLE IF EXISTS `v_s_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_kegiatan`  AS  select `t`.`id_kelas` AS `id_kelas`,`k`.`id_kuesioner` AS `id_kuesioner`,`k`.`judul` AS `judul`,`k`.`deskripsi` AS `deskripsi`,`k`.`tgl_mulai` AS `tgl_mulai`,`k`.`tgl_selesai` AS `tgl_selesai`,`k`.`id_kategori` AS `id_kategori` from (`kuesioner` `k` join `kuesioner_tmp` `t`) where `t`.`id_kuesioner` = `k`.`id_kuesioner` ;

-- --------------------------------------------------------

--
-- Structure for view `v_s_kepuasan`
--
DROP TABLE IF EXISTS `v_s_kepuasan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_s_kepuasan`  AS  select `soal_kepuasan`.`id_soal_kepuasan` AS `id_soal_kepuasan`,`soal_kepuasan`.`pertanyaan` AS `pertanyaan`,`soal_kepuasan`.`opsi_1` AS `opsi_1`,`soal_kepuasan`.`opsi_2` AS `opsi_2`,`soal_kepuasan`.`opsi_3` AS `opsi_3`,`soal_kepuasan`.`opsi_4` AS `opsi_4`,`aspek_kepuasan`.`id_aspek_kepuasan` AS `id_aspek_kepuasan`,`aspek_kepuasan`.`aspek` AS `aspek` from (`soal_kepuasan` join `aspek_kepuasan`) where `aspek_kepuasan`.`id_aspek_kepuasan` = `soal_kepuasan`.`id_aspek_kepuasan` ;

-- --------------------------------------------------------

--
-- Structure for view `v_user_siswa`
--
DROP TABLE IF EXISTS `v_user_siswa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_user_siswa`  AS  select `user_siswa`.`id` AS `id`,`user_siswa`.`nama` AS `nama`,`user_siswa`.`nipd` AS `nipd`,`user_siswa`.`nama_ibu` AS `nama_ibu`,`user_siswa`.`id_kelas` AS `id_kelas`,`user_siswa`.`password` AS `password`,`user_siswa`.`role` AS `role`,concat(`kelas`.`kelas`,' ',`kelas`.`jurusan`,' ',`kelas`.`sub`) AS `kelas` from (`user_siswa` join `kelas`) where `user_siswa`.`id_kelas` = `kelas`.`id_kelas` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aksi`
--
ALTER TABLE `aksi`
  ADD PRIMARY KEY (`id_aksi`);

--
-- Indexes for table `aksi_guru`
--
ALTER TABLE `aksi_guru`
  ADD PRIMARY KEY (`id_aksi_guru`);

--
-- Indexes for table `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  ADD PRIMARY KEY (`id_aksi_guru_tmp`),
  ADD KEY `delete` (`id_aksi_guru`);

--
-- Indexes for table `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  ADD PRIMARY KEY (`id_aksi_tmp`),
  ADD KEY `del` (`id_aksi`);

--
-- Indexes for table `ampuan`
--
ALTER TABLE `ampuan`
  ADD PRIMARY KEY (`id_ampuan`);

--
-- Indexes for table `aspek_kepuasan`
--
ALTER TABLE `aspek_kepuasan`
  ADD PRIMARY KEY (`id_aspek_kepuasan`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `kuesioner`
--
ALTER TABLE `kuesioner`
  ADD PRIMARY KEY (`id_kuesioner`);

--
-- Indexes for table `kuesioner_tmp`
--
ALTER TABLE `kuesioner_tmp`
  ADD PRIMARY KEY (`id_kuesioner_tmp`);

--
-- Indexes for table `masukan_guru`
--
ALTER TABLE `masukan_guru`
  ADD PRIMARY KEY (`id_masukan_guru`);

--
-- Indexes for table `masukan_kegiatan`
--
ALTER TABLE `masukan_kegiatan`
  ADD PRIMARY KEY (`id_masukan_kegiatan`);

--
-- Indexes for table `opsi`
--
ALTER TABLE `opsi`
  ADD PRIMARY KEY (`id_opsi`);

--
-- Indexes for table `siswa_tmp`
--
ALTER TABLE `siswa_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `soal_guru`
--
ALTER TABLE `soal_guru`
  ADD PRIMARY KEY (`id_soal_aspek`);

--
-- Indexes for table `soal_kepuasan`
--
ALTER TABLE `soal_kepuasan`
  ADD PRIMARY KEY (`id_soal_kepuasan`);

--
-- Indexes for table `survei_guru`
--
ALTER TABLE `survei_guru`
  ADD PRIMARY KEY (`id_survei_guru`);

--
-- Indexes for table `survei_guru_tmp`
--
ALTER TABLE `survei_guru_tmp`
  ADD PRIMARY KEY (`id_survei_guru_tmp`);

--
-- Indexes for table `survei_kepuasan`
--
ALTER TABLE `survei_kepuasan`
  ADD PRIMARY KEY (`id_survei_kepuasan`);

--
-- Indexes for table `survei_kepuasan_tmp`
--
ALTER TABLE `survei_kepuasan_tmp`
  ADD PRIMARY KEY (`id_survei_kepuasan_tmp`);

--
-- Indexes for table `user_siswa`
--
ALTER TABLE `user_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aksi`
--
ALTER TABLE `aksi`
  MODIFY `id_aksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `aksi_guru`
--
ALTER TABLE `aksi_guru`
  MODIFY `id_aksi_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  MODIFY `id_aksi_guru_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  MODIFY `id_aksi_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `ampuan`
--
ALTER TABLE `ampuan`
  MODIFY `id_ampuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `aspek_kepuasan`
--
ALTER TABLE `aspek_kepuasan`
  MODIFY `id_aspek_kepuasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `kuesioner`
--
ALTER TABLE `kuesioner`
  MODIFY `id_kuesioner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `kuesioner_tmp`
--
ALTER TABLE `kuesioner_tmp`
  MODIFY `id_kuesioner_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `masukan_guru`
--
ALTER TABLE `masukan_guru`
  MODIFY `id_masukan_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `masukan_kegiatan`
--
ALTER TABLE `masukan_kegiatan`
  MODIFY `id_masukan_kegiatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa_tmp`
--
ALTER TABLE `siswa_tmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `soal_guru`
--
ALTER TABLE `soal_guru`
  MODIFY `id_soal_aspek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `soal_kepuasan`
--
ALTER TABLE `soal_kepuasan`
  MODIFY `id_soal_kepuasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `survei_guru`
--
ALTER TABLE `survei_guru`
  MODIFY `id_survei_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `survei_guru_tmp`
--
ALTER TABLE `survei_guru_tmp`
  MODIFY `id_survei_guru_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `survei_kepuasan`
--
ALTER TABLE `survei_kepuasan`
  MODIFY `id_survei_kepuasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survei_kepuasan_tmp`
--
ALTER TABLE `survei_kepuasan_tmp`
  MODIFY `id_survei_kepuasan_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_siswa`
--
ALTER TABLE `user_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aksi_guru_tmp`
--
ALTER TABLE `aksi_guru_tmp`
  ADD CONSTRAINT `delete` FOREIGN KEY (`id_aksi_guru`) REFERENCES `aksi_guru` (`id_aksi_guru`) ON DELETE CASCADE;

--
-- Constraints for table `aksi_tmp`
--
ALTER TABLE `aksi_tmp`
  ADD CONSTRAINT `del` FOREIGN KEY (`id_aksi`) REFERENCES `aksi` (`id_aksi`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
