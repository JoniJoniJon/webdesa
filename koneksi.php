<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webdesa";

// Create connection
$koneksi = mysqli_connect ($servername, $username, $password, $dbname);

// Check connection
if ($koneksi->connect_error) {
    die("Connection failed: " . $koneksi->connect_error);
}

?>
