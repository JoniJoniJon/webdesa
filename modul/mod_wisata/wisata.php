<?php
include 'koneksi.php';

$tabel = "data_profil";
$sql = mysqli_query($koneksi, "SELECT * FROM $tabel WHERE jenis = 'wisata' ORDER BY tanggal DESC LIMIT 5");


echo "<h2 class='profil-desa-heading'>Wisata Pantai Pengkolan</h2>";
    
while ($tampil = mysqli_fetch_array($sql)) {

    $gambar = substr($tampil['gambar'], 3); 
    echo "<article>";
    echo "<figure>";
    echo "<img src='$gambar' alt='Gambar Wisata' class='profil-desa-image'>";
    echo "</figure>";


    echo "<p class='profil-desa-content'>" . $tampil['isi'] . "</p>";
    

    echo "<hgroup class='profil-desa-date'>";
    echo "<i>Diunggah pada: " . $tampil['tanggal'] . "</i>";
    echo "</hgroup><br>";

    echo "</article><br>";
}
?>
