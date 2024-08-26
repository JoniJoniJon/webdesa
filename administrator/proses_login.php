<?php
include '../koneksi.php'; // Pastikan koneksi.php menggunakan mysqli

// Fungsi untuk melindungi dari SQL Injection (gunakan prepared statements untuk ini)
function antiinjection($data) {
    return htmlspecialchars(stripslashes(strip_tags($data)), ENT_QUOTES);
}

// Ambil data dari POST
$username = antiinjection($_POST['username']);
$password = antiinjection($_POST['password']); // Password disimpan dan diperiksa tanpa hashing

if (isset($_POST['login'])) {
    // Gunakan prepared statements untuk query
    $query = "SELECT * FROM user WHERE username = ? AND password = ?";
    if ($stmt = mysqli_prepare($koneksi, $query)) {
        mysqli_stmt_bind_param($stmt, "ss", $username, $password);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);

        if ($user = mysqli_fetch_assoc($result)) {
            session_start();
            $_SESSION['sesi'] = $user['username'];
            
            echo "<script> alert('Login berhasil !'); </script>";
            echo "<meta http-equiv='refresh' content='0; url=admin.php'>";
        } else {
            echo "<script> alert('Login Gagal!'); </script>";
            echo "<meta http-equiv='refresh' content='0; url=login.php'>";
        }
        mysqli_stmt_close($stmt);
    } else {
        echo "Terjadi kesalahan dalam query.";
    }
}
?>
