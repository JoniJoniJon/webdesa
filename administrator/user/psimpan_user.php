<?php
include "../koneksi.php";
extract($_POST);
if (isset($tambahUser)) {
    // Menyimpan password tanpa hashing
    $query = "INSERT INTO user (id_user, username, password, hak_akses) VALUES ('$id_user', '$username', '$password', '$hak_akses')";
    $save = mysqli_query($koneksi,$query);

    if ($save) {
        echo "<script>alert('Data berhasil disimpan');
        window.location.href='admin.php?n=user';
        </script>";
    } else {
        echo "<script>alert('Data gagal disimpan');
        window.location.href='admin.php?n=tambah_user';
        </script>";
    }
}
?>
