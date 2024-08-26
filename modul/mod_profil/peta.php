<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peta SID Desa Kandangsemankon</title>
    <link rel="stylesheet" href="asset/style.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
</head>
<body>
    <h2 class='profil-desa-heading'>Peta Desa</h2>
    <div id="mapid"></div>

    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script>
        // Koordinat Desa Kandangsemankon
        var lat = -6.8718; // Latitude
        var lon = 112.313676; // Longitude

        // Inisialisasi peta
        var mymap = L.map('mapid').setView([lat, lon], 15);

        // Tambahkan tile layer
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
        }).addTo(mymap);

        // Tambahkan marker untuk Desa Kandangsemankon
        var marker = L.marker([lat, lon]).addTo(mymap);

        // Popup yang muncul saat marker di klik
        marker.bindPopup("<b>Desa Kandangsemankon</b><br>Kec. Paciran, Kab. Lamongan").openPopup();

        // Fitur kontrol skala peta
        L.control.scale().addTo(mymap);
    </script>
<?php
include 'koneksi.php';

$query = "SELECT * FROM data_profil WHERE jenis='peta'";
$sql = mysqli_query($koneksi, $query);
$tampil = mysqli_fetch_array($sql);

echo "<h2 class='profil-desa-heading'>Batas Geografis Desa</h2>";

    echo "<article class='profil-desa-article'>";
    echo "<p class='profil-desa-content'>" . $tampil['isi'] . "</p>";
?>
</body>
</html>
