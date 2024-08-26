<?php
include 'koneksi.php';

$query = "SELECT * FROM perangkat";
$sql = mysqli_query($koneksi, $query);

if ($sql) {
    while ($tampil = mysqli_fetch_array($sql)) {
        // Memastikan kunci 'gambar', 'jabatan', 'nama', dan 'periode' ada sebelum digunakan
        $gambar = isset($tampil['gambar']) ? $tampil['gambar'] : 'default_image.png';
        $jabatan = isset($tampil['jabatan']) ? $tampil['jabatan'] : 'Jabatan tidak tersedia';
        $nama = isset($tampil['nama']) ? $tampil['nama'] : 'Nama tidak tersedia';
        $periode = isset($tampil['periode']) ? $tampil['periode'] : 'Periode tidak tersedia';

        $potong = substr($gambar, 3);
        
        echo "<article class='perangkat-article'>";
        echo "<figure class='perangkat-figure'>";
        echo "<img src='$potong' alt='Gambar Perangkat' class='perangkat-image'>";
        echo "</figure>";
        echo "<div class='perangkat-info'><br>";
        echo "<h3 class='perangkat-nama'>$nama</h3>";
        echo "<p class='perangkat-jabatan'>$jabatan</p>";
        echo "<p class='perangkat-periode'>Periode: $periode</p>";
        echo "</div>";
        echo "</article><br>";
    }
} else {
    echo "Data tidak ditemukan atau query error.";
}
?>
