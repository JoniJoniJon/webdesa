<?php
include 'koneksi.php'; // Pastikan koneksi.php menggunakan MySQLi

// Ambil id_berita dari parameter GET
$id_berita = isset($_GET['id_berita']) ? $_GET['id_berita'] : '';

if ($id_berita) {
    // Gunakan prepared statement untuk mencegah SQL injection
    $stmt = $koneksi->prepare("SELECT * FROM isi_berita WHERE id_berita = ?");
    $stmt->bind_param('i', $id_berita); // 'i' menandakan tipe data integer
    $stmt->execute();
    $result = $stmt->get_result();
    $tampil = $result->fetch_assoc();

    // Cek apakah data ditemukan
    if ($tampil) {
        $potong = substr($tampil['gambar'], 3);
        $gede = mb_strtoupper($tampil['judul']); // Judul tanpa sanitasi
        $tanggal = $tampil['tanggal']; // Tanggal tanpa sanitasi
        $isi = $tampil['isi']; // Isi tanpa sanitasi

        echo "<article>";
        echo "<figure>";
        echo "<img src='$potong' align='left' alt='gambar'>";
        echo "</figure><hgroup><h2>";
        echo $gede;
        echo "</h2><br><i>Di unggah pada ";
        echo $tanggal;
        echo "</i></hgroup><br>";
        echo $isi; // Isi dengan HTML
        echo "</article><br>";
    } else {
        echo "Berita tidak ditemukan.";
    }

} else {
    echo "ID berita tidak valid.";
}
?>
