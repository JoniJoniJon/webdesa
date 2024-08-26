<?php
include 'koneksi.php'; // Memastikan koneksi database sudah didefinisikan

$tabel = "isi_berita";
$query = "SELECT * FROM $tabel WHERE id_kategori = '2' ORDER BY tanggal DESC LIMIT 5";
$sql = mysqli_query($koneksi, $query);

if ($sql) {
    while ($tampil = mysqli_fetch_array($sql, MYSQLI_ASSOC)) {
        $potong = substr($tampil['gambar'], 3);

        echo "<article>";
        echo "<figure>";
        echo "<img src='$potong' align='left' alt='gambar'>";
        echo "</figure><hgroup><h2>";
        echo $tampil['judul'];
        echo "</h2><br>";
        echo $tampil['tanggal'];
        echo "</hgroup><br>";

        $data = substr($tampil['isi'], 0, 200);
        echo $data;
        echo "<a href='index.php?menu=detail_berita&id_berita={$tampil['id_berita']}'> &nbsp baca selengkap >>>.</a>";
        echo "</article><br>";
    }
} else {
    echo "Query error atau data tidak ditemukan.";
}
?>
