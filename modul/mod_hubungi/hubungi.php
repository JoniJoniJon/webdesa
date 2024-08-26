<!DOCTYPE html>
<html>
<head>
    <title>Hubungi Kami</title>
</head>
<body>
    <article class="tengah">
        Untuk menghubungi kami dapat melalui email ke <a href="mailto:desakandangsemangkon@gmail.com">desakandangsemangkon@gmail.com</a><br>
        Atau ikuti fanspage Facebook kami di <a href="https://facebook.com/Desakandangsemangkona-Kabupatenlamongan" target="_blank">facebook.com/Desa kandangsemangkona- Kabupaten lamongan</a>. Dapat juga langsung datang ke Kantor Desa kandangsemangkon yang beralamat di Jalan ...

        <p>Anda juga dapat menghubungi kami dengan mengisi form di bawah ini</p>
        <form method="post" action="index.php?menu=x34567x">
            <table border="1" width="500" id="tabel2">
                <input type="hidden" name="id_komentar" />
                <tr>
                    <th>Nama </th>
                    <td>:</td>
                    <td align="left"><input type="text" name="nama" required /></td>
                </tr>
                <tr>
                    <th>Email </th>
                    <td>:</td>
                    <td align="left"><input type="email" name="email" required /></td>
                </tr>
                <tr>
                    <th>Subjek </th>
                    <td>:</td>
                    <td align="left"><input type="text" name="subjek" required /></td>
                </tr>
                <tr>
                    <th>Pesan </th>
                    <td>:</td>
                    <td align="left"><textarea name="pesan" cols="50" rows="10" required></textarea></td>
                </tr>
                <tr>
                    <th colspan="3"><input type="submit" name="kirim" id="button3" value="Kirim"></th>
                </tr>
            </table>
        </form>
        <br>
        <hr>
        <p>Daftar Pesan :</p>
        <?php
        include 'koneksi.php';

        $query = "SELECT * FROM komentar";
        $result = mysqli_query($koneksi, $query);

        if ($result) {
            while ($data = mysqli_fetch_assoc($result)) {
                echo "
                <p>Tanggal: " . htmlspecialchars($data['tanggal']) . "</p>
                <p>Nama: " . htmlspecialchars($data['nama']) . "</p>
                <p>Pesan: " . htmlspecialchars($data['pesan']) . "</p>
                <hr>
                ";
            }
        } else {
            echo "Tidak ada pesan atau query error.";
        }
        ?>
    </article>
</body>
</html>
