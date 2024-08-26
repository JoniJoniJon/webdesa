<?php
echo "<article><hgroup>Halaman Struktur Organisasi BPD<br>";
?>

<?php
echo "<br>Berdasarkan Periode<br>";
include 'koneksi.php';

// Query untuk menampilkan daftar periode
$sql = mysqli_query($koneksi, "SELECT DISTINCT periode FROM perangkat WHERE id_jenis = '2'");

if (mysqli_num_rows($sql) != 0) {
    while ($data = mysqli_fetch_assoc($sql)) {
        echo "<a href='index.php?menu=periode_bpd&periode=" . $data['periode'] . "' class='thperiode'>" . $data['periode'] . "</a> ||";
    }
} else {
    echo "Data tidak ditemukan.";
}
?>
<hgroup> </article>
