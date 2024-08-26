<?php
include 'koneksi.php';

if (isset($_POST['cari'])) {
    // Escape string untuk mencegah SQL Injection
    $pcari = mysqli_real_escape_string($koneksi, $_POST['pcari']);

    // Query untuk pencarian berdasarkan judul
    $query = mysqli_query($koneksi, "SELECT * FROM isi_berita WHERE judul LIKE '%$pcari%' ");
    
    if (mysqli_num_rows($query) > 0) {
        echo "<section class='tengah'><article>Hasil Pencarian :<br>";
        while ($tampil = mysqli_fetch_array($query)) {
            $gede = mb_strtoupper($tampil['judul']);
            echo "<a href='index.php?menu=detail_berita&id_berita={$tampil['id_berita']}'> $gede</a><br>";
        }
        echo "</article></section><br>";
    } else {
        // Jika hasil tidak ditemukan
        echo "<section class='tengah'><article>Tidak ada hasil pencarian untuk kata kunci tersebut.</article></section><br>";
    }
} else {
    // Tampilkan berita terbaru jika tidak ada pencarian
    $tabel = "isi_berita";
    $sql = mysqli_query($koneksi, "SELECT * FROM $tabel WHERE id_kategori = '1' ORDER BY tanggal DESC LIMIT 3");

    while ($tampil = mysqli_fetch_array($sql)) {
        $potong = substr($tampil['gambar'], 3);
        $gede = mb_strtoupper($tampil['judul']);
        echo "<article>";
        echo "<figure>";
        echo "<img src='$potong' align='left' alt='gambar'>";
        echo "</figure><hgroup><h2>";
        echo "<a href='index.php?menu=detail_berita&id_berita={$tampil['id_berita']}'> $gede</a>";
        echo "</h2><i>Diunggah pada: ";
        echo $tampil['tanggal'];
        echo "</i></hgroup><br>";
        $data = substr($tampil['isi'], 0, 200);
        echo $data;
        echo "<a href='index.php?menu=detail_berita&id_berita={$tampil['id_berita']}'> baca selengkapnya >>>.</a>";
        echo "</article><br>";
    }
}
?>
