<?php
include 'koneksi.php';

// Pastikan $koneksi sudah didefinisikan di koneksi.php
$tabel = "umkm";
$query = "SELECT * FROM $tabel ORDER BY id_umkm DESC LIMIT 5";
$sql = mysqli_query($koneksi, $query);

if ($sql) {
    while ($tampil = mysqli_fetch_array($sql)) {
        $potong = substr($tampil['gambar'], 3); // Jika Anda ingin menampilkan gambar

        echo "<article>";
        echo "<figure>";
        echo "<img src='$potong' align='left' alt='gambar'>";
        echo "</figure><hgroup><h2>";
        echo $tampil['nama_umkm'];
        echo "</h2><br>";
        echo "<p>{$tampil['deskripsi']}</p>";
        echo "</hgroup><br>";

        echo "<a href='index.php?menu=detail_umkm&id_umkm={$tampil['id_umkm']}'> &nbsp baca selengkapnya >>>.</a>";
        echo "</article><br>";
    }
} else {
    echo "Query error atau data tidak ditemukan.";
}
?>
