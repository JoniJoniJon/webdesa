<?php
include 'koneksi.php';

$query = "SELECT * FROM data_profil WHERE jenis='sejarah'";
$sql = mysqli_query($koneksi, $query);
$tampil = mysqli_fetch_array($sql);

echo "<h2 class='profil-desa-heading'>Sejarah Desa</h2>";

if ($tampil) {
    $potong = substr($tampil['gambar'], 3);

    echo "<article class='profil-desa-article'>";
    echo "<figure class='profil-desa-figure'>";
    echo "<img src='$potong' alt='Gambar Sejarah' class='profil-desa-image'>";
    echo "</figure>";
    echo "<p class='profil-desa-content'>" . $tampil['isi'] . "</p>";
    echo "<hgroup class='profil-desa-date'>";
    echo "<i>Diunggah pada: " . $tampil['tanggal'] . "</i>";
    echo "</hgroup>";
    echo "</article><br>";
} else {
    echo "Data tidak ditemukan.";
}
?>
