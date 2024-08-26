<?php
include 'koneksi.php';

$tabel = "data_profil";
$sql = mysqli_query($koneksi, "SELECT * FROM $tabel WHERE jenis = 'profil' ORDER BY tanggal DESC LIMIT 5");


echo "<h2 class='profil-desa-heading'>Profil Desa</h2>";
    
while ($tampil = mysqli_fetch_array($sql)) {

    $gambar = substr($tampil['gambar'], 3); 
    echo "<article class='profil-desa-article'>";
    echo "<figure class='profil-desa-figure'>";
    echo "<img src='$gambar' alt='Gambar Profil Desa' class='profil-desa-image'>";
    echo "</figure>";


    echo "<p class='profil-desa-content'>" . $tampil['isi'] . "</p>";
    

    echo "<hgroup class='profil-desa-date'>";
    echo "<i>Diunggah pada: " . $tampil['tanggal'] . "</i>";
    echo "</hgroup><br>";

    echo "</article><br>";
}
?>
