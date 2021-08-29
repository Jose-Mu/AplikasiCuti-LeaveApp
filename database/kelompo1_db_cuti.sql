-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2020 at 09:11 PM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelompo1_db_cuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_adm` int(11) NOT NULL,
  `nama_adm` varchar(50) NOT NULL,
  `telp_adm` varchar(15) NOT NULL,
  `user_adm` varchar(50) NOT NULL,
  `pass_adm` varchar(100) NOT NULL,
  `foto_adm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_adm`, `nama_adm`, `telp_adm`, `user_adm`, `pass_adm`, `foto_adm`) VALUES
(1, 'Administrator', '082286709433', 'admin', 'admin', ''),
(2, 'Jose Manuel Budiman', '082286709433', '1931039', '1931039', '');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `no_cuti` varchar(30) NOT NULL,
  `npp` varchar(20) NOT NULL,
  `tgl_pengajuan` date NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `manager` varchar(30) NOT NULL,
  `spv` varchar(20) NOT NULL,
  `stt_cuti` varchar(50) NOT NULL,
  `ket_reject` text NOT NULL,
  `hrd_app` int(2) NOT NULL,
  `spv_app` int(2) NOT NULL,
  `mng_app` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`no_cuti`, `npp`, `tgl_pengajuan`, `tgl_awal`, `tgl_akhir`, `durasi`, `keterangan`, `manager`, `spv`, `stt_cuti`, `ket_reject`, `hrd_app`, `spv_app`, `mng_app`) VALUES
('03122020205550', 'PEGAWAI', '2020-12-03', '2020-12-03', '2020-12-03', 1, 'CA', '', '1931062', 'Rejected', 'Melebihi batas cuti dalam sebulan', 0, 0, 0),
('13122020214337', 'PEGAWAI', '2020-12-13', '2020-12-14', '2020-12-15', 2, 'dddd', '', '1931019', 'Approved', '', 1, 1, 0),
('13122020215336', '1931019', '2020-12-13', '2020-12-14', '2020-12-15', 2, 'www', '1931105', '', 'Approved', '', 1, 0, 0),
('15122020090207', '1931012', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'Natalan', '', '1931062', 'Rejected', 'GAK', 0, 0, 0),
('15122020090552', '1931062', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'Natal ', '1931105', '', 'Approved', '', 1, 0, 1),
('15122020090955', '1931105', '2020-12-15', '2020-12-16', '2020-12-25', 10, 'Liburan', '', '', 'Approved', '', 1, 0, 0),
('15122020195000', '1931039', '2020-12-15', '2020-12-15', '2021-01-01', 18, 'Natal', '', '', 'Approved', '', 1, 0, 0),
('15122020195158', '1931039', '2020-12-15', '2020-12-15', '2021-01-03', 20, 'vd', '', '', 'Rejected', 'UD CUTI', 0, 0, 0),
('15122020200655', '1931039', '2020-12-15', '2020-12-30', '2020-12-31', 2, 'holiday', '', '', 'Approved', '', 1, 0, 0),
('15122020201349', '1931019', '2020-12-15', '2020-12-15', '2020-12-23', 9, 'konser', '1931039', '', 'Approved', '', 1, 0, 1),
('15122020202330', '1931062', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'wihi', '1931039', '', 'Rejected', 'Melebihi batas', 0, 0, 0),
('15122020203110', '1931039', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'd', '', '', 'Approved', '', 1, 0, 0),
('15122020203641', '1931105', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'test', '', '', 'Rejected', 'Belum bisa', 0, 0, 0),
('15122020205159', '1931105', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'ba', '', '', 'Approved', '', 1, 0, 0),
('15122020205858', '1931039', '2020-12-15', '2020-12-31', '2021-01-08', 9, 'txz', '', '', 'Approved', '', 1, 0, 0),
('15122020210426', '1931039', '2020-12-15', '2020-12-15', '2020-12-31', 17, 'fdbn', '', '', 'Rejected', 'a', 0, 0, 0),
('15122020213814', '1931039', '2020-12-15', '2020-12-15', '2021-01-01', 18, 'ca', '', '', 'Rejected', '', 0, 0, 0),
('15122020214404', '1931039', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'b', '', '', 'Approved', '', 1, 0, 0),
('15122020214641', '1931039', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'v', '', '', 'Approved', '', 1, 0, 0),
('15122020222314', '1931039', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'ca', '', '', 'Rejected', 'ac', 0, 0, 0),
('15122020222552', '1931062', '2020-12-15', '2020-12-15', '2020-12-16', 2, 'c', '1931105', '', 'Rejected', 'test ', 0, 0, 0),
('16122020094747', '1931105', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'AZ', '', '', 'Approved', 'gk', 1, 0, 0),
('16122020095603', '1931039', '2020-12-16', '2020-12-16', '2021-01-09', 25, 'a', '', '', 'Approved', '', 1, 0, 0),
('16122020100152', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'xx', '', '', 'Approved', '', 1, 0, 0),
('16122020100542', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'DZSVE', '', '', 'Approved', '', 1, 0, 0),
('16122020102845', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'zabN', '', '', 'Approved', '', 1, 0, 0),
('16122020114303', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'a', '', '', 'Approved', '', 1, 0, 0),
('16122020115444', '1931039', '2020-12-16', '2020-12-16', '2020-12-25', 10, 'cfd', '', '', 'Rejected', 'gk', 0, 0, 0),
('16122020130338', '1931039', '2020-12-16', '2020-12-31', '2021-01-01', 2, ' x', '', '', 'Approved', '', 1, 0, 0),
('16122020152909', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, 's', '', '', 'Approved', '', 1, 0, 0),
('16122020153926', '1931039', '2020-12-16', '2020-12-16', '2020-12-16', 1, 's', '', '', 'Approved', '', 1, 0, 0),
('16122020185854', '1931105', '2020-12-16', '2020-12-16', '2020-12-31', 16, 'Saya meminta pengajuan cuti ini dikarenakan dapat surat dokter untuk beristirahat dikarenakan hamil sudah 7 bulan ', '', '', 'Approved', '', 1, 0, 0),
('16122020190137', '1931105', '2020-12-16', '2020-12-16', '2020-12-24', 9, '1', '', '', 'Rejected', 'hy', 0, 0, 0),
('16122020190542', '1931105', '2020-12-16', '2020-12-17', '2020-12-18', 2, 'Liburan keluarga', '', '', 'Approved', '', 1, 0, 0),
('16122020194821', '1931105', '2020-12-16', '2020-12-21', '2020-12-21', 1, 'Testing 2', '', '', 'Approved', '', 1, 0, 0),
('16122020195112', '1931105', '2020-12-16', '2020-12-17', '2020-12-18', 2, 'Testing3', '', '', 'Approved', '', 1, 0, 0),
('16122020195652', '1931105', '2020-12-16', '2020-12-16', '2020-12-18', 3, 'asd22', '', '', 'Rejected', 'ta', 0, 0, 0),
('16122020195956', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'sdhb', '', '', 'Approved', '', 1, 0, 0),
('16122020200148', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'TESTING UNTUK NELSON', '', '', 'Approved', '', 1, 0, 0),
('16122020202411', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'as', '', '', 'Rejected', 'ga', 0, 0, 0),
('16122020202715', '1931105', '2020-12-16', '2020-12-16', '2020-12-17', 2, 'test', '', '', 'Rejected', 'test', 0, 0, 0),
('16122020202924', '1931039', '2020-12-16', '2021-01-09', '2021-01-09', 1, ';;;;', '', '', 'Approved', '', 1, 0, 0),
('16122020202936', '1931039', '2020-12-16', '2020-12-16', '2020-12-17', 2, ';;;;', '', '', 'Approved', '', 1, 0, 0),
('16122020202946', '1931039', '2020-12-16', '2020-12-16', '2020-12-19', 4, 'xgnxgfn', '', '', 'Approved', '', 1, 0, 0),
('17122020115403', '1931039', '2020-12-17', '2020-12-17', '2020-12-18', 2, 'b', '', '', 'Approved', '', 1, 0, 0),
('17122020115413', '1931039', '2020-12-17', '2020-12-17', '2020-12-18', 2, 'bbb', '', '', 'Approved', '', 1, 0, 0),
('17122020124940', '1931039', '2020-12-17', '2020-12-17', '2020-12-17', 1, 'c', '', '', 'Rejected', 'x', 0, 0, 0),
('17122020125000', '1931039', '2020-12-17', '2020-12-18', '2020-12-19', 2, 'cc', '', '', 'Approved', '', 1, 0, 0),
('17122020130216', '1931039', '2020-12-17', '2020-12-17', '2020-12-17', 1, 'asdvvad', '', '', 'Approved', '', 1, 0, 0),
('17122020132844', '1931039', '2020-12-17', '2020-12-17', '2020-12-18', 2, 'nzg', '', '', 'Approved', '', 1, 0, 0),
('17122020154041', '1931039', '2020-12-17', '2020-12-17', '2020-12-18', 2, 's ', '', '', 'Approved', '', 1, 0, 0),
('17122020154833', '1931039', '2020-12-17', '2020-12-17', '2020-12-17', 1, 'asc', '', '', 'Approved', '', 1, 0, 0),
('17122020225707', 'PEGAWAI', '2020-12-17', '2020-12-17', '2020-12-18', 2, 'TEST', '', '1931019', 'Rejected', '', 0, 0, 0),
('17122020225947', '1931019', '2020-12-17', '2020-12-19', '2020-12-29', 11, 'sss', '1931039', '', 'Rejected', 'NOPE', 0, 0, 0),
('17122020230113', '1931019', '2020-12-17', '2020-12-30', '2020-12-31', 2, 'ww', '1931039', '', 'Rejected', 'NO', 0, 0, 0),
('18122020001258', 'PEGAWAI', '2020-12-18', '2020-12-21', '2020-12-22', 2, 'Holiday', '', '1931062', 'Approved', '', 1, 1, 0),
('18122020002327', '1931105', '2020-12-18', '2020-12-18', '2020-12-19', 2, 'Testing', '', '', 'Approved', '', 1, 0, 0),
('18122020185904', '1931105', '2020-12-18', '2020-12-18', '2020-12-19', 2, 'Holiday', '', '', 'Rejected', 'Cuti melibihi batas', 0, 0, 0),
('19102020220618', '1931012', '2020-10-19', '2020-10-20', '2020-10-21', 2, 'Istri melahirkan', '', '', 'Approved', '', 1, 0, 0),
('19102020220641', '1931012', '2020-10-19', '2020-10-22', '2020-10-23', 2, 'Liburan ke Paris', '', '', 'Rejected', 'Cuti sudah melebihi batas', 0, 0, 0),
('25112020194748', '1931039', '2020-11-25', '2020-11-25', '2020-11-27', 3, 'Ehe', '', '', 'Approved', '', 1, 0, 0),
('29112020154715', 'PEGAWAI', '2020-11-29', '2020-11-29', '2020-11-30', 2, 'lIBUR DONG', '', '1931062', 'Rejected', 'GAK', 0, 0, 0),
('29112020164502', 'PEGAWAI', '2020-11-29', '2020-11-29', '2020-11-30', 2, 'Liburan', '', '1931062', 'Rejected', '', 0, 0, 0),
('29112020175114', '1931039', '2020-11-29', '2020-11-29', '2020-11-30', 2, 'r', '', '', 'Rejected', 'why', 0, 0, 0),
('30112020232322', '1931019', '2020-11-30', '2020-11-30', '2020-11-30', 1, 'v', '1931039', '', 'Rejected', 'gak', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `npp` varchar(20) NOT NULL,
  `nama_emp` varchar(100) NOT NULL,
  `jk_emp` varchar(20) NOT NULL,
  `telp_emp` varchar(20) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `jml_cuti` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto_emp` text NOT NULL,
  `active` varchar(20) NOT NULL,
  `id_adm` int(11) NOT NULL,
  `email` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`npp`, `nama_emp`, `jk_emp`, `telp_emp`, `divisi`, `jabatan`, `alamat`, `hak_akses`, `jml_cuti`, `password`, `foto_emp`, `active`, `id_adm`, `email`) VALUES
('1931012', 'Elbert Sun', 'Laki-Laki', '12414', 'IT', 'Staff IT', 'Batam', 'Pegawai', 2, '1931012', 'foto19310125.jpg', 'Aktif', 1, 'elbertsunhahaha@gmail.com'),
('1931019', 'Tri Susanti', 'Perempuan', '124124', 'IT', 'Spv IT', 'Batam', 'Supervisor', 12, '1931019', 'foto19310193.jpg', 'Aktif', 1, 'trisusanti0510@gmail.com'),
('1931039', 'Jose Manuel Budiman', 'Laki-Laki', '082286709433', 'IT', 'Manager', 'UIB', 'Manager', 2147483647, '1931039', 'foto19310390.jpg', 'Aktif', 1, 'xilingglee@gmail.com'),
('1931062', 'Calvin Yantson', 'Laki-Laki', '21431546', 'IT', 'Leader IT', 'UIB', 'Supervisor', 12, '1931062', 'foto1931062n.jpg', 'Aktif', 1, 'calvinyantson13@gmail.com'),
('1931105', 'Nelson Donglas', 'Laki-Laki', '1223235465', 'IT', 'Manager IT', 'Batam', 'Manager', 999, '1931105', 'foto19311051.jpg', 'Aktif', 1, 'nelsondonglas01@gmail.com'),
('KARYAWAN', 'KARYAWAN', 'Perempuan', '08156487', 'MANAJEMEN', 'PEGAWAI', 'BATAM', 'Pegawai', 3, 'KARYAWAN', 'fotoKARYAWAN0.png', 'Aktif', 1, 'josebudiman7@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`no_cuti`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`npp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
