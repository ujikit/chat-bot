-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 05, 2018 at 06:13 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `man2`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nip_pegawai` varchar(20) DEFAULT NULL,
  `nama_pegawai` varchar(65) DEFAULT NULL,
  `jabatan_pegawai` varchar(15) DEFAULT NULL,
  `kd_mata_pelajaran_pegawai` varchar(20) DEFAULT NULL,
  `username_pegawai` varchar(20) DEFAULT NULL,
  `password_pegawai` varchar(255) DEFAULT NULL,
  `foto_pegawai` varchar(20) DEFAULT NULL,
  `alamat_pegawai` varchar(255) DEFAULT NULL,
  `tempat_lahir_pegawai` varchar(30) DEFAULT NULL,
  `tanggal_lahir_pegawai` date DEFAULT NULL,
  `no_handphone_pegawai` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nip_pegawai`, `nama_pegawai`, `jabatan_pegawai`, `kd_mata_pelajaran_pegawai`, `username_pegawai`, `password_pegawai`, `foto_pegawai`, `alamat_pegawai`, `tempat_lahir_pegawai`, `tanggal_lahir_pegawai`, `no_handphone_pegawai`) VALUES
(3, '1111', 'Administrator', 'admin', NULL, 'admin', '$2y$10$PXzGHL7MGkefn9McBJ2h4uBJUsAYeCW.vgDmWu/fa7myp/BKTJ0ai', NULL, NULL, NULL, NULL, NULL),
(8, '192209081999031006', 'ENDANG SULISTYONINGSIH', 'guru', 'aqh', '192209081999031006', '$2y$10$0i9SyDvzMfBaNLww3xmWYuYT8IkDZIBhiiAw57A3KvNJC6CEso/Ey', '192209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-17', '0858723621722'),
(9, '229720908199031006', 'HERYANI MULTANTRI', 'guru', 'aa', '297209081999031006', '$2y$10$SLEJkvgxiWGiiE0yHdQf3OwM28rlDnTVVBiV/BdwZZIXuKo834VUa', '297209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-10', '2258723621722'),
(10, '597209081999031006', 'BUBU ARYA', 'guru', 'aa', '297209081999031006', '$2y$10$SLEJkvgxiWGiiE0yHdQf3OwM28rlDnTVVBiV/BdwZZIXuKo834VUa', '297209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-10', '0258723621722'),
(11, '562209081999031006', 'ENDANG', 'guru', 'aqh', '562209081999031006', '$2y$10$0i9SyDvzMfBaNLww3xmWYuYT8IkDZIBhiiAw57A3KvNJC6CEso/Ey', '192209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-17', '0858723621722'),
(12, '117209081999031006', 'HERYANI', 'guru', 'iltaf', '297209081999031006', '$2y$10$SLEJkvgxiWGiiE0yHdQf3OwM28rlDnTVVBiV/BdwZZIXuKo834VUa', '117209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-10', '3258723621722'),
(13, '297209081999031006', 'HERYANI RAMADHAN UYE', 'guru', 'aa', '297209081999031006', '$2y$10$SLEJkvgxiWGiiE0yHdQf3OwM28rlDnTVVBiV/BdwZZIXuKo834VUa', '297209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-10', '8621722'),
(14, '897209081999031006', 'HARNO JULISMAN', 'guru', 'aa', '297209081999031006', '$2y$10$SLEJkvgxiWGiiE0yHdQf3OwM28rlDnTVVBiV/BdwZZIXuKo834VUa', '297209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-10', '1258723621722'),
(15, '497229081999031006', 'HARNO R', 'guru', 'aa', '297209081999031006', '$2y$10$SLEJkvgxiWGiiE0yHdQf3OwM28rlDnTVVBiV/BdwZZIXuKo834VUa', '297209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-10', '1258723621722'),
(16, '333209081999031006', 'TUKIRAN', 'guru', 'aa', '297209081999031006', '$2y$10$SLEJkvgxiWGiiE0yHdQf3OwM28rlDnTVVBiV/BdwZZIXuKo834VUa', '297209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-10', '1258723621722'),
(17, '666209081999031006', 'ENDANG', 'guru', 'pkn', '562209081999031006', '$2y$10$0i9SyDvzMfBaNLww3xmWYuYT8IkDZIBhiiAw57A3KvNJC6CEso/Ey', '192209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-17', '8858723621722'),
(18, '999720908199031006', 'HERYANI MULTANTRI RAHAYU', 'guru', 'aa', '297209081999031006', '$2y$10$SLEJkvgxiWGiiE0yHdQf3OwM28rlDnTVVBiV/BdwZZIXuKo834VUa', '297209081999031006', 'Sendangadi', 'Sendangadi', '2018-04-10', '0058723621722');

-- --------------------------------------------------------

--
-- Table structure for table `data_sekolah`
--

CREATE TABLE `data_sekolah` (
  `id_data_sekolah` varchar(11) NOT NULL,
  `nama_sekolah_data_sekolah` varchar(25) DEFAULT NULL,
  `nip_kepala_sekolah_data_sekolah` varchar(20) DEFAULT NULL,
  `nama_kepala_sekolah_data_sekolah` varchar(255) DEFAULT NULL,
  `tanggal_jadi_kepala_sekolah_data_sekolah` date DEFAULT NULL,
  `tahun_pelajaran_sekolah_data_sekolah` varchar(15) DEFAULT NULL,
  `foto_kepala_sekolah_data_sekolah` varchar(15) DEFAULT NULL,
  `alamat_sekolah_data_sekolah` varchar(255) DEFAULT NULL,
  `asal_kota_sekolah_data_sekolah` varchar(255) DEFAULT NULL,
  `email_sekolah_data_sekolah` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_sekolah`
--

INSERT INTO `data_sekolah` (`id_data_sekolah`, `nama_sekolah_data_sekolah`, `nip_kepala_sekolah_data_sekolah`, `nama_kepala_sekolah_data_sekolah`, `tanggal_jadi_kepala_sekolah_data_sekolah`, `tahun_pelajaran_sekolah_data_sekolah`, `foto_kepala_sekolah_data_sekolah`, `alamat_sekolah_data_sekolah`, `asal_kota_sekolah_data_sekolah`, `email_sekolah_data_sekolah`) VALUES
('man2jogja', 'MAN 2 Yogyakarta', '7826314225', 'Drs. H. In Amullah M.A.', '2018-02-14', '2018', NULL, 'Jl. K.H Ahmad Dahlan No. 130 Yogyakarta', 'Yogyakarta', 'Jl. K.H Ahmad Dahlan No. 130 Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id_siswa` int(7) NOT NULL,
  `nisn_siswa` varchar(25) DEFAULT NULL,
  `nis_siswa` varchar(20) DEFAULT NULL,
  `nama_siswa` varchar(65) DEFAULT NULL,
  `foto_siswa` varchar(20) DEFAULT NULL,
  `jenis_kelamin_siswa` varchar(1) DEFAULT NULL,
  `kd_kelas_daftar_siswa` varchar(15) DEFAULT NULL,
  `jabatan_siswa` varchar(25) NOT NULL,
  `alamat_siswa` varchar(20) DEFAULT NULL,
  `tempat_lahir_siswa` varchar(25) DEFAULT NULL,
  `tanggal_lahir_siswa` date DEFAULT NULL,
  `no_handphone_siswa` varchar(15) DEFAULT NULL,
  `anak_ke_siswa` varchar(3) DEFAULT NULL,
  `username_siswa` varchar(20) DEFAULT NULL,
  `password_siswa` varchar(255) DEFAULT NULL,
  `agama_siswa` varchar(20) DEFAULT NULL,
  `status_dalam_keluarga_siswa` varchar(15) DEFAULT NULL,
  `diterima_tanggal_siswa` date DEFAULT NULL,
  `diterima_semester_siswa` varchar(1) DEFAULT NULL,
  `sekolah_asal_nama_siswa` varchar(25) DEFAULT NULL,
  `sekolah_asal_alamat_siswa` varchar(255) DEFAULT NULL,
  `stl_tahun_siswa` varchar(5) DEFAULT NULL,
  `stl_nomor_siswa` varchar(50) DEFAULT NULL,
  `orangtua_nama_ayah_siswa` varchar(65) DEFAULT NULL,
  `orangtua_nama_ibu_siswa` varchar(65) DEFAULT NULL,
  `orangtua_alamat_siswa` varchar(255) DEFAULT NULL,
  `orangtua_telepon_siswa` varchar(15) DEFAULT NULL,
  `orangtua_pekerjaan_ayah_siswa` varchar(25) DEFAULT NULL,
  `orangtua_pekerjaan_ibu_siswa` varchar(25) DEFAULT NULL,
  `username_wali` varchar(20) DEFAULT NULL,
  `password_wali` varchar(255) DEFAULT NULL,
  `nama_wali` varchar(65) DEFAULT NULL,
  `pekerjaan_wali` varchar(25) DEFAULT NULL,
  `jenis_kelamin_wali` varchar(1) DEFAULT NULL,
  `alamat_wali` varchar(255) DEFAULT NULL,
  `tempat_lahir_wali` varchar(25) DEFAULT NULL,
  `tanggal_lahir_wali` date DEFAULT NULL,
  `no_handphone_wali` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id_siswa`, `nisn_siswa`, `nis_siswa`, `nama_siswa`, `foto_siswa`, `jenis_kelamin_siswa`, `kd_kelas_daftar_siswa`, `jabatan_siswa`, `alamat_siswa`, `tempat_lahir_siswa`, `tanggal_lahir_siswa`, `no_handphone_siswa`, `anak_ke_siswa`, `username_siswa`, `password_siswa`, `agama_siswa`, `status_dalam_keluarga_siswa`, `diterima_tanggal_siswa`, `diterima_semester_siswa`, `sekolah_asal_nama_siswa`, `sekolah_asal_alamat_siswa`, `stl_tahun_siswa`, `stl_nomor_siswa`, `orangtua_nama_ayah_siswa`, `orangtua_nama_ibu_siswa`, `orangtua_alamat_siswa`, `orangtua_telepon_siswa`, `orangtua_pekerjaan_ayah_siswa`, `orangtua_pekerjaan_ibu_siswa`, `username_wali`, `password_wali`, `nama_wali`, `pekerjaan_wali`, `jenis_kelamin_wali`, `alamat_wali`, `tempat_lahir_wali`, `tanggal_lahir_wali`, `no_handphone_wali`) VALUES
(10, '0044735860', '10888', 'Harni Ramziyah', '10888', 'P', '10ipa1', 'siswa', 'Yogyakarta', 'Yogyakarta', '2018-04-03', '08524712423', '2', '10888', '$2y$10$.RojvW.91C/Rq/BrsNUCsuOXxTm0oBWoj/69.lJtd.PCCnkgqVwi2', 'Islam', 'Anak', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '10888', '$2y$10$.RojvW.91C/Rq/BrsNUCsuOXxTm0oBWoj/69.lJtd.PCCnkgqVwi2', '', '', '', '', '', '0000-00-00', ''),
(12, '2145310829', '35860', 'Addisty Ayu Rinjani', '35860', 'P', '10ipa1', 'siswa', 'Yogyakarta', 'Yogyakarta', '2018-04-26', '08524712423', '2', '35860', '$2y$10$Kmb1GQdm91u9rmgfbQWAZ.QvESpoUmlLjWHiXRs6dqFNGshQGn9Dm', 'Islam', 'Anak', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '35860', '$2y$10$Kmb1GQdm91u9rmgfbQWAZ.QvESpoUmlLjWHiXRs6dqFNGshQGn9Dm', '', '', '', '', '', '0000-00-00', ''),
(13, '345310829', '310829', 'Jason Mraz', '211110829', 'P', '10ipa1', 'siswa', 'Yogyakarta', 'Yogyakarta', '2018-04-10', '08524712423', '2', '310829', '$2y$10$Lrkf34wvfRQmTfhL542gAeAw9P8L9uScpmsT6HTEk6yRP5IWXhhJO', 'Islam', 'Anak', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '310829', '$2y$10$Lrkf34wvfRQmTfhL542gAeAw9P8L9uScpmsT6HTEk6yRP5IWXhhJO', '', '', '', '', '', '0000-00-00', ''),
(14, '7145310829', '829', 'Sarjono Multantri', '829', 'P', '10ipa2', 'siswa', 'Yogyakarta', 'Yogyakarta', '2018-05-01', '08524712423', '2', '829', '$2y$10$xlEhBH9APsuGxJrCxMMNu.eVvCjDYjNh/6vhR2FX.7VikVJ3EpnS.', 'Islam', 'Anak', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '829', '$2y$10$xlEhBH9APsuGxJrCxMMNu.eVvCjDYjNh/6vhR2FX.7VikVJ3EpnS.', '', '', '', '', '', '0000-00-00', ''),
(15, '645310829', '645', 'Achmad Ramzi Adriansyah', '645', 'L', '10ipa2', 'siswa', 'Yogyakarta', 'Yogyakarta', '2018-04-19', '08524712423', '2', '645', '$2y$10$JudubVLsTVuf2ExWY3FszugK6ehAmXHnzI8H1uKjEznXEbAP38dKC', 'Islam', 'Anak', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '645', '$2y$10$JudubVLsTVuf2ExWY3FszugK6ehAmXHnzI8H1uKjEznXEbAP38dKC', '', '', '', '', '', '0000-00-00', ''),
(16, '24532210829', '5555', 'Jason Mraz Uyeeez', '310829', 'P', '10ipa1', 'siswa', 'Yogyakarta', 'Yogyakarta', '2018-04-10', '08524712423', '2', '310829', '$2y$10$Lrkf34wvfRQmTfhL542gAeAw9P8L9uScpmsT6HTEk6yRP5IWXhhJO', 'Islam', 'Anak', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '310829', '$2y$10$Lrkf34wvfRQmTfhL542gAeAw9P8L9uScpmsT6HTEk6yRP5IWXhhJO', '', '', '', '', '', '0000-00-00', '5555');

-- --------------------------------------------------------

--
-- Table structure for table `data_wali`
--

CREATE TABLE `data_wali` (
  `id_wali` int(11) NOT NULL,
  `nis_siswa_wali` varchar(25) DEFAULT NULL,
  `username_wali` varchar(25) DEFAULT NULL,
  `password_wali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_wali`
--

INSERT INTO `data_wali` (`id_wali`, `nis_siswa_wali`, `username_wali`, `password_wali`) VALUES
(10, '10888', '10888wali', '$2y$10$.RojvW.91C/Rq/BrsNUCsuOXxTm0oBWoj/69.lJtd.PCCnkgqVwi2'),
(12, '35860', '35860wali', '$2y$10$Kmb1GQdm91u9rmgfbQWAZ.QvESpoUmlLjWHiXRs6dqFNGshQGn9Dm'),
(13, '310829', '310829wali', '$2y$10$Lrkf34wvfRQmTfhL542gAeAw9P8L9uScpmsT6HTEk6yRP5IWXhhJO'),
(14, '829', '829wali', '$2y$10$xlEhBH9APsuGxJrCxMMNu.eVvCjDYjNh/6vhR2FX.7VikVJ3EpnS.'),
(15, '645', '645wali', '$2y$10$JudubVLsTVuf2ExWY3FszugK6ehAmXHnzI8H1uKjEznXEbAP38dKC');

-- --------------------------------------------------------

--
-- Table structure for table `data_website`
--

CREATE TABLE `data_website` (
  `id_data_website` int(11) NOT NULL,
  `hubungi_kami_data_website` varchar(15) DEFAULT NULL,
  `email_data_website` varchar(100) DEFAULT NULL,
  `marquee_data_website` tinytext,
  `judul_konten_slide_data_website` tinytext,
  `isi_konten_slide_data_website` text,
  `gambar_slide_data_website` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_website`
--

INSERT INTO `data_website` (`id_data_website`, `hubungi_kami_data_website`, `email_data_website`, `marquee_data_website`, `judul_konten_slide_data_website`, `isi_konten_slide_data_website`, `gambar_slide_data_website`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guru_kompetensi_dasar_smt1`
--

CREATE TABLE `guru_kompetensi_dasar_smt1` (
  `id_guru_kompetensi_dasar_smt1` int(11) NOT NULL,
  `guru_kompetensi_dasar_pengetahuan_noKI_smt1` varchar(25) DEFAULT NULL,
  `guru_kompetensi_dasar_pengetahuan_noKD_smt1` varchar(25) DEFAULT NULL,
  `guru_kompetensi_dasar_pengetahuan_noDKD_smt1` text,
  `guru_kompetensi_dasar_nip_pegawai_smt1` varchar(20) DEFAULT NULL,
  `guru_kompetensi_dasar_kd_mata_pelajaran_smt1` varchar(20) DEFAULT NULL,
  `guru_kompetensi_dasar_kd_kelas_daftar_smt1` varchar(15) DEFAULT NULL,
  `guru_kompetensi_dasar_semester_smt1` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_kompetensi_dasar_smt1`
--

INSERT INTO `guru_kompetensi_dasar_smt1` (`id_guru_kompetensi_dasar_smt1`, `guru_kompetensi_dasar_pengetahuan_noKI_smt1`, `guru_kompetensi_dasar_pengetahuan_noKD_smt1`, `guru_kompetensi_dasar_pengetahuan_noDKD_smt1`, `guru_kompetensi_dasar_nip_pegawai_smt1`, `guru_kompetensi_dasar_kd_mata_pelajaran_smt1`, `guru_kompetensi_dasar_kd_kelas_daftar_smt1`, `guru_kompetensi_dasar_semester_smt1`) VALUES
(1, '3', '3.1', 'ke 12', '197209081999031006', 'aa', '10ipa1', 1),
(2, '3', '3.2', 'ke 2', '197209081999031006', 'aa', '10ipa1', 1),
(3, '3', '3.3', 'ke 3', '197209081999031006', 'aa', '10ipa1', 1),
(4, '3', '3.4', 'ke 4', '197209081999031006', 'aa', '10ipa1', 1),
(5, '3', '3.5', 'ke 5', '197209081999031006', 'aa', '10ipa1', 1),
(6, '3', '3.6', 'ke 6', '197209081999031006', 'aa', '10ipa1', 1),
(7, '3', '3.7', 'ke 7', '197209081999031006', 'aa', '10ipa1', 1),
(8, '3', '3.8', 'ke 8', '197209081999031006', 'aa', '10ipa1', 1),
(9, '3', '3.9', 'ke 9', '197209081999031006', 'aa', '10ipa1', 1),
(10, '3', '3.10', 'ke 10', '197209081999031006', 'aa', '10ipa1', 1),
(11, '3', '3.1', '', '192209081999031006', 'aqh', '10ipa2', 1),
(12, '3', '3.2', '', '192209081999031006', 'aqh', '10ipa2', 1),
(13, '3', '3.3', '', '192209081999031006', 'aqh', '10ipa2', 1),
(14, '3', '3.4', '', '192209081999031006', 'aqh', '10ipa2', 1),
(15, '3', '3.5', '', '192209081999031006', 'aqh', '10ipa2', 1),
(16, '3', '3.6', '', '192209081999031006', 'aqh', '10ipa2', 1),
(17, '3', '3.7', '', '192209081999031006', 'aqh', '10ipa2', 1),
(18, '3', '3.8', '', '192209081999031006', 'aqh', '10ipa2', 1),
(19, '3', '3.9', '', '192209081999031006', 'aqh', '10ipa2', 1),
(20, '3', '3.10', '', '192209081999031006', 'aqh', '10ipa2', 1),
(21, '3', '3.1', '', '192209081999031006', 'aqh', '10ipa1', 1),
(22, '3', '3.2', '', '192209081999031006', 'aqh', '10ipa1', 1),
(23, '3', '3.3', '', '192209081999031006', 'aqh', '10ipa1', 1),
(24, '3', '3.4', '', '192209081999031006', 'aqh', '10ipa1', 1),
(25, '3', '3.5', '', '192209081999031006', 'aqh', '10ipa1', 1),
(26, '3', '3.6', '', '192209081999031006', 'aqh', '10ipa1', 1),
(27, '3', '3.7', '', '192209081999031006', 'aqh', '10ipa1', 1),
(28, '3', '3.8', '', '192209081999031006', 'aqh', '10ipa1', 1),
(29, '3', '3.9', '', '192209081999031006', 'aqh', '10ipa1', 1),
(30, '3', '3.10', '', '192209081999031006', 'aqh', '10ipa1', 1),
(31, '3', '3.1', 'ke 12', '197209081999031006', 'aa', '10ipa1', 1),
(32, '3', '3.2', 'ke 2', '197209081999031006', 'aa', '10ipa1', 1),
(33, '3', '3.3', 'ke 3', '197209081999031006', 'aa', '10ipa1', 1),
(34, '3', '3.4', 'ke 4', '197209081999031006', 'aa', '10ipa1', 1),
(35, '3', '3.5', 'ke 5', '197209081999031006', 'aa', '10ipa1', 1),
(36, '3', '3.6', 'ke 6', '197209081999031006', 'aa', '10ipa1', 1),
(37, '3', '3.7', 'ke 7', '197209081999031006', 'aa', '10ipa1', 1),
(38, '3', '3.8', 'ke 8', '197209081999031006', 'aa', '10ipa1', 1),
(39, '3', '3.9', 'ke 9', '197209081999031006', 'aa', '10ipa1', 1),
(40, '3', '3.10', 'ke 10', '197209081999031006', 'aa', '10ipa1', 1),
(41, '3', '3.1', '', '192209081999031006', 'aqh', '10ipa1', 1),
(42, '3', '3.2', '', '192209081999031006', 'aqh', '10ipa1', 1),
(43, '3', '3.3', '', '192209081999031006', 'aqh', '10ipa1', 1),
(44, '3', '3.4', '', '192209081999031006', 'aqh', '10ipa1', 1),
(45, '3', '3.5', '', '192209081999031006', 'aqh', '10ipa1', 1),
(46, '3', '3.6', '', '192209081999031006', 'aqh', '10ipa1', 1),
(47, '3', '3.7', '', '192209081999031006', 'aqh', '10ipa1', 1),
(48, '3', '3.8', '', '192209081999031006', 'aqh', '10ipa1', 1),
(49, '3', '3.9', '', '192209081999031006', 'aqh', '10ipa1', 1),
(50, '3', '3.10', '', '192209081999031006', 'aqh', '10ipa1', 1),
(51, '3', '3.1', 'ke 12', '197209081999031006', 'aa', '10ipa1', 1),
(52, '3', '3.2', 'ke 2', '197209081999031006', 'aa', '10ipa1', 1),
(53, '3', '3.3', 'ke 3', '197209081999031006', 'aa', '10ipa1', 1),
(54, '3', '3.4', 'ke 4', '197209081999031006', 'aa', '10ipa1', 1),
(55, '3', '3.5', 'ke 5', '197209081999031006', 'aa', '10ipa1', 1),
(56, '3', '3.6', 'ke 6', '197209081999031006', 'aa', '10ipa1', 1),
(57, '3', '3.7', 'ke 7', '197209081999031006', 'aa', '10ipa1', 1),
(58, '3', '3.8', 'ke 8', '197209081999031006', 'aa', '10ipa1', 1),
(59, '3', '3.9', 'ke 9', '197209081999031006', 'aa', '10ipa1', 1),
(60, '3', '3.10', 'ke 10', '197209081999031006', 'aa', '10ipa1', 1),
(61, '3', '3.1', 'ke 12', '197209081999031006', 'aa', '10ipa1', 1),
(62, '3', '3.2', 'ke 2', '197209081999031006', 'aa', '10ipa1', 1),
(63, '3', '3.3', 'ke 3', '197209081999031006', 'aa', '10ipa1', 1),
(64, '3', '3.4', 'ke 4', '197209081999031006', 'aa', '10ipa1', 1),
(65, '3', '3.5', 'ke 5', '197209081999031006', 'aa', '10ipa1', 1),
(66, '3', '3.6', 'ke 6', '197209081999031006', 'aa', '10ipa1', 1),
(67, '3', '3.7', 'ke 7', '197209081999031006', 'aa', '10ipa1', 1),
(68, '3', '3.8', 'ke 8', '197209081999031006', 'aa', '10ipa1', 1),
(69, '3', '3.9', 'ke 9', '197209081999031006', 'aa', '10ipa1', 1),
(70, '3', '3.10', 'ke 10', '197209081999031006', 'aa', '10ipa1', 1),
(71, '3', '3.1', 'ke 12', '197209081999031006', 'aa', '10ipa1', 1),
(72, '3', '3.2', 'ke 2', '197209081999031006', 'aa', '10ipa1', 1),
(73, '3', '3.3', 'ke 3', '197209081999031006', 'aa', '10ipa1', 1),
(74, '3', '3.4', 'ke 4', '197209081999031006', 'aa', '10ipa1', 1),
(75, '3', '3.5', 'ke 5', '197209081999031006', 'aa', '10ipa1', 1),
(76, '3', '3.6', 'ke 6', '197209081999031006', 'aa', '10ipa1', 1),
(77, '3', '3.7', 'ke 7', '197209081999031006', 'aa', '10ipa1', 1),
(78, '3', '3.8', 'ke 8', '197209081999031006', 'aa', '10ipa1', 1),
(79, '3', '3.9', 'ke 9', '197209081999031006', 'aa', '10ipa1', 1),
(80, '3', '3.10', 'ke 10', '197209081999031006', 'aa', '10ipa1', 1),
(81, '3', '3.1', 'ke 12', '197209081999031006', 'aa', '10ipa1', 1),
(82, '3', '3.2', 'ke 2', '197209081999031006', 'aa', '10ipa1', 1),
(83, '3', '3.3', 'ke 3', '197209081999031006', 'aa', '10ipa1', 1),
(84, '3', '3.4', 'ke 4', '197209081999031006', 'aa', '10ipa1', 1),
(85, '3', '3.5', 'ke 5', '197209081999031006', 'aa', '10ipa1', 1),
(86, '3', '3.6', 'ke 6', '197209081999031006', 'aa', '10ipa1', 1),
(87, '3', '3.7', 'ke 7', '197209081999031006', 'aa', '10ipa1', 1),
(88, '3', '3.8', 'ke 8', '197209081999031006', 'aa', '10ipa1', 1),
(89, '3', '3.9', 'ke 9', '197209081999031006', 'aa', '10ipa1', 1),
(90, '3', '3.10', 'ke 10', '197209081999031006', 'aa', '10ipa1', 1),
(91, '3', '3.1', '', '197209081999031006', 'aa', '10ipa2', 1),
(92, '3', '3.2', '', '197209081999031006', 'aa', '10ipa2', 1),
(93, '3', '3.3', '', '197209081999031006', 'aa', '10ipa2', 1),
(94, '3', '3.4', '', '197209081999031006', 'aa', '10ipa2', 1),
(95, '3', '3.5', '', '197209081999031006', 'aa', '10ipa2', 1),
(96, '3', '3.6', '', '197209081999031006', 'aa', '10ipa2', 1),
(97, '3', '3.7', '', '197209081999031006', 'aa', '10ipa2', 1),
(98, '3', '3.8', '', '197209081999031006', 'aa', '10ipa2', 1),
(99, '3', '3.9', '', '197209081999031006', 'aa', '10ipa2', 1),
(100, '3', '3.10', '', '197209081999031006', 'aa', '10ipa2', 1),
(101, '3', '3.1', '', '192209081999031006', 'aqh', '10ipa1', 1),
(102, '3', '3.2', '', '192209081999031006', 'aqh', '10ipa1', 1),
(103, '3', '3.3', '', '192209081999031006', 'aqh', '10ipa1', 1),
(104, '3', '3.4', '', '192209081999031006', 'aqh', '10ipa1', 1),
(105, '3', '3.5', '', '192209081999031006', 'aqh', '10ipa1', 1),
(106, '3', '3.6', '', '192209081999031006', 'aqh', '10ipa1', 1),
(107, '3', '3.7', '', '192209081999031006', 'aqh', '10ipa1', 1),
(108, '3', '3.8', '', '192209081999031006', 'aqh', '10ipa1', 1),
(109, '3', '3.9', '', '192209081999031006', 'aqh', '10ipa1', 1),
(110, '3', '3.10', '', '192209081999031006', 'aqh', '10ipa1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guru_kompetensi_dasar_smt2`
--

CREATE TABLE `guru_kompetensi_dasar_smt2` (
  `id_guru_kompetensi_dasar_smt2` int(11) NOT NULL,
  `guru_kompetensi_dasar_pengetahuan_noKI_smt2` varchar(25) DEFAULT NULL,
  `guru_kompetensi_dasar_pengetahuan_noKD_smt2` varchar(25) DEFAULT NULL,
  `guru_kompetensi_dasar_pengetahuan_noDKD_smt2` text,
  `guru_kompetensi_dasar_nip_pegawai_smt2` varchar(20) DEFAULT NULL,
  `guru_kompetensi_dasar_kd_mata_pelajaran_smt2` varchar(20) DEFAULT NULL,
  `guru_kompetensi_dasar_kd_kelas_daftar_smt2` varchar(15) DEFAULT NULL,
  `guru_kompetensi_dasar_semester_smt2` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru_kompetensi_dasar_smt2`
--

INSERT INTO `guru_kompetensi_dasar_smt2` (`id_guru_kompetensi_dasar_smt2`, `guru_kompetensi_dasar_pengetahuan_noKI_smt2`, `guru_kompetensi_dasar_pengetahuan_noKD_smt2`, `guru_kompetensi_dasar_pengetahuan_noDKD_smt2`, `guru_kompetensi_dasar_nip_pegawai_smt2`, `guru_kompetensi_dasar_kd_mata_pelajaran_smt2`, `guru_kompetensi_dasar_kd_kelas_daftar_smt2`, `guru_kompetensi_dasar_semester_smt2`) VALUES
(1, '3', '3.11', 'ke 11', '197209081999031006', 'aa', '10ipa1', 2),
(2, '3', '3.12', 'ke 12', '197209081999031006', 'aa', '10ipa1', 2),
(3, '3', '3.13', 'ke 13', '197209081999031006', 'aa', '10ipa1', 2),
(4, '3', '3.14', 'ke 14', '197209081999031006', 'aa', '10ipa1', 2),
(5, '3', '3.15', 'ke 15', '197209081999031006', 'aa', '10ipa1', 2),
(6, '3', '3.16', 'ke 16', '197209081999031006', 'aa', '10ipa1', 2),
(7, '3', '3.17', 'ke 17', '197209081999031006', 'aa', '10ipa1', 2),
(8, '3', '3.18', 'ke 18', '197209081999031006', 'aa', '10ipa1', 2),
(9, '3', '3.19', 'ke 19', '197209081999031006', 'aa', '10ipa1', 2),
(10, '3', '3.20', 'ke 200', '197209081999031006', 'aa', '10ipa1', 2),
(11, '3', '3.11', '', '192209081999031006', 'aqh', '10ipa2', 2),
(12, '3', '3.12', '', '192209081999031006', 'aqh', '10ipa2', 2),
(13, '3', '3.13', '', '192209081999031006', 'aqh', '10ipa2', 2),
(14, '3', '3.14', '', '192209081999031006', 'aqh', '10ipa2', 2),
(15, '3', '3.15', '', '192209081999031006', 'aqh', '10ipa2', 2),
(16, '3', '3.16', '', '192209081999031006', 'aqh', '10ipa2', 2),
(17, '3', '3.17', '', '192209081999031006', 'aqh', '10ipa2', 2),
(18, '3', '3.18', '', '192209081999031006', 'aqh', '10ipa2', 2),
(19, '3', '3.19', '', '192209081999031006', 'aqh', '10ipa2', 2),
(20, '3', '3.20', '', '192209081999031006', 'aqh', '10ipa2', 2),
(21, '3', '3.11', '', '192209081999031006', 'aqh', '10ipa1', 2),
(22, '3', '3.12', '', '192209081999031006', 'aqh', '10ipa1', 2),
(23, '3', '3.13', '', '192209081999031006', 'aqh', '10ipa1', 2),
(24, '3', '3.14', '', '192209081999031006', 'aqh', '10ipa1', 2),
(25, '3', '3.15', '', '192209081999031006', 'aqh', '10ipa1', 2),
(26, '3', '3.16', '', '192209081999031006', 'aqh', '10ipa1', 2),
(27, '3', '3.17', '', '192209081999031006', 'aqh', '10ipa1', 2),
(28, '3', '3.18', '', '192209081999031006', 'aqh', '10ipa1', 2),
(29, '3', '3.19', '', '192209081999031006', 'aqh', '10ipa1', 2),
(30, '3', '3.20', '', '192209081999031006', 'aqh', '10ipa1', 2),
(31, '3', '3.11', 'ke 11', '197209081999031006', 'aa', '10ipa1', 2),
(32, '3', '3.12', 'ke 12', '197209081999031006', 'aa', '10ipa1', 2),
(33, '3', '3.13', 'ke 13', '197209081999031006', 'aa', '10ipa1', 2),
(34, '3', '3.14', 'ke 14', '197209081999031006', 'aa', '10ipa1', 2),
(35, '3', '3.15', 'ke 15', '197209081999031006', 'aa', '10ipa1', 2),
(36, '3', '3.16', 'ke 16', '197209081999031006', 'aa', '10ipa1', 2),
(37, '3', '3.17', 'ke 17', '197209081999031006', 'aa', '10ipa1', 2),
(38, '3', '3.18', 'ke 18', '197209081999031006', 'aa', '10ipa1', 2),
(39, '3', '3.19', 'ke 19', '197209081999031006', 'aa', '10ipa1', 2),
(40, '3', '3.20', 'ke 200', '197209081999031006', 'aa', '10ipa1', 2),
(41, '3', '3.11', '', '192209081999031006', 'aqh', '10ipa1', 2),
(42, '3', '3.12', '', '192209081999031006', 'aqh', '10ipa1', 2),
(43, '3', '3.13', '', '192209081999031006', 'aqh', '10ipa1', 2),
(44, '3', '3.14', '', '192209081999031006', 'aqh', '10ipa1', 2),
(45, '3', '3.15', '', '192209081999031006', 'aqh', '10ipa1', 2),
(46, '3', '3.16', '', '192209081999031006', 'aqh', '10ipa1', 2),
(47, '3', '3.17', '', '192209081999031006', 'aqh', '10ipa1', 2),
(48, '3', '3.18', '', '192209081999031006', 'aqh', '10ipa1', 2),
(49, '3', '3.19', '', '192209081999031006', 'aqh', '10ipa1', 2),
(50, '3', '3.20', '', '192209081999031006', 'aqh', '10ipa1', 2),
(51, '3', '3.11', 'ke 11', '197209081999031006', 'aa', '10ipa1', 2),
(52, '3', '3.12', 'ke 12', '197209081999031006', 'aa', '10ipa1', 2),
(53, '3', '3.13', 'ke 13', '197209081999031006', 'aa', '10ipa1', 2),
(54, '3', '3.14', 'ke 14', '197209081999031006', 'aa', '10ipa1', 2),
(55, '3', '3.15', 'ke 15', '197209081999031006', 'aa', '10ipa1', 2),
(56, '3', '3.16', 'ke 16', '197209081999031006', 'aa', '10ipa1', 2),
(57, '3', '3.17', 'ke 17', '197209081999031006', 'aa', '10ipa1', 2),
(58, '3', '3.18', 'ke 18', '197209081999031006', 'aa', '10ipa1', 2),
(59, '3', '3.19', 'ke 19', '197209081999031006', 'aa', '10ipa1', 2),
(60, '3', '3.20', 'ke 200', '197209081999031006', 'aa', '10ipa1', 2),
(61, '3', '3.11', 'ke 11', '197209081999031006', 'aa', '10ipa1', 2),
(62, '3', '3.12', 'ke 12', '197209081999031006', 'aa', '10ipa1', 2),
(63, '3', '3.13', 'ke 13', '197209081999031006', 'aa', '10ipa1', 2),
(64, '3', '3.14', 'ke 14', '197209081999031006', 'aa', '10ipa1', 2),
(65, '3', '3.15', 'ke 15', '197209081999031006', 'aa', '10ipa1', 2),
(66, '3', '3.16', 'ke 16', '197209081999031006', 'aa', '10ipa1', 2),
(67, '3', '3.17', 'ke 17', '197209081999031006', 'aa', '10ipa1', 2),
(68, '3', '3.18', 'ke 18', '197209081999031006', 'aa', '10ipa1', 2),
(69, '3', '3.19', 'ke 19', '197209081999031006', 'aa', '10ipa1', 2),
(70, '3', '3.20', 'ke 200', '197209081999031006', 'aa', '10ipa1', 2),
(71, '3', '3.11', 'ke 11', '197209081999031006', 'aa', '10ipa1', 2),
(72, '3', '3.12', 'ke 12', '197209081999031006', 'aa', '10ipa1', 2),
(73, '3', '3.13', 'ke 13', '197209081999031006', 'aa', '10ipa1', 2),
(74, '3', '3.14', 'ke 14', '197209081999031006', 'aa', '10ipa1', 2),
(75, '3', '3.15', 'ke 15', '197209081999031006', 'aa', '10ipa1', 2),
(76, '3', '3.16', 'ke 16', '197209081999031006', 'aa', '10ipa1', 2),
(77, '3', '3.17', 'ke 17', '197209081999031006', 'aa', '10ipa1', 2),
(78, '3', '3.18', 'ke 18', '197209081999031006', 'aa', '10ipa1', 2),
(79, '3', '3.19', 'ke 19', '197209081999031006', 'aa', '10ipa1', 2),
(80, '3', '3.20', 'ke 200', '197209081999031006', 'aa', '10ipa1', 2),
(81, '3', '3.11', 'ke 11', '197209081999031006', 'aa', '10ipa1', 2),
(82, '3', '3.12', 'ke 12', '197209081999031006', 'aa', '10ipa1', 2),
(83, '3', '3.13', 'ke 13', '197209081999031006', 'aa', '10ipa1', 2),
(84, '3', '3.14', 'ke 14', '197209081999031006', 'aa', '10ipa1', 2),
(85, '3', '3.15', 'ke 15', '197209081999031006', 'aa', '10ipa1', 2),
(86, '3', '3.16', 'ke 16', '197209081999031006', 'aa', '10ipa1', 2),
(87, '3', '3.17', 'ke 17', '197209081999031006', 'aa', '10ipa1', 2),
(88, '3', '3.18', 'ke 18', '197209081999031006', 'aa', '10ipa1', 2),
(89, '3', '3.19', 'ke 19', '197209081999031006', 'aa', '10ipa1', 2),
(90, '3', '3.20', 'ke 200', '197209081999031006', 'aa', '10ipa1', 2),
(91, '3', '3.11', '', '197209081999031006', 'aa', '10ipa2', 2),
(92, '3', '3.12', '', '197209081999031006', 'aa', '10ipa2', 2),
(93, '3', '3.13', '', '197209081999031006', 'aa', '10ipa2', 2),
(94, '3', '3.14', '', '197209081999031006', 'aa', '10ipa2', 2),
(95, '3', '3.15', '', '197209081999031006', 'aa', '10ipa2', 2),
(96, '3', '3.16', '', '197209081999031006', 'aa', '10ipa2', 2),
(97, '3', '3.17', '', '197209081999031006', 'aa', '10ipa2', 2),
(98, '3', '3.18', '', '197209081999031006', 'aa', '10ipa2', 2),
(99, '3', '3.19', '', '197209081999031006', 'aa', '10ipa2', 2),
(100, '3', '3.20', '', '197209081999031006', 'aa', '10ipa2', 2),
(101, '3', '3.11', '', '192209081999031006', 'aqh', '10ipa1', 2),
(102, '3', '3.12', '', '192209081999031006', 'aqh', '10ipa1', 2),
(103, '3', '3.13', '', '192209081999031006', 'aqh', '10ipa1', 2),
(104, '3', '3.14', '', '192209081999031006', 'aqh', '10ipa1', 2),
(105, '3', '3.15', '', '192209081999031006', 'aqh', '10ipa1', 2),
(106, '3', '3.16', '', '192209081999031006', 'aqh', '10ipa1', 2),
(107, '3', '3.17', '', '192209081999031006', 'aqh', '10ipa1', 2),
(108, '3', '3.18', '', '192209081999031006', 'aqh', '10ipa1', 2),
(109, '3', '3.19', '', '192209081999031006', 'aqh', '10ipa1', 2),
(110, '3', '3.20', '', '192209081999031006', 'aqh', '10ipa1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `kd_jabatan` varchar(25) NOT NULL,
  `nama_jabatan` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`kd_jabatan`, `nama_jabatan`) VALUES
('admin', 'Administrator'),
('bk', 'BK'),
('bot', 'BOT'),
('guru', 'Guru'),
('siswa', 'Siswa');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_daftar`
--

CREATE TABLE `kelas_daftar` (
  `id_kelas_daftar` int(11) NOT NULL,
  `kd_kelas_daftar` varchar(15) DEFAULT NULL,
  `nama_kelas_daftar` varchar(15) NOT NULL,
  `kelompok_kelas_daftar` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_daftar`
--

INSERT INTO `kelas_daftar` (`id_kelas_daftar`, `kd_kelas_daftar`, `nama_kelas_daftar`, `kelompok_kelas_daftar`) VALUES
(1, '10ipa1', '10 IPA 1', 'IPA'),
(2, '10ipa2', '10 IPA 2', 'IPA'),
(3, '10ipa3', '10 IPA 3', 'IPA'),
(4, '10ipa4', '10 IPA 4', 'IPA'),
(5, '10ips1', '10 IPS 1', 'IPS'),
(6, '10ips2', '10 IPS 2', 'IPS'),
(7, '10ips3', '10 IPS 3', 'IPS'),
(8, '10ips4', '10 IPS 4', 'IPS'),
(9, '10agama1', '10 AGAMA 1', 'AGAMA'),
(10, '10agama2', '10 AGAMA 2', 'AGAMA'),
(11, '10agama3', '10 AGAMA 3', 'AGAMA'),
(12, '10agama4', '10 AGAMA 4', 'AGAMA'),
(13, '10bahasa1', '10 BAHASA 1', 'BAHASA'),
(14, '10bahasa2', '10 BAHASA 2', 'BAHASA'),
(15, '10bahasa3', '10 BAHASA 3', 'BAHASA'),
(16, '10bahasa4', '10 BAHASA 4', 'BAHASA'),
(17, '11ipa1', '11 IPA 1', 'IPA'),
(18, '11ipa2', '11 IPA 2', 'IPA'),
(19, '11ipa3', '11 IPA 3', 'IPA'),
(20, '11ipa4', '11 IPA 4', 'IPA'),
(21, '11ips1', '11 IPS 1', 'IPS'),
(22, '11ips2', '11 IPS 2', 'IPS'),
(23, '11ips3', '11 IPS 3', 'IPS'),
(24, '11ips4', '11 IPS 4', 'IPS'),
(25, '11agama1', '11 AGAMA 1', 'AGAMA'),
(26, '11agama2', '11 AGAMA 2', 'AGAMA'),
(27, '11agama3', '11 AGAMA 3', 'AGAMA'),
(28, '11agama4', '11 AGAMA 4', 'AGAMA'),
(29, '11bahasa1', '11 BAHASA 1', 'BAHASA'),
(30, '11bahasa2', '11 BAHASA 2', 'BAHASA'),
(31, '11bahasa3', '11 BAHASA 3', 'BAHASA'),
(32, '11bahasa4', '11 BAHASA 4', 'BAHASA'),
(33, '12ipa1', '12 IPA 1', 'IPA'),
(34, '12ipa2', '12 IPA 2', 'IPA'),
(35, '12ipa3', '12 IPA 3', 'IPA'),
(36, '12ipa4', '12 IPA 4', 'IPA'),
(37, '12ips1', '12 IPS 1', 'IPS'),
(38, '12ips2', '12 IPS 2', 'IPS'),
(39, '12ips3', '12 IPS 3', 'IPS'),
(40, '12ips4', '12 IPS 4', 'IPS'),
(41, '12agama1', '12 AGAMA 1', 'AGAMA'),
(42, '12agama2', '12 AGAMA 2', 'AGAMA'),
(43, '12agama3', '12 AGAMA 3', 'AGAMA'),
(44, '12agama4', '12 AGAMA 4', 'AGAMA'),
(45, '12bahasa1', '12 BAHASA 1', 'BAHASA'),
(46, '12bahasa2', '12 BAHASA 2', 'BAHASA'),
(47, '12bahasa3', '12 BAHASA 3', 'BAHASA'),
(48, '12bahasa4', '12 BAHASA 4', 'BAHASA');

-- --------------------------------------------------------

--
-- Table structure for table `kelas_transaksi`
--

CREATE TABLE `kelas_transaksi` (
  `id_kelas_transaksi` int(11) NOT NULL,
  `kd_kelas_daftar_kelas_transaksi` varchar(20) DEFAULT NULL,
  `nip_pegawai_wali_kelas_transaksi` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas_transaksi`
--

INSERT INTO `kelas_transaksi` (`id_kelas_transaksi`, `kd_kelas_daftar_kelas_transaksi`, `nip_pegawai_wali_kelas_transaksi`) VALUES
(9, '10ipa1', '197209081999031006'),
(10, '10ipa2', '192209081999031006');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id_mata_pelajaran` int(11) NOT NULL,
  `kd_mata_pelajaran` varchar(15) DEFAULT NULL,
  `nama_mata_pelajaran` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mata_pelajaran`, `kd_mata_pelajaran`, `nama_mata_pelajaran`) VALUES
(1, 'aqh', 'Al-Qur\'an Hadis'),
(2, 'aa', 'Akidah Akhlak'),
(3, 'fkh', 'Fikih'),
(4, 'ski', 'Sejarah Kebudayaan Islam'),
(5, 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan'),
(6, 'mtk', 'Matematika'),
(7, 'bindo', 'Bahasa Indonesia'),
(8, 'bing', 'Bahasa Inggris'),
(9, 'senbud', 'Seni Budaya'),
(10, 'penjas', 'Pendidikan Jasmani, Olahraga dan Kesehat'),
(11, 'pkk', 'Prakarya dan Kewirausahaan'),
(12, 'mtkIPA', 'Matematika 2'),
(13, 'bio', 'Biologi'),
(14, 'fis', 'Fisika'),
(15, 'kim', 'Kimia'),
(16, 'geo', 'Geografi'),
(17, 'sej', 'Sejarah'),
(18, 'sos', 'Sosiologi'),
(19, 'eko', 'Ekonomi'),
(20, 'iltaf', 'Tafsir - Ilmu Tafsir'),
(21, 'ilhad', 'Hadis - Ilmu Hadis'),
(22, 'usfik', 'Fikih - Ushul Fikih'),
(23, 'ilkal', 'Ilmu Kalam'),
(24, 'akhAGAMA', 'Akhlak'),
(25, 'barabAGAMA', 'Bahasa Arab 2'),
(26, 'sasind', 'Bahasa dan Sastra Indonesia'),
(27, 'sasing', 'Bahasa dan Sastra Inggris'),
(28, 'bjer', 'Bahasa Jerman'),
(29, 'bjep', 'Bahasa Jepang'),
(30, 'antro', 'Antropologi'),
(31, 'bjawa', 'Bahasa Jawa'),
(32, 'ppmb', 'PPMB'),
(33, 'tik', 'Teknologi Informasi dan Komunikasi');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran_transaksi`
--

CREATE TABLE `mata_pelajaran_transaksi` (
  `id_mata_pelajaran_transaksi` int(11) NOT NULL,
  `kkm_rendah_mata_pelajaran_transaksi` varchar(7) DEFAULT NULL,
  `kkm_tengah_mata_pelajaran_transaksi` varchar(7) DEFAULT NULL,
  `kkm_tinggi_mata_pelajaran_transaksi` varchar(7) DEFAULT NULL,
  `kd_kelas_daftar_mata_pelajaran_transaksi` varchar(15) DEFAULT NULL,
  `kd_mata_pelajaran_transaksi` varchar(65) DEFAULT NULL,
  `nip_pegawai_mata_pelajaran_transaksi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_pelajaran_transaksi`
--

INSERT INTO `mata_pelajaran_transaksi` (`id_mata_pelajaran_transaksi`, `kkm_rendah_mata_pelajaran_transaksi`, `kkm_tengah_mata_pelajaran_transaksi`, `kkm_tinggi_mata_pelajaran_transaksi`, `kd_kelas_daftar_mata_pelajaran_transaksi`, `kd_mata_pelajaran_transaksi`, `nip_pegawai_mata_pelajaran_transaksi`) VALUES
(9, '74', '83', '91', '10ipa1', 'aa', '197209081999031006'),
(10, '55', NULL, NULL, '10ipa2', 'aa', '197209081999031006'),
(11, '90', NULL, NULL, '10ipa1', 'aqh', '192209081999031006');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_siswa_transaksi_smt1_pengetahuan`
--

CREATE TABLE `nilai_siswa_transaksi_smt1_pengetahuan` (
  `id_nilai_siswa_transaksi_smt1_pengetahuan` int(11) NOT NULL,
  `nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan` varchar(20) DEFAULT NULL,
  `kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan` varchar(15) DEFAULT NULL,
  `kd_mata_pelajaran_nilai_siswa_transaksi_smt1_pengetahuan` varchar(10) DEFAULT NULL,
  `nama_mata_pelajaran_nilai_siswa_transaksi_smt1_pengetahuan` varchar(40) DEFAULT NULL,
  `nip_pegawai_nilai_siswa_transaksi_smt1_pengetahuan` varchar(20) NOT NULL,
  `tes_tulis_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi1_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi2_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi3_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi4_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi5_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi6_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi7_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi8_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi9_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi10_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uts_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uts_remidi_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uts_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi11_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `nilai_akhir_nilai_siswa_transaksi_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `predikat_nilai_siswa_transaksi_smt1_pengetahuan` varchar(3) DEFAULT NULL,
  `deskripsi_nilai_siswa_transaksi_smt1_pengetahuan` text,
  `keterangan_t_tt_nilai_siswa_transaksi_smt1_pengetahuan` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_siswa_transaksi_smt1_pengetahuan`
--

INSERT INTO `nilai_siswa_transaksi_smt1_pengetahuan` (`id_nilai_siswa_transaksi_smt1_pengetahuan`, `nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan`, `kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan`, `kd_mata_pelajaran_nilai_siswa_transaksi_smt1_pengetahuan`, `nama_mata_pelajaran_nilai_siswa_transaksi_smt1_pengetahuan`, `nip_pegawai_nilai_siswa_transaksi_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi1_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi1_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi1_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi1_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi1_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi1_smt1_pengetahuan`, `uas_nilai_siswa_transaksi1_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi1_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi1_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi1_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi2_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi2_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi2_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi2_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi2_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi2_smt1_pengetahuan`, `uas_nilai_siswa_transaksi2_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi2_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi2_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi2_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi3_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi3_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi3_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi3_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi3_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi3_smt1_pengetahuan`, `uas_nilai_siswa_transaksi3_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi3_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi3_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi3_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi4_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi4_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi4_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi4_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi4_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi4_smt1_pengetahuan`, `uas_nilai_siswa_transaksi4_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi4_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi4_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi4_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi5_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi5_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi5_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi5_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi5_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi5_smt1_pengetahuan`, `uas_nilai_siswa_transaksi5_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi5_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi5_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi5_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi6_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi6_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi6_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi6_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi6_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi6_smt1_pengetahuan`, `uas_nilai_siswa_transaksi6_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi6_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi6_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi6_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi7_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi7_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi7_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi7_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi7_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi7_smt1_pengetahuan`, `uas_nilai_siswa_transaksi7_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi7_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi7_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi7_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi8_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi8_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi8_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi8_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi8_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi8_smt1_pengetahuan`, `uas_nilai_siswa_transaksi8_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi8_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi8_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi8_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi9_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi9_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi9_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi9_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi9_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi9_smt1_pengetahuan`, `uas_nilai_siswa_transaksi9_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi9_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi9_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi9_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi10_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi10_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi10_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi10_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi10_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi10_smt1_pengetahuan`, `uas_nilai_siswa_transaksi10_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi10_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi10_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi10_smt1_pengetahuan`, `uts_nilai_siswa_transaksi11_smt1_pengetahuan`, `uts_remidi_nilai_siswa_transaksi11_smt1_pengetahuan`, `na_uts_nilai_siswa_transaksi11_smt1_pengetahuan`, `uas_nilai_siswa_transaksi11_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi11_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi11_smt1_pengetahuan`, `nilai_akhir_nilai_siswa_transaksi_smt1_pengetahuan`, `predikat_nilai_siswa_transaksi_smt1_pengetahuan`, `deskripsi_nilai_siswa_transaksi_smt1_pengetahuan`, `keterangan_t_tt_nilai_siswa_transaksi_smt1_pengetahuan`) VALUES
(190, '10888', '10ipa1', 'aqh', 'Al Qur\'an Hadits', '192209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '10888', '10ipa1', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '10888', '10ipa1', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '10888', '10ipa1', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '10888', '10ipa1', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '10888', '10ipa1', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '10888', '10ipa1', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '10888', '10ipa1', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '10888', '10ipa1', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '10888', '10ipa1', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '10888', '10ipa1', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '10888', '10ipa1', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '10888', '10ipa1', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '10888', '10ipa1', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '10888', '10ipa1', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '10888', '10ipa1', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '10888', '10ipa1', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '10888', '10ipa1', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '10888', '10ipa1', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '10888', '10ipa1', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '10888', '10ipa1', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '35860', '10ipa1', 'aqh', 'Al Qur\'an Hadits', '192209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '35860', '10ipa1', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '35860', '10ipa1', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '35860', '10ipa1', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '35860', '10ipa1', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '35860', '10ipa1', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '35860', '10ipa1', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '35860', '10ipa1', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '35860', '10ipa1', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '35860', '10ipa1', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '35860', '10ipa1', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '35860', '10ipa1', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '35860', '10ipa1', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '35860', '10ipa1', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '35860', '10ipa1', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '35860', '10ipa1', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '35860', '10ipa1', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '35860', '10ipa1', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '35860', '10ipa1', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '35860', '10ipa1', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '35860', '10ipa1', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '310829', '10ipa1', 'aqh', 'Al Qur\'an Hadits', '192209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '310829', '10ipa1', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '310829', '10ipa1', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '310829', '10ipa1', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '310829', '10ipa1', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '310829', '10ipa1', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '310829', '10ipa1', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '310829', '10ipa1', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '310829', '10ipa1', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '310829', '10ipa1', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '310829', '10ipa1', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '310829', '10ipa1', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '310829', '10ipa1', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '310829', '10ipa1', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '310829', '10ipa1', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '310829', '10ipa1', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '310829', '10ipa1', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '310829', '10ipa1', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '310829', '10ipa1', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `nilai_siswa_transaksi_smt1_pengetahuan` (`id_nilai_siswa_transaksi_smt1_pengetahuan`, `nis_siswa_nilai_siswa_transaksi_smt1_pengetahuan`, `kd_kelas_daftar_nilai_siswa_transaksi_smt1_pengetahuan`, `kd_mata_pelajaran_nilai_siswa_transaksi_smt1_pengetahuan`, `nama_mata_pelajaran_nilai_siswa_transaksi_smt1_pengetahuan`, `nip_pegawai_nilai_siswa_transaksi_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi1_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi1_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi1_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi1_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi1_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi1_smt1_pengetahuan`, `uas_nilai_siswa_transaksi1_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi1_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi1_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi1_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi2_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi2_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi2_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi2_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi2_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi2_smt1_pengetahuan`, `uas_nilai_siswa_transaksi2_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi2_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi2_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi2_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi3_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi3_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi3_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi3_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi3_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi3_smt1_pengetahuan`, `uas_nilai_siswa_transaksi3_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi3_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi3_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi3_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi4_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi4_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi4_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi4_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi4_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi4_smt1_pengetahuan`, `uas_nilai_siswa_transaksi4_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi4_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi4_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi4_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi5_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi5_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi5_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi5_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi5_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi5_smt1_pengetahuan`, `uas_nilai_siswa_transaksi5_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi5_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi5_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi5_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi6_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi6_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi6_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi6_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi6_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi6_smt1_pengetahuan`, `uas_nilai_siswa_transaksi6_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi6_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi6_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi6_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi7_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi7_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi7_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi7_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi7_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi7_smt1_pengetahuan`, `uas_nilai_siswa_transaksi7_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi7_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi7_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi7_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi8_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi8_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi8_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi8_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi8_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi8_smt1_pengetahuan`, `uas_nilai_siswa_transaksi8_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi8_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi8_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi8_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi9_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi9_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi9_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi9_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi9_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi9_smt1_pengetahuan`, `uas_nilai_siswa_transaksi9_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi9_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi9_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi9_smt1_pengetahuan`, `tes_tulis_nilai_siswa_transaksi10_smt1_pengetahuan`, `observasi_nilai_siswa_transaksi10_smt1_pengetahuan`, `penugasan_nilai_siswa_transaksi10_smt1_pengetahuan`, `rerata_nilai_siswa_transaksi10_smt1_pengetahuan`, `nh_remidi_nilai_siswa_transaksi10_smt1_pengetahuan`, `nah_kd_nilai_siswa_transaksi10_smt1_pengetahuan`, `uas_nilai_siswa_transaksi10_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi10_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi10_smt1_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi10_smt1_pengetahuan`, `uts_nilai_siswa_transaksi11_smt1_pengetahuan`, `uts_remidi_nilai_siswa_transaksi11_smt1_pengetahuan`, `na_uts_nilai_siswa_transaksi11_smt1_pengetahuan`, `uas_nilai_siswa_transaksi11_smt1_pengetahuan`, `uas_remidi_nilai_siswa_transaksi11_smt1_pengetahuan`, `na_uas_nilai_siswa_transaksi11_smt1_pengetahuan`, `nilai_akhir_nilai_siswa_transaksi_smt1_pengetahuan`, `predikat_nilai_siswa_transaksi_smt1_pengetahuan`, `deskripsi_nilai_siswa_transaksi_smt1_pengetahuan`, `keterangan_t_tt_nilai_siswa_transaksi_smt1_pengetahuan`) VALUES
(272, '310829', '10ipa1', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '310829', '10ipa1', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '829', '10ipa2', 'aqh', 'Al Qur\'an Hadits', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '829', '10ipa2', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '829', '10ipa2', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '829', '10ipa2', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '829', '10ipa2', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '829', '10ipa2', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '829', '10ipa2', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '829', '10ipa2', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '829', '10ipa2', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '829', '10ipa2', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '829', '10ipa2', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '829', '10ipa2', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '829', '10ipa2', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '829', '10ipa2', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '829', '10ipa2', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '829', '10ipa2', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '829', '10ipa2', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '829', '10ipa2', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '829', '10ipa2', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '829', '10ipa2', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '829', '10ipa2', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '645', '10ipa2', 'aqh', 'Al Qur\'an Hadits', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '645', '10ipa2', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '645', '10ipa2', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '645', '10ipa2', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '645', '10ipa2', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '645', '10ipa2', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '645', '10ipa2', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '645', '10ipa2', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '645', '10ipa2', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '645', '10ipa2', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '645', '10ipa2', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '645', '10ipa2', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '645', '10ipa2', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '645', '10ipa2', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '645', '10ipa2', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '645', '10ipa2', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '645', '10ipa2', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '645', '10ipa2', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '645', '10ipa2', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '645', '10ipa2', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '645', '10ipa2', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_siswa_transaksi_smt2_pengetahuan`
--

CREATE TABLE `nilai_siswa_transaksi_smt2_pengetahuan` (
  `id_nilai_siswa_transaksi_smt2_pengetahuan` int(11) NOT NULL,
  `nis_siswa_nilai_siswa_transaksi_smt2_pengetahuan` varchar(20) DEFAULT NULL,
  `kd_kelas_daftar_nilai_siswa_transaksi_smt2_pengetahuan` varchar(15) DEFAULT NULL,
  `kd_mata_pelajaran_nilai_siswa_transaksi_smt2_pengetahuan` varchar(10) DEFAULT NULL,
  `nama_mata_pelajaran_nilai_siswa_transaksi_smt2_pengetahuan` varchar(40) DEFAULT NULL,
  `nip_pegawai_nilai_siswa_transaksi_smt2_pengetahuan` varchar(20) NOT NULL,
  `tes_tulis_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi1_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi2_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi3_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi4_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi5_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi6_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi7_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi8_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi9_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `tes_tulis_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `observasi_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `penugasan_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nh_remidi_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nah_kd_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `rerata_akhir_nilai_siswa_transaksi10_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uts_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uts_remidi_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uts_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `uas_remidi_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `na_uas_nilai_siswa_transaksi11_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `nilai_akhir_nilai_siswa_transaksi_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `predikat_nilai_siswa_transaksi_smt2_pengetahuan` varchar(3) DEFAULT NULL,
  `deskripsi_nilai_siswa_transaksi_smt2_pengetahuan` text,
  `keterangan_t_tt_nilai_siswa_transaksi_smt2_pengetahuan` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_siswa_transaksi_smt2_pengetahuan`
--

INSERT INTO `nilai_siswa_transaksi_smt2_pengetahuan` (`id_nilai_siswa_transaksi_smt2_pengetahuan`, `nis_siswa_nilai_siswa_transaksi_smt2_pengetahuan`, `kd_kelas_daftar_nilai_siswa_transaksi_smt2_pengetahuan`, `kd_mata_pelajaran_nilai_siswa_transaksi_smt2_pengetahuan`, `nama_mata_pelajaran_nilai_siswa_transaksi_smt2_pengetahuan`, `nip_pegawai_nilai_siswa_transaksi_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi1_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi1_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi1_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi1_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi1_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi1_smt2_pengetahuan`, `uas_nilai_siswa_transaksi1_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi1_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi1_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi1_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi2_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi2_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi2_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi2_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi2_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi2_smt2_pengetahuan`, `uas_nilai_siswa_transaksi2_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi2_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi2_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi2_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi3_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi3_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi3_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi3_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi3_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi3_smt2_pengetahuan`, `uas_nilai_siswa_transaksi3_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi3_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi3_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi3_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi4_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi4_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi4_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi4_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi4_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi4_smt2_pengetahuan`, `uas_nilai_siswa_transaksi4_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi4_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi4_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi4_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi5_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi5_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi5_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi5_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi5_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi5_smt2_pengetahuan`, `uas_nilai_siswa_transaksi5_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi5_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi5_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi5_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi6_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi6_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi6_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi6_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi6_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi6_smt2_pengetahuan`, `uas_nilai_siswa_transaksi6_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi6_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi6_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi6_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi7_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi7_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi7_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi7_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi7_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi7_smt2_pengetahuan`, `uas_nilai_siswa_transaksi7_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi7_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi7_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi7_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi8_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi8_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi8_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi8_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi8_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi8_smt2_pengetahuan`, `uas_nilai_siswa_transaksi8_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi8_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi8_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi8_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi9_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi9_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi9_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi9_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi9_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi9_smt2_pengetahuan`, `uas_nilai_siswa_transaksi9_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi9_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi9_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi9_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi10_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi10_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi10_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi10_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi10_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi10_smt2_pengetahuan`, `uas_nilai_siswa_transaksi10_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi10_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi10_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi10_smt2_pengetahuan`, `uts_nilai_siswa_transaksi11_smt2_pengetahuan`, `uts_remidi_nilai_siswa_transaksi11_smt2_pengetahuan`, `na_uts_nilai_siswa_transaksi11_smt2_pengetahuan`, `uas_nilai_siswa_transaksi11_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi11_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi11_smt2_pengetahuan`, `nilai_akhir_nilai_siswa_transaksi_smt2_pengetahuan`, `predikat_nilai_siswa_transaksi_smt2_pengetahuan`, `deskripsi_nilai_siswa_transaksi_smt2_pengetahuan`, `keterangan_t_tt_nilai_siswa_transaksi_smt2_pengetahuan`) VALUES
(190, '10888', '10ipa1', 'aqh', 'Al Qur\'an Hadits', '192209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '10888', '10ipa1', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '10888', '10ipa1', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '10888', '10ipa1', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '10888', '10ipa1', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '10888', '10ipa1', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '10888', '10ipa1', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '10888', '10ipa1', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '10888', '10ipa1', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '10888', '10ipa1', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '10888', '10ipa1', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '10888', '10ipa1', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '10888', '10ipa1', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '10888', '10ipa1', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '10888', '10ipa1', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '10888', '10ipa1', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '10888', '10ipa1', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '10888', '10ipa1', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '10888', '10ipa1', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '10888', '10ipa1', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '10888', '10ipa1', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '35860', '10ipa1', 'aqh', 'Al Qur\'an Hadits', '192209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '35860', '10ipa1', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '35860', '10ipa1', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '35860', '10ipa1', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '35860', '10ipa1', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '35860', '10ipa1', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '35860', '10ipa1', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '35860', '10ipa1', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '35860', '10ipa1', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '35860', '10ipa1', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '35860', '10ipa1', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '35860', '10ipa1', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '35860', '10ipa1', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '35860', '10ipa1', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '35860', '10ipa1', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '35860', '10ipa1', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '35860', '10ipa1', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '35860', '10ipa1', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '35860', '10ipa1', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '35860', '10ipa1', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '35860', '10ipa1', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '310829', '10ipa1', 'aqh', 'Al Qur\'an Hadits', '192209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '310829', '10ipa1', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '310829', '10ipa1', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '310829', '10ipa1', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '310829', '10ipa1', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '310829', '10ipa1', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '310829', '10ipa1', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '310829', '10ipa1', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '310829', '10ipa1', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '310829', '10ipa1', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '310829', '10ipa1', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '310829', '10ipa1', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '310829', '10ipa1', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '310829', '10ipa1', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '310829', '10ipa1', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '310829', '10ipa1', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '310829', '10ipa1', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '310829', '10ipa1', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '310829', '10ipa1', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `nilai_siswa_transaksi_smt2_pengetahuan` (`id_nilai_siswa_transaksi_smt2_pengetahuan`, `nis_siswa_nilai_siswa_transaksi_smt2_pengetahuan`, `kd_kelas_daftar_nilai_siswa_transaksi_smt2_pengetahuan`, `kd_mata_pelajaran_nilai_siswa_transaksi_smt2_pengetahuan`, `nama_mata_pelajaran_nilai_siswa_transaksi_smt2_pengetahuan`, `nip_pegawai_nilai_siswa_transaksi_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi1_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi1_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi1_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi1_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi1_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi1_smt2_pengetahuan`, `uas_nilai_siswa_transaksi1_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi1_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi1_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi1_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi2_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi2_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi2_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi2_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi2_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi2_smt2_pengetahuan`, `uas_nilai_siswa_transaksi2_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi2_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi2_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi2_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi3_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi3_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi3_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi3_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi3_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi3_smt2_pengetahuan`, `uas_nilai_siswa_transaksi3_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi3_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi3_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi3_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi4_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi4_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi4_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi4_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi4_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi4_smt2_pengetahuan`, `uas_nilai_siswa_transaksi4_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi4_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi4_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi4_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi5_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi5_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi5_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi5_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi5_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi5_smt2_pengetahuan`, `uas_nilai_siswa_transaksi5_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi5_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi5_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi5_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi6_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi6_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi6_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi6_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi6_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi6_smt2_pengetahuan`, `uas_nilai_siswa_transaksi6_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi6_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi6_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi6_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi7_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi7_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi7_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi7_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi7_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi7_smt2_pengetahuan`, `uas_nilai_siswa_transaksi7_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi7_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi7_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi7_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi8_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi8_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi8_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi8_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi8_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi8_smt2_pengetahuan`, `uas_nilai_siswa_transaksi8_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi8_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi8_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi8_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi9_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi9_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi9_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi9_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi9_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi9_smt2_pengetahuan`, `uas_nilai_siswa_transaksi9_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi9_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi9_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi9_smt2_pengetahuan`, `tes_tulis_nilai_siswa_transaksi10_smt2_pengetahuan`, `observasi_nilai_siswa_transaksi10_smt2_pengetahuan`, `penugasan_nilai_siswa_transaksi10_smt2_pengetahuan`, `rerata_nilai_siswa_transaksi10_smt2_pengetahuan`, `nh_remidi_nilai_siswa_transaksi10_smt2_pengetahuan`, `nah_kd_nilai_siswa_transaksi10_smt2_pengetahuan`, `uas_nilai_siswa_transaksi10_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi10_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi10_smt2_pengetahuan`, `rerata_akhir_nilai_siswa_transaksi10_smt2_pengetahuan`, `uts_nilai_siswa_transaksi11_smt2_pengetahuan`, `uts_remidi_nilai_siswa_transaksi11_smt2_pengetahuan`, `na_uts_nilai_siswa_transaksi11_smt2_pengetahuan`, `uas_nilai_siswa_transaksi11_smt2_pengetahuan`, `uas_remidi_nilai_siswa_transaksi11_smt2_pengetahuan`, `na_uas_nilai_siswa_transaksi11_smt2_pengetahuan`, `nilai_akhir_nilai_siswa_transaksi_smt2_pengetahuan`, `predikat_nilai_siswa_transaksi_smt2_pengetahuan`, `deskripsi_nilai_siswa_transaksi_smt2_pengetahuan`, `keterangan_t_tt_nilai_siswa_transaksi_smt2_pengetahuan`) VALUES
(272, '310829', '10ipa1', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '310829', '10ipa1', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '829', '10ipa2', 'aqh', 'Al Qur\'an Hadits', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '829', '10ipa2', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '829', '10ipa2', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '829', '10ipa2', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '829', '10ipa2', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '829', '10ipa2', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '829', '10ipa2', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '829', '10ipa2', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '829', '10ipa2', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '829', '10ipa2', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '829', '10ipa2', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '829', '10ipa2', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, '829', '10ipa2', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '829', '10ipa2', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '829', '10ipa2', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '829', '10ipa2', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '829', '10ipa2', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '829', '10ipa2', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '829', '10ipa2', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '829', '10ipa2', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '829', '10ipa2', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '645', '10ipa2', 'aqh', 'Al Qur\'an Hadits', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '645', '10ipa2', 'aa', 'Akidah Akhlak', '197209081999031006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '645', '10ipa2', 'fkh', 'Fikih', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '645', '10ipa2', 'ski', 'Sejarah Kebudayaan Islam', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '645', '10ipa2', 'pkn', 'Pendidikan Pancasila dan Kewarganegaraan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '645', '10ipa2', 'bindo', 'Bahasa Indonesia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '645', '10ipa2', 'barab', 'Bahasa Arab', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '645', '10ipa2', 'bing', 'Bahasa Inggris', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '645', '10ipa2', 'mtk', 'Matematika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '645', '10ipa2', 'ksn', 'Kesenian', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '645', '10ipa2', 'penjas', 'Pendidikan Jasmani, Olah Raga dan Keseha', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '645', '10ipa2', 'fis', 'Fisika', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '645', '10ipa2', 'kim', 'Kimia', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '645', '10ipa2', 'bio', 'Biologi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '645', '10ipa2', 'tik', 'Teknologi Informasi dan Komunikasi', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '645', '10ipa2', 'bk', 'Bimbingan Konseling', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '645', '10ipa2', 'sej', 'Sejarah', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '645', '10ipa2', 'senbud', 'Seni Budaya', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '645', '10ipa2', 'pkk', 'Prakarya dan Kewirausahaan', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '645', '10ipa2', 'bjawa', 'Bahasa Jawa', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '645', '10ipa2', 'ppmb', 'PPMB', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `pengirim_pesan` varchar(50) DEFAULT NULL,
  `penerima_pesan` varchar(50) DEFAULT NULL,
  `judul_pesan` text,
  `isi_pesan` text,
  `waktu_pesan` datetime DEFAULT NULL,
  `cek_pesan` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pesan_chat_bot`
--

CREATE TABLE `pesan_chat_bot` (
  `id_pesan_chat_bot` int(11) NOT NULL,
  `pengirim_pesan_chat_bot` varchar(50) NOT NULL,
  `isi_pesan_chat_bot` text NOT NULL,
  `waktu_pesan_chat_bot` datetime NOT NULL,
  `cek_pesan_chat_bot` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan_chat_bot`
--

INSERT INTO `pesan_chat_bot` (`id_pesan_chat_bot`, `pengirim_pesan_chat_bot`, `isi_pesan_chat_bot`, `waktu_pesan_chat_bot`, `cek_pesan_chat_bot`) VALUES
(3, 'bot', 'Ada yang bisa kami bantu?', '2018-04-22 20:46:51', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_chat_bot_kosa_kata_pegawai`
--

CREATE TABLE `pesan_chat_bot_kosa_kata_pegawai` (
  `id_pesan_chat_bot_kosa_kata_pegawai` int(11) NOT NULL,
  `kosa_kata_pesan_chat_bot_kosa_kata_pegawai` varchar(50) NOT NULL,
  `grup_kosa_kata_pesan_chat_bot_kosa_kata_pegawai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan_chat_bot_kosa_kata_pegawai`
--

INSERT INTO `pesan_chat_bot_kosa_kata_pegawai` (`id_pesan_chat_bot_kosa_kata_pegawai`, `kosa_kata_pesan_chat_bot_kosa_kata_pegawai`, `grup_kosa_kata_pesan_chat_bot_kosa_kata_pegawai`) VALUES
(1, 'nomor induk', 'nip_pegawai'),
(2, 'nama lengkap', 'nama_pegawai'),
(5, 'nomor handphone', 'no_handphone_pegawai'),
(8, 'nomor telepon', 'no_handphone_pegawai'),
(29, 'jabatan', 'jabatan_pegawai'),
(33, 'ampu', 'nama_mata_pelajaran'),
(34, 'ajar', 'nama_mata_pelajaran'),
(39, 'alamat rumah', 'alamat_pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_chat_bot_kosa_kata_siswa`
--

CREATE TABLE `pesan_chat_bot_kosa_kata_siswa` (
  `id_pesan_chat_bot_kosa_kata_siswa` int(11) NOT NULL,
  `kosa_kata_pesan_chat_bot_kosa_kata_siswa` varchar(50) NOT NULL,
  `grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan_chat_bot_kosa_kata_siswa`
--

INSERT INTO `pesan_chat_bot_kosa_kata_siswa` (`id_pesan_chat_bot_kosa_kata_siswa`, `kosa_kata_pesan_chat_bot_kosa_kata_siswa`, `grup_kosa_kata_pesan_chat_bot_kosa_kata_siswa`) VALUES
(19, 'nomor induk siswa', 'nis_siswa'),
(41, 'nomor induk siswa nasional', 'nisn_siswa'),
(42, 'nama lengkap', 'nama_siswa'),
(43, 'jenis kelamin', 'jenis_kelamin_siswa'),
(44, 'kelas', 'kd_kelas_daftar_siswa'),
(45, 'alamat', 'alamat_siswa'),
(46, 'tempat lahir', 'tempat_lahir_siswa'),
(47, 'tanggal lahir', 'tanggal_lahir_siswa'),
(48, 'nomor telepon', 'no_handphone_siswa'),
(49, 'no handphone', 'no_handphone_siswa'),
(50, 'nama ayah', 'orangtua_nama_ayah_siswa'),
(51, 'nama ibu', 'orangtua_nama_ibu_siswa'),
(52, 'alamat orangtua', 'orangtua_alamat_siswa'),
(53, 'telepon orang tua', 'orangtua_telepon_siswa'),
(54, 'pekerjaan ayah', 'orangtua_pekerjaan_ayah_siswa'),
(55, 'pekerjaan ibu', 'orangtua_pekerjaan_ibu_siswa'),
(56, 'nama wali', 'nama_wali'),
(57, 'pekerjaan wali', 'pekerjaan_wali'),
(58, 'alamat wali', 'alamat_wali'),
(59, 'nomor telepon wali', 'no_handphone_wali');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_chat_pengguna`
--

CREATE TABLE `pesan_chat_pengguna` (
  `id_pesan_chat_pengguna` int(11) NOT NULL,
  `pengirim_pesan_chat_pengguna` varchar(50) NOT NULL,
  `penerima_pesan_chat_pengguna` varchar(50) NOT NULL,
  `isi_pesan_chat_pengguna` text NOT NULL,
  `waktu_pesan_chat_pengguna` datetime NOT NULL,
  `cek_pesan_chat_pengguna` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `verifikasi_password`
--

CREATE TABLE `verifikasi_password` (
  `id_verifikasi_password_baru` int(11) NOT NULL,
  `username_verifikasi_password_baru` varchar(50) DEFAULT NULL,
  `password_baru_verifikasi_password_baru` varchar(255) DEFAULT NULL,
  `jabatan_verifikasi_password_baru` varchar(25) DEFAULT NULL,
  `tanggal_ganti_verifikasi_password_baru` date DEFAULT NULL,
  `jam_ganti_verifikasi_password_baru` time DEFAULT NULL,
  `tanggal_verifikasi_verifikasi_password_baru` date DEFAULT NULL,
  `jam_verifikasi_verifikasi_password_baru` time DEFAULT NULL,
  `tanggal_terpakai_verifikasi_password_baru` date DEFAULT NULL,
  `jam_terpakai_verifikasi_password_baru` time DEFAULT NULL,
  `status_verifikasi_password_baru` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `jabatan_pegawai` (`jabatan_pegawai`),
  ADD KEY `nama_mata_pelajaran_pegawai` (`kd_mata_pelajaran_pegawai`);

--
-- Indexes for table `data_sekolah`
--
ALTER TABLE `data_sekolah`
  ADD PRIMARY KEY (`id_data_sekolah`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `jabatan_siswa` (`jabatan_siswa`);

--
-- Indexes for table `data_wali`
--
ALTER TABLE `data_wali`
  ADD PRIMARY KEY (`id_wali`);

--
-- Indexes for table `data_website`
--
ALTER TABLE `data_website`
  ADD PRIMARY KEY (`id_data_website`);

--
-- Indexes for table `guru_kompetensi_dasar_smt1`
--
ALTER TABLE `guru_kompetensi_dasar_smt1`
  ADD PRIMARY KEY (`id_guru_kompetensi_dasar_smt1`);

--
-- Indexes for table `guru_kompetensi_dasar_smt2`
--
ALTER TABLE `guru_kompetensi_dasar_smt2`
  ADD PRIMARY KEY (`id_guru_kompetensi_dasar_smt2`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kd_jabatan`);

--
-- Indexes for table `kelas_daftar`
--
ALTER TABLE `kelas_daftar`
  ADD PRIMARY KEY (`id_kelas_daftar`);

--
-- Indexes for table `kelas_transaksi`
--
ALTER TABLE `kelas_transaksi`
  ADD PRIMARY KEY (`id_kelas_transaksi`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mata_pelajaran`),
  ADD KEY `kd_mata_pelajaran` (`kd_mata_pelajaran`);

--
-- Indexes for table `mata_pelajaran_transaksi`
--
ALTER TABLE `mata_pelajaran_transaksi`
  ADD PRIMARY KEY (`id_mata_pelajaran_transaksi`);

--
-- Indexes for table `nilai_siswa_transaksi_smt1_pengetahuan`
--
ALTER TABLE `nilai_siswa_transaksi_smt1_pengetahuan`
  ADD PRIMARY KEY (`id_nilai_siswa_transaksi_smt1_pengetahuan`);

--
-- Indexes for table `nilai_siswa_transaksi_smt2_pengetahuan`
--
ALTER TABLE `nilai_siswa_transaksi_smt2_pengetahuan`
  ADD PRIMARY KEY (`id_nilai_siswa_transaksi_smt2_pengetahuan`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `pesan_chat_bot`
--
ALTER TABLE `pesan_chat_bot`
  ADD PRIMARY KEY (`id_pesan_chat_bot`);

--
-- Indexes for table `pesan_chat_bot_kosa_kata_pegawai`
--
ALTER TABLE `pesan_chat_bot_kosa_kata_pegawai`
  ADD PRIMARY KEY (`id_pesan_chat_bot_kosa_kata_pegawai`);

--
-- Indexes for table `pesan_chat_bot_kosa_kata_siswa`
--
ALTER TABLE `pesan_chat_bot_kosa_kata_siswa`
  ADD PRIMARY KEY (`id_pesan_chat_bot_kosa_kata_siswa`);

--
-- Indexes for table `pesan_chat_pengguna`
--
ALTER TABLE `pesan_chat_pengguna`
  ADD PRIMARY KEY (`id_pesan_chat_pengguna`);

--
-- Indexes for table `verifikasi_password`
--
ALTER TABLE `verifikasi_password`
  ADD PRIMARY KEY (`id_verifikasi_password_baru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id_siswa` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `data_wali`
--
ALTER TABLE `data_wali`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `data_website`
--
ALTER TABLE `data_website`
  MODIFY `id_data_website` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `guru_kompetensi_dasar_smt1`
--
ALTER TABLE `guru_kompetensi_dasar_smt1`
  MODIFY `id_guru_kompetensi_dasar_smt1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `guru_kompetensi_dasar_smt2`
--
ALTER TABLE `guru_kompetensi_dasar_smt2`
  MODIFY `id_guru_kompetensi_dasar_smt2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `kelas_daftar`
--
ALTER TABLE `kelas_daftar`
  MODIFY `id_kelas_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `kelas_transaksi`
--
ALTER TABLE `kelas_transaksi`
  MODIFY `id_kelas_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id_mata_pelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `mata_pelajaran_transaksi`
--
ALTER TABLE `mata_pelajaran_transaksi`
  MODIFY `id_mata_pelajaran_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nilai_siswa_transaksi_smt1_pengetahuan`
--
ALTER TABLE `nilai_siswa_transaksi_smt1_pengetahuan`
  MODIFY `id_nilai_siswa_transaksi_smt1_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `nilai_siswa_transaksi_smt2_pengetahuan`
--
ALTER TABLE `nilai_siswa_transaksi_smt2_pengetahuan`
  MODIFY `id_nilai_siswa_transaksi_smt2_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesan_chat_bot`
--
ALTER TABLE `pesan_chat_bot`
  MODIFY `id_pesan_chat_bot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesan_chat_bot_kosa_kata_pegawai`
--
ALTER TABLE `pesan_chat_bot_kosa_kata_pegawai`
  MODIFY `id_pesan_chat_bot_kosa_kata_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pesan_chat_bot_kosa_kata_siswa`
--
ALTER TABLE `pesan_chat_bot_kosa_kata_siswa`
  MODIFY `id_pesan_chat_bot_kosa_kata_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `pesan_chat_pengguna`
--
ALTER TABLE `pesan_chat_pengguna`
  MODIFY `id_pesan_chat_pengguna` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verifikasi_password`
--
ALTER TABLE `verifikasi_password`
  MODIFY `id_verifikasi_password_baru` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD CONSTRAINT `data_pegawai_ibfk_1` FOREIGN KEY (`kd_mata_pelajaran_pegawai`) REFERENCES `mata_pelajaran` (`kd_mata_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dp.jabatan_pegawai-j.nama_jabatan` FOREIGN KEY (`jabatan_pegawai`) REFERENCES `jabatan` (`kd_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD CONSTRAINT `data_siswa_ibfk_1` FOREIGN KEY (`jabatan_siswa`) REFERENCES `jabatan` (`kd_jabatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
