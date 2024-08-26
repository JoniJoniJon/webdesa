<?php
// Panggil session_start() paling awal, sebelum output HTML apapun
session_start();
include 'koneksi.php';
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <title>Beranda | Desa Kandangsemangkon</title>
    <script type="text/javascript" src="asset/JQuery/jQuery-3.2.1.min.js"></script>
    <script type="text/javascript" src="asset/JQuery/jquery.cycle2.min.js"></script>
    <link rel="stylesheet" href="asset/style.css" type="text/css" />
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    [endif]-->
</head>
<body>
    <div class="wrapper">
        <!-- Header -->
        <header id="header">
            <img src="images/banner.png" alt="Banner">
            <marquee behavior="scroll" direction="left" scrollamount="5">
                - Selamat Datang di Website Resmi Desa Kandangsemangkon, Kec. Paciran, Kab. Lamongan -  || Keterbukaan Informasi || Berita Update || UMKM & Wisata
            </marquee>

            <!-- Cek apakah ini halaman utama atau bukan -->
            <?php if (!isset($_GET['menu']) || $_GET['menu'] == 'home') { ?>
            <!-- Slider hanya ditampilkan di halaman utama -->
            <div class="banner-slider">
                <?php
                // Query untuk mengambil 5 berita terbaru dengan gambar dari database
                $berita_slider = mysqli_query($koneksi, "SELECT id_berita, judul, gambar FROM isi_berita WHERE id_kategori = '1' ORDER BY tanggal DESC LIMIT 5");

                $i = 0;
                while($berita = mysqli_fetch_array($berita_slider)) {
                    echo "
                    <div class='slide " . ($i == 0 ? 'active' : '') . "'>
                        <a href='index.php?menu=detail_berita&id_berita=".$berita['id_berita']."'>
                            <img src='images/".$berita['gambar']."' alt='".$berita['judul']."' style='width:100%; height:auto;'>
                        </a>
                    </div>";
                    $i++;
                }
                ?>
            </div>

            <script>
                // JavaScript untuk mengatur perpindahan slide otomatis
                let currentSlide = 0;
                const slides = document.querySelectorAll('.banner-slider .slide');

                function showSlide(index) {
                    slides[currentSlide].classList.remove('active');
                    currentSlide = (index + slides.length) % slides.length;
                    slides[currentSlide].classList.add('active');
                }

                setInterval(() => {
                    showSlide(currentSlide + 1);
                }, 3000);
            </script>
            <?php } ?>
            <!-- End of Slider -->

            <?php include 'header.php'; ?>
        </header>

        <!-- Main Content Section -->
        <section class="courses">
            <?php include 'menu.php'; ?>
        </section>

        <!-- Sidebar -->
        <aside>
            <section class="berita-terbaru">
                <h2>Berita Terbaru</h2>
                <?php
                    $jmltampil = 3;
                    $head = mysqli_query($koneksi, "SELECT * FROM isi_berita WHERE id_kategori = '1' ORDER BY tanggal DESC LIMIT $jmltampil");
                    while($headline = mysqli_fetch_array($head)){
                        echo "<a href='index.php?menu=detail_berita&id_berita=".$headline['id_berita']."'>".$headline['judul']."
                        <font size='2px' color='#000'><br>
                        ".$headline['tanggal']."
                        </font></a>";
                    }
                ?>
            </section>

            <section class="cari">
                <h2>Pencarian</h2>
                <form method="post" action="index.php?menu=headline" name="cr">
                    <input type="text" name="pcari" size="20">
                    <input type="submit" name="cari" value="Cari">
                </form>
            </section>

            <section class="contact-details">
                <h2>Kontak</h2>
                <p>Pemerintahan Desa Kandangsemangkon<br />
                E-mail: <br>desakandangsemangkon@gmail.com<br>
                Facebook: <br>Desa Kandangsemangkon - Kabupaten Lamongan
                </p>
            </section>
        </aside>

        <!-- Footer -->
        <footer>
            <?php include 'footer.php'; ?>
        </footer>
    </div><!--wrapper-->
</body>
</html>
