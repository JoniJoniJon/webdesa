<article class="tengah">
  <?php
  include "koneksi.php";
  
  if (isset($_GET['periode'])) {
      $periode = $_GET['periode'];

      // Menggunakan mysqli untuk query
      $query = "SELECT * FROM struktur_organisasi WHERE id_jenis = '2' AND periode = '$periode'";
      $data = mysqli_query($koneksi, $query);

      if ($data && mysqli_num_rows($data) > 0) {
          $organisasi = mysqli_fetch_array($data);

          // Menghitung periode akhir
          $prd = $organisasi['periode'] + 5;
          $potong = substr($organisasi['gambar_struktur'], 3); // Memotong jalur gambar

          // Menampilkan data organisasi
          echo "
          Struktur
          {$organisasi['nama_organisasi']}<br>
          Periode
          {$organisasi['periode']} - $prd<br>
          ";
          echo "<img src='$potong' align='left' alt='gambar'><br>";
      } else {
          echo "Data tidak ditemukan untuk periode ini.";
      }
  } else {
      echo "Periode tidak tersedia.";
  }
  ?>
  
  <br>Daftar Perangkat BPD<br>
  <table border="1" id='tabel2'>
    <tr>
      <th>Nama</th>
      <th>Jabatan</th>
    </tr>
  <?php
  // Query untuk menampilkan perangkat BPD
  if (isset($_GET['periode'])) {
      $periode = $_GET['periode'];
      $query_perangkat = "SELECT * FROM perangkat WHERE id_jenis = '2' AND periode = '$periode'";
      $data_perangkat = mysqli_query($koneksi, $query_perangkat);

      while ($desa = mysqli_fetch_array($data_perangkat)) {
          echo "
          <tr>
            <td><a href='index.php?menu=detail_ap_l&id_perangkat={$desa['id_perangkat']}'>{$desa['nama']}</a></td>
            <td>{$desa['jabatan']}</td>
          </tr>
          ";
      }
  }
  ?>
  </table>
</article>
