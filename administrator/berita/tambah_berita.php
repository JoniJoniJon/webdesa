<?php
include'../koneksi.php';
if(empty($_SESSION['sesi'])){
	echo"<meta http-equiv='refresh' content='0; url=login.php'>";
} else{
	//tampilan berita
	?>
	<!DOCTYPE html>
	<html>
	  <head>
	    <title>Halaman Tambah Berita </title>
			<script src="../asset/ckeditor/ckeditor.js"></script>
	  </head>
	  <body>
			Tambah Data berita
			<hr>
			<form method="post" enctype="multipart/form-data" action="admin.php?n=proses_simpan">
			<table border="1"  id="theTable">		
						<input type="hidden" name="id_berita" maxlength="5"/>


				<tr>
    <th>Kategori</th>
    <td align="left">
        <select name="nama_kategori">
            <option value="pendapat">Pernyataan Pendapat</option>
            <option value="ide_gagasan">Ide atau Gagasan</option>
            <option value="ekonomi">Ekonomi</option>
            <option value="keuangan">Keuangan</option>
            <option value="politik">Politik</option>
            <option value="sosial">Sosial Kemasyarakatan</option>
            <option value="pendidikan">Pendidikan</option>
            <option value="hukum_keadilan">Hukum dan Keadilan</option>
            <option value="olahraga">Olahraga</option>
            <option value="kriminal">Kriminal</option>
            <option value="bencana">Bencana</option>
			<option value="wisata">Wisata</option>
        </select>
    </td>
</tr>

				<tr>
	        <th>Judul</th>
					<td align="left">
						<input type="text" name="judul" size="80" maxlength="80" />
					</td>
				</tr>
				<tr>
	        <th>Tanggal</th>
					<td align="left">
						<input type="date" name="tanggal" id="datepicker"/>
					</td>
				</tr>
				<tr>
	        <th>Waktu</th>
					<td align="left">
						<input type="time" name="waktu" id="waktu"/>
					</td>
				</tr>
				<tr>
	        <th>Gambar</th>
					<td align="left">
						<input type="file" name="gambar" />
					</td>
				</tr>
				<tr>
	        <th>Isi</th>
					<td align="left">
						<textarea type="text" name="isi" class="ckeditor">
						</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" name="tambah_berita" value="Tambah" id='button2' />
					</td>
				</tr>
				<tr>
					<td colspan="2" align="left"><a href="admin.php?n=berita" id='button2'><img src='../asset/icon/back.png' width='15px' height='15px'>Kembali</a></td>
				</tr>
			</table>
		</form>
		</body>
	</html>
	<?php
}
	?>
