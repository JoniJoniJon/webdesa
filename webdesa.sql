-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Agu 2024 pada 06.55
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
-- Database: `webdesa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_profil`
--

CREATE TABLE `data_profil` (
  `id` int(5) NOT NULL,
  `jenis` varchar(25) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` text NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_profil`
--

INSERT INTO `data_profil` (`id`, `jenis`, `tanggal`, `isi`, `gambar`) VALUES
(1, 'profil', '2017-12-03', '<p>Desa Kandangsemangkon merupakan salah satu desa yang terletak di Kecamatan Paciran, Kabupaten Lamongan, Provinsi Jawa Timur. Desa ini berada di pesisir utara Pulau Jawa dan memiliki luas wilayah sekitar 4,5 kilometer persegi. Sebelah utara desa berbatasan langsung dengan Laut Jawa, memberikan potensi besar untuk pengembangan sektor perikanan dan pariwisata, terutama dengan adanya Pantai Pengkolan sebagai daya tarik utama.\r\nSelain potensi wisata pantai, desa ini juga memiliki hasil bumi dan produk lokal yang menjadi sumber penghidupan masyarakat, termasuk pertanian dan kerajinan tangan. Desa Kandangsemangkon merupakan tempat yang kaya akan tradisi dan budaya, di mana kehidupan sehari-hari masyarakat masih kental dengan adat istiadat yang diwariskan turun-temurun.</p>\r\n', '../images/baldes.jpg'),
(3, 'sejarah', '2017-12-03', '<p>Desa Kandangsemangkon, yang terletak di Kecamatan Paciran, Kabupaten Lamongan, Jawa Timur, adalah desa dengan sejarah yang kaya dan beragam. Sejarah desa ini bermula pada abad ke-18, ketika desa ini didirikan sebagai bagian dari pengembangan kawasan pesisir utara Pulau Jawa. Nama \"Kandangsemangkon\" sendiri dipercaya berasal dari istilah lokal yang menggambarkan kondisi geografis desa atau aktivitas awal penduduknya.\r\n\r\nPada masa awal pendiriannya, Desa Kandangsemangkon dikenal sebagai perkampungan nelayan. Masyarakat desa bergantung pada hasil laut untuk memenuhi kebutuhan hidup mereka. Keberadaan pantai yang subur dan lokasi strategis di tepi Laut Jawa memberikan peluang besar dalam bidang perikanan. Selain itu, desa ini juga memiliki lahan pertanian yang mendukung keberagaman ekonomi lokal.\r\n\r\nPada tahun 1980-an, Desa Kandangsemangkon mulai mengalami transformasi signifikan dengan adanya proyek pembangunan infrastruktur. Pembangunan jalan raya dan fasilitas umum lainnya, seperti pasar dan pusat kesehatan, turut mendukung pertumbuhan ekonomi dan sosial desa. Proyek-proyek ini juga membuka aksesibilitas yang lebih baik bagi wisatawan yang datang untuk menikmati keindahan Pantai Pengkolan dan atraksi wisata lainnya.\r\n\r\nSejak awal abad ke-21, desa ini telah memfokuskan upayanya pada pengembangan sektor pariwisata dengan mempromosikan potensi alam dan budaya lokal. Festival tahunan dan acara budaya yang diadakan di desa ini menarik perhatian pengunjung dari berbagai daerah. Desa Kandangsemangkon juga dikenal dengan kerajinan tangan tradisional dan produk lokal yang menjadi kebanggaan masyarakat.\r\n\r\nMasyarakat Desa Kandangsemangkon tetap berkomitmen untuk menjaga warisan budaya mereka sambil menyambut kemajuan yang datang. Dengan perpaduan antara tradisi dan modernitas, desa ini tidak hanya menjadi tempat yang nyaman untuk tinggal, tetapi juga tujuan wisata yang menarik di kawasan pesisir Jawa Timur.</p>\r\n', '../images/10122017141212DSC_0142.JPG'),
(4, 'potensi', '2017-12-03', '<p>Desa Kandangsemangkon, terletak di Kecamatan Paciran, Kabupaten Lamongan, Jawa Timur, memiliki potensi yang sangat beragam dan menjanjikan. Beberapa aspek utama yang menjadi potensi unggulan desa ini adalah sebagai berikut:\r\n\r\nPerikanan dan Kelautan: Sebagai desa pesisir, Kandangsemangkon memiliki sumber daya laut yang melimpah. Masyarakat desa mengandalkan perikanan sebagai salah satu sumber utama pendapatan. Berbagai jenis ikan dan hasil laut lainnya, seperti udang dan kerang, merupakan komoditas penting yang mendukung ekonomi lokal. Selain itu, desa ini juga dikenal dengan kerajinan tangan dari produk laut yang menjadi daya tarik tambahan bagi pengunjung.\r\n\r\nPariwisata Pantai: Desa ini terkenal dengan Pantai Pengkolan, yang merupakan salah satu destinasi wisata unggulan di daerah tersebut. Pantai ini menawarkan pemandangan laut yang indah dan suasana yang tenang, ideal untuk rekreasi dan relaksasi. Upaya pengembangan fasilitas wisata dan kegiatan pantai seperti wisata snorkeling dan memancing turut mendukung potensi pariwisata desa.\r\n\r\nPertanian: Kandangsemangkon memiliki lahan pertanian yang subur dan mendukung produksi berbagai jenis komoditas pertanian. Selain padi dan jagung, desa ini juga menanam sayur-sayuran dan buah-buahan yang memenuhi kebutuhan lokal serta pasar di luar desa. Inisiatif pertanian berkelanjutan dan pelatihan untuk petani menjadi bagian dari upaya desa untuk meningkatkan hasil pertanian dan kesejahteraan petani.\r\n\r\nBudaya dan Tradisi Lokal: Desa ini kaya akan budaya dan tradisi yang diwariskan turun-temurun. Festival budaya dan acara tradisional sering diadakan untuk merayakan warisan budaya dan menarik pengunjung. Kegiatan ini juga berperan dalam memperkenalkan budaya lokal kepada wisatawan dan menjaga kekayaan budaya desa.\r\n\r\nPemberdayaan Masyarakat: Pemerintah desa aktif dalam melaksanakan program pemberdayaan masyarakat, termasuk pelatihan keterampilan dan inisiatif ekonomi kreatif. Program-program ini dirancang untuk meningkatkan kapasitas masyarakat dalam berbagai sektor, termasuk usaha mikro dan makro</p>\r\n\r\n<p>&nbsp;</p>\r\n', '../images/potensi.JPG'),
(6, 'peta', '2017-12-11', '<p>Utara : Laut Jawa</p>\r\n\r\n<p>Selatan : Desa Dadapan</p>\r\n\r\n<p>Barat : Desa Kemantren</p>\r\n\r\n<p>Timur : Desa Paciran, Desa Sumurgayam</p>\r\n', '../images/10122017131121peta.png'),
(7, 'wisata', '2024-08-25', 'Pantai Pengkolan, yang terletak di Desa Kandangsemangkon, Kecamatan Paciran, Kabupaten Lamongan, adalah salah satu destinasi wisata pantai yang menawarkan keindahan alam yang menenangkan. Pantai ini dikenal dengan pesona pantainya yang masih alami dan suasana yang damai, menjadikannya tempat yang ideal untuk melarikan diri dari rutinitas sehari-hari.\r\n\r\nKeindahan Alam\r\n\r\nPantai Pengkolan menyuguhkan pemandangan laut yang luas dengan pasir putih yang bersih. Ombaknya yang tenang dan air laut yang jernih menciptakan suasana yang menenangkan bagi pengunjung. Anda dapat menikmati keindahan matahari terbenam yang spektakuler di sini, dengan langit yang berubah warna menjadi nuansa oranye dan merah, menciptakan pemandangan yang sangat memukau.\r\n\r\nAktivitas Wisata\r\n\r\nDi Pantai Pengkolan, Anda bisa melakukan berbagai aktivitas menyenangkan. Mulai dari berjalan-jalan di sepanjang garis pantai, bersantai di bawah payung pantai, hingga bermain pasir bersama keluarga. Pantai ini juga cocok untuk piknik santai, di mana Anda bisa menikmati hidangan lezat sambil menikmati angin laut yang sejuk.\r\n\r\nFasilitas\r\n\r\nPantai Pengkolan dilengkapi dengan fasilitas yang memadai untuk kenyamanan pengunjung. Terdapat area parkir yang luas, toilet umum, serta warung makanan yang menyajikan hidangan lokal. Untuk menambah kenyamanan, beberapa penginapan sederhana juga tersedia di sekitar pantai, menawarkan pilihan akomodasi yang dekat dengan lokasi pantai.\r\n\r\nAkses dan Lokasi\r\n\r\nPantai ini dapat diakses dengan mudah dari pusat Desa Kandangsemangkon. Perjalanan menuju pantai ini menawarkan pemandangan pedesaan yang hijau dan asri, menambah pengalaman wisata Anda. Dengan akses yang mudah dan lokasi yang strategis, Pantai Pengkolan menjadi pilihan tepat untuk liburan singkat atau akhir pekan yang menyegarkan.', '../images/wisata1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(5) NOT NULL,
  `gambar` text NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tanggal_unggah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `gambar`, `judul`, `tanggal_unggah`) VALUES
(1, '../images/DSC_0014.jpg', 'Kantor Kepala Desa Kertawangunan', '2017-12-01'),
(2, '../images/04012018172512DSC_0011.JPG', 'Mesjid Agung Kertawangunan', '2018-01-04'),
(3, '../images/DSC_0147.JPG', 'Kegiatan POSKESDES', '2017-12-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `isi_berita`
--

CREATE TABLE `isi_berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` char(5) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `gambar` longtext NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `isi_berita`
--

INSERT INTO `isi_berita` (`id_berita`, `id_kategori`, `nama_kategori`, `judul`, `tanggal`, `waktu`, `gambar`, `isi`) VALUES
(1, '1', 'Wisata', 'Pantai Pengkolan Membeludak Mendekati Hari Raya', '2024-08-21', '09:14:00', '../images/wisata1.JPG', 'Yakali ngga membeludak gimana sih kalian ini<br>\r\nya pikir aja sendiri suntuk kerja mulu, ada waktu buat liburan yakali bobo\r\n'),
(2, '2', 'Pengumuman', 'Pendaptaran PPK', '2017-12-03', '18:30:50', '../images/04012018163118Tahapan-Sleksi-PPK-PPS.jpg', '<p>https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf\">FORMULIR DAN PERSYARATAN&nbsp; PENDAFTARAN PPK/PPS KPU KUNINGAN</a></p>\r\n\r\n<p><strong>KPU Kuningan &ndash;</strong> Dalam rangka penyelenggaraan Pemilihan Gubernur dan Wakil Gubernur Jawa Barat dan Pemilihan Bupati dan Wakil Bupati Kuningan Tahun 2018, Komisi Pemilihan Umum Kabupaten Kuningan dengan ini membuka kesempatan kepada seluruh masyarakat Kabupaten Kuningan yang telah memenuhi syarat sebagaimana diatur dalam Pasal 72 Undang-Undang Nomor 7 Tahun 2017 tentang Penyelenggaraan Pemilihan Umum, untuk mendaftar menjadi calon anggota <a href=\"https://kpu-kuningankab.go.id/tag/ppk-dan-pps\">PPK dan PPS</a> dengan ketentuan sebagai berikut:</p>\r\n\r\n<p><a href=\"https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf\">https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf</a></p>\r\n\r\n<p><a href=\"https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf\">FORMULIR DAN PERSYARATAN&nbsp; PENDAFTARAN PPK/PPS KPU KUNINGAN</a></p>\r\n\r\n<p>&quot;&gt;</p>\r\n\r\n<p>PPK dan PPS dengan ketentuan sebagai berikut:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf\">https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf</a></p>\r\n\r\n<p><a href=\"https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf\">FORMULIR DAN PERSYARATAN&nbsp; PENDAFTARAN PPK/PPS KPU KUNINGAN</a></p>\r\n\r\n<p>&quot;&gt;</p>\r\n\r\n<p><strong>KPU Kuningan &ndash;</strong> Dalam rangka penyelenggaraan Pemilihan Gubernur dan Wakil Gubernur Jawa Barat dan Pemilihan Bupati dan Wakil Bupati Kuningan Tahun 2018, Komisi Pemilihan Umum Kabupaten Kuningan dengan ini membuka kesempatan kepada seluruh masyarakat Kabupaten Kuningan yang telah memenuhi syarat sebagaimana diatur dalam Pasal 72 Undang-Undang Nomor 7 Tahun 2017 tentang Penyelenggaraan Pemilihan Umum, untuk mendaftar menjadi calon anggota <a href=\"https://kpu-kuningankab.go.id/tag/ppk-dan-pps\">PPK dan PPS</a> dengan ketentuan sebagai berikut:</p>\r\n\r\n<p><a href=\"https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf\">https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf</a></p>\r\n\r\n<p><a href=\"https://kpu-kuningankab.go.id/wp-content/uploads/2017/10/PENGUMUMAN-PENDAFTARAN-PPK-PPS_KPU-KUNINGAN.pdf\">FORMULIR DAN PERSYARATAN&nbsp; PENDAFTARAN PPK/PPS KPU KUNINGAN</a></p>\r\n'),
(4, '2', 'Pengumuman', 'Pelaksanaan Perayaan Maulid Nabi ', '2017-12-11', '22:20:20', '../images/DSC_0017.JPG', '<p>Maulid nabi Muhammad SAW akan dilaksanakan di masjid jami</p>\r\n'),
(5, '1', 'Wisata', 'Plang Nama Pantai Yang Dibangun Kelompok KKN 23 UNISLA', '2024-08-21', '22:20:50', '../images/wisata2.png', '<p>Pantai Pengkolan banyak digemari para kawula muda hingga tua. bahkan keluarga yang mengisi waktu liburannya ke pantai yang indah ini yang menjadikan teman teman dari kkn kelompok 23 kampus universitas islam lamongan ini membangun plang nama pantai dengan tujuan untuk sarana pengembangan pantai dan juga objek foto wisatawan. plang nama ini juga membuat pantai pengkolan memiliki ciri khas dan dapat lebih mudah dikenal orang</p>\r\n\r\n<p>lalalalalalalala</p>\r\n'),
(9, '1', 'Berita', 'pemasangan palang pantai pengkolan', '2024-08-25', '10:30:40', '../images/250820240433021724494282095.jpg', '<p>proses persiapan pemasangan palang pantai pengkolan yang di pj oleh mahasiswa kkn fakultas teknik sipil.</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_organisasi`
--

CREATE TABLE `jenis_organisasi` (
  `id_jenis` int(1) NOT NULL,
  `nama_organisasi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jenis_organisasi`
--

INSERT INTO `jenis_organisasi` (`id_jenis`, `nama_organisasi`) VALUES
(1, 'Perangkat Desa'),
(2, 'BPD'),
(3, 'LPM'),
(4, 'PKK'),
(5, 'Karang Taruna'),
(6, 'BUMDES');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` char(5) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('1', 'Wisata'),
('2', 'Desa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `subjek` varchar(25) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `nama`, `email`, `subjek`, `pesan`, `tanggal`) VALUES
(3, 'ade', 'ade@gmail.com', 'Penerangan Jalan Desa', 'Mohon diperbaiki penerangan jalan di sekitar blok 1', '2018-01-04 15:48:04'),
(4, 'ade', 'imai@email.com', 'hai', 'hai gaes', '2018-01-11 02:44:33'),
(5, 'robi', 'robi@gmail.com', 'keluhan', 'anu', '2024-08-26 01:58:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perangkat`
--

CREATE TABLE `perangkat` (
  `id_perangkat` int(4) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `pendidikan` varchar(25) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `id_jenis` int(1) NOT NULL,
  `periode` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `perangkat`
--

INSERT INTO `perangkat` (`id_perangkat`, `nama`, `jabatan`, `pendidikan`, `alamat`, `gambar`, `id_jenis`, `periode`) VALUES
(1, 'AGUS MULYONO', 'Kepala Desa', '-', 'Kandangsemangkon', '../images/06122017190323DSC_0130.JPG', 1, '2026'),
(2, 'Rhepno', 'Sekretaris desa', '-', 'Kandangsemangkon', '../images/04012018155949user.png', 1, '2026'),
(3, 'Anik Handayani', 'Kaur Keuangan', '-', 'Kandangsemangkon', '../images/04012018160308user.png', 1, '2026'),
(5, 'Ahmad Kusnul Arief S.T.', 'Kasun Dengok', '-', 'Kandangsemangkon', '../images/04012018160329user.png', 1, '2026'),
(6, 'Anang Alisyahbana', 'Kaur Perencanaan', '-', 'Kandang', '../images/04012018160347user.png', 1, '2026'),
(7, 'Roses Prasetya', 'Kasi Pemerintahan', '', 'Kandangsemangkon', '2608202406271004012018160458user.png', 1, '2026'),
(14, 'faiz', 'lala', 'sma', 'made', '', 1, '2026');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur_organisasi`
--

CREATE TABLE `struktur_organisasi` (
  `id_struktur` int(2) NOT NULL,
  `id_jenis` int(1) NOT NULL,
  `nama_organisasi` varchar(25) NOT NULL,
  `gambar_struktur` text NOT NULL,
  `periode` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `struktur_organisasi`
--

INSERT INTO `struktur_organisasi` (`id_struktur`, `id_jenis`, `nama_organisasi`, `gambar_struktur`, `periode`) VALUES
(1, 1, 'Perangkat Desa', '../images/struktur/struktur-desa.png', '2013'),
(2, 2, 'BPD', '../images/struktur/BPD.png', '2013'),
(3, 3, 'LPM', '../images/struktur/lpmM.png', '2013'),
(4, 4, 'PKK', '../images/struktur/PKK.png', '2013'),
(5, 5, 'Karang Taruna', '../images/struktur/KARTAR.png', '2013'),
(6, 6, 'BUMDES', '', '2014'),
(7, 1, 'Perangkat Desa', '', '2019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umkm`
--

CREATE TABLE `umkm` (
  `id_umkm` int(11) NOT NULL,
  `nama_umkm` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `jam_buka` varchar(15) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `lokasi` varchar(255) DEFAULT NULL,
  `pemilik` varchar(255) DEFAULT NULL,
  `kontak` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `umkm`
--

INSERT INTO `umkm` (`id_umkm`, `nama_umkm`, `deskripsi`, `jam_buka`, `gambar`, `lokasi`, `pemilik`, `kontak`) VALUES
(1, 'Rujak & Lontong Tahu bu siti', 'Warung Rujak & Lontong tahu bu Siti menawarkan sajian khas rujak dan lontong tahu yang lezat dan autentik. Dengan bumbu rujak yang kaya rempah dan lontong tahu yang gurih, setiap hidangan diolah dengan bahan-bahan segar dan resep tradisional yang diwariskan dari generasi ke generasi. Terletak di lokasi strategis, warung ini menjadi tempat favorit bagi pecinta kuliner yang ingin menikmati cita rasa khas lokal. Bu Siti, sang pemilik, dengan ramah menyambut setiap pelanggan dan siap menyajikan hidangan yang memuaskan selera.', '11.00 - 16.00', '../images/umkm1.jpg', 'https://maps.app.goo.gl/pTxPZVMVvCrDs5jF9', 'Bu Siti', '085643520876'),
(2, 'Pisang Roll', 'Pisang Roll adalah salah satu jenis makanan dimana jenis makanan ini adalah makanan manis. Jenis makanan ini sering dijadikan sebagai usaha sampingan oleh kebanyakan masyarakat, karena proses pembuatannya yang tergolong mudah serta bahan-bahan yang digunakan mudah di cari atau didapatkan. Pisang Roll juga salah satu makanan ringan yang memiliki berbagai pilihan toping atau rasa yang beragam, selain memiliki toping yang beragam bahan-bahan dari produk pisang roll ini sangat mudah didapatkan atau dicari karena menggunakan bahan utama pisang dan kulit lumpia. Usaha ini bisa dikatakan suatu usaha yang cukup menguntungkan. Bahan baku yang mudah dijangkau seperti pisang, kulit lumpia,dan yang lainya, serta memiliki harga yang sangat terjangkau dan mendapat porsi yang lumayan besar, serta ditambah berbagai macam varian toping.', '15.00-21.00', '../images/umkm2.jpg', 'Ling. Padek RT 03 RW 09 Blimbing Paciran Lamongan Jawa Timur Indonesia \r\n', 'Nur Halimah', '081235905220'),
(3, 'Gapit / Opak', 'Gapit merupakan salah satu camilan khas dan cukup familiar di kalangan masyarakat desa pada umumnya. Camilan dengan bahan dasar tepung tapioka ini, biasanya disajikan pada momen hari raya, atau hajatan. Jajanan  gurih yang proses pembuatannya dengan cara diapit atau dijepit menggunakan dua lempeng besi atau baja di atas pembakaran ini.', '-', '../images/umkm3.jpg\r\n', 'Dengok RT 02 RW 08 kandangsemangkon Paciran Lamongan Jawa Timur Indonesia', 'Asmaul Husna', '089521601371'),
(4, 'Keripik Ikan Sunduk', 'Makanan khas ini mungkin tidak akan Anda jumpai di tempat lain karena ikan sunduk adalah hasil laut khas daerah nelayan. Ikan ini berukuran sebesar jari tangan dengan panjang sekitar belasan sentimeter. Sebagian besar badannya berisi tulang karena itu ikan jenis ini bukan termasuk ikan komersial yang penting seperti ikan tongkol, tenggiri, kakap, dan sejenisnya. Ikan ini biasa diolah menjadi keripik berbalut tepung yang biasa disebut dengan “kentaki” karena mirip dengan tepung ayam goreng cepat saji. Sebelum dikeripik, ikan dibelah, tulangnya dibuang, lalu dipotong kecil-kecil. Rasanya gurih kriuk-kriuk, bisa dimakan begitu saja, bisa juga dimakan sebagai lauk. Paling cocok dinikmati dengan nasi hangat dan sambal terasi dan bumbu balado. Rasanya bukan maknyus tapi mak kriuk.', '-', '../images/umkm4.jpg', 'Pt.Omyah Rt.08 Rw.03 Kandangsemangkon Paciran\r\n', 'Enni Nudhrotul Aliyah', '08819641871');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` char(5) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `hak_akses` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `hak_akses`) VALUES
('12', 'tes', '28b662d883b6d76fd96e4ddc5e9ba780', 'administrator'),
('3', 'admin', 'admin', 'administrator'),
('6', 'uci', 'f3ede926587776a8cd79fb2afe4e07b4', 'administrator'),
('adm01', 'admin', '202cb962ac59075b964b07152d234b70', 'administrator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_profil`
--
ALTER TABLE `data_profil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `isi_berita`
--
ALTER TABLE `isi_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `nama_kategori` (`nama_kategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `jenis_organisasi`
--
ALTER TABLE `jenis_organisasi`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `perangkat`
--
ALTER TABLE `perangkat`
  ADD PRIMARY KEY (`id_perangkat`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD PRIMARY KEY (`id_struktur`),
  ADD KEY `nama_organisasi` (`nama_organisasi`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indeks untuk tabel `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id_umkm`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_profil`
--
ALTER TABLE `data_profil`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `isi_berita`
--
ALTER TABLE `isi_berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `perangkat`
--
ALTER TABLE `perangkat`
  MODIFY `id_perangkat` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `perangkat`
--
ALTER TABLE `perangkat`
  ADD CONSTRAINT `perangkat_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_organisasi` (`id_jenis`);

--
-- Ketidakleluasaan untuk tabel `struktur_organisasi`
--
ALTER TABLE `struktur_organisasi`
  ADD CONSTRAINT `struktur_organisasi_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_organisasi` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
