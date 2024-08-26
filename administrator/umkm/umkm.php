<?php
include '../koneksi.php';
if(empty($_SESSION['sesi'])){
    echo "<meta http-equiv='refresh' content='0; url=login.php'>";
} else {
    // Tampilan UMKM
?>
<!DOCTYPE html>
<html>
<head>
    <title>Halaman UMKM</title>
    <style>
        /* CSS tambahan untuk styling */
        .short-description {
            max-width: 200px; /* Atur lebar maksimum yang diinginkan */
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
    </style>
</head>
<body>
    Ini Halaman UMKM<hr>
    <a href="admin.php?n=tambah_umkm" class="button">Tambah Data UMKM</a>
    <table border="1" id="theTable">
        <tr>
            <th>Nama UMKM</th>
            <th>Deskripsi</th>
            <th>Jam Buka</th>
            <th>Gambar</th>
            <th>Lokasi</th>
            <th>Pemilik</th>
            <th>Kontak</th>
            <th>Opsi</th>
        </tr>
        <?php
        $page = isset($_GET['page']) ? $_GET['page'] : 1;
        $page2 = ($page - 1) * 10;
        $data = mysqli_query($koneksi, "SELECT * FROM umkm LIMIT $page2, 10");
        while ($umkm = mysqli_fetch_array($data)) {
            $deskripsi = $umkm['deskripsi'];
            $short_description = strlen($deskripsi) > 100 ? substr($deskripsi, 0, 100) . '...' : $deskripsi;
            echo "<tr>
            <td>{$umkm['nama_umkm']}</td>
            <td class='short-description'>$short_description</td>
            <td>{$umkm['jam_buka']}</td>
            <td><img src='../images/{$umkm['gambar']}' width='100' height='auto'></td>
            <td>{$umkm['lokasi']}</td>
            <td>{$umkm['pemilik']}</td>
            <td>{$umkm['kontak']}</td>
            <td>
                <a href='admin.php?n=ubah_umkm&id_umkm={$umkm['id_umkm']}' id='button2'><img src='../asset/icon/edit.png' width='15px' height='15px'> Edit</a>
                |
                <a href='admin.php?n=hapus_umkm&id_umkm={$umkm['id_umkm']}' onClick=\"return confirm('Apakah data ini akan dihapus ?')\" title='Hapus Data' id='button2'><img src='../asset/icon/garbage.png' width='15px' height='15px'> Hapus</a>
            </td>
            </tr>";
        }
        ?>
    </table>
    <hr>Halaman <br>
    <?php
    $query = mysqli_query($koneksi, "SELECT COUNT(*) as total FROM umkm");
    $row = mysqli_fetch_array($query);
    $total = $row['total'];
    $a = ceil($total / 10);
    for($b = 1; $b <= $a; $b++) {
        echo "<a href='admin.php?n=umkm&page=$b' id='button2'>$b</a> ";
    }
    ?>
</body>
</html>
<?php
}
?>
