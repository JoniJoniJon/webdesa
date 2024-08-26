<?php
include '../koneksi.php'; // pastikan koneksi ke database sudah benar

// Ambil data dari form
$id_perangkat = $_POST['id_perangkat'];
$nama = $_POST['nama'];
$jabatan = $_POST['jabatan'];
$pendidikan= $_POST['pendidikan'];
$alamat = $_POST['alamat'];
$id_jenis = $_POST['id_jenis'];
$periode = $_POST['periode'];

// Susun query untuk menyimpan data ke tabel perangkat
$query = "INSERT INTO perangkat (id_perangkat, nama, jabatan, pendidikan, alamat, id_jenis, periode) 
          VALUES ('$id_perangkat', '$nama', '$jabatan', '$pendidikan', '$alamat', '$id_jenis', '$periode')";

// Jalankan query
$sql = mysqli_query($koneksi, $query);

// Tentukan halaman kembali berdasarkan jenis perangkat
switch ($id_jenis) {
    case '1':
        $back = 'organisasi';
        break;
    case '2':
        $back = 'BPD';
        break;
    case '3':
        $back = 'LPM';
        break;
    case '4':
        $back = 'pkk';
        break;
    case '5':
        $back = 'karang_taruna';
        break;
    case '6':
        $back = 'bumdes';
        break;
    default:
        $back = 'organisasi'; // Default halaman jika jenis tidak dikenal
        break;
}

// Jika query berhasil, redirect ke halaman yang sesuai
if ($sql) {
    header("location:admin.php?n=perangkat_".$back."&page=1");
} else {
    // Jika query gagal, tampilkan pesan kesalahan
    echo "Maaf, Terjadi kesalahan saat mencoba untuk menyimpan data ke database. ";
    echo "<br><a href='admin.php?n=tambah_perangkat'>Kembali Ke Form</a>";
}

?>
