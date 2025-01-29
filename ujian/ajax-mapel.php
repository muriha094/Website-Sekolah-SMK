<?php 

require_once "../config.php";
// Validasi jika parameter 'jurusan' tidak ada atau kosong
if (!isset($_GET['jurusan']) || empty($_GET['jurusan'])) {
    echo "Jurusan tidak dipilih atau kosong!";
    exit;
}

$jurusan = $_GET['jurusan'];

$no = 1;
$queryPelajaran = mysqli_query($koneksi, "SELECT * FROM tbl_pelajaran 
WHERE jurusan = 'Umum' or jurusan = '$jurusan' ");
// Cek apakah query menghasilkan data
if (mysqli_num_rows($queryPelajaran) == 0) {
    echo "<tr><td colspan='4' align='center'>Tidak ada mata pelajaran untuk jurusan ini.</td></tr>";
} else {
while ($data = mysqli_fetch_array($queryPelajaran)) { ?>
    <tr>
        <td align= "center"><?= $no++ ?></td>
        <td><input type="text" name="mapel[]" value="<?= $data['pelajaran']?>" 
        class="border-0 bg-transparent col-12" readonly></td>
        <td><input type="text" name="jurus[]" value="<?= $data['jurusan']?>" 
        class="border-0 bg-transparent col-12" readonly></td>
        <td><input type="number" name="nilai[]" value="0" min="0" max="100" step="5" 
        class="form-control nilai text-center" onchange="fnhitung()"></td>
    </tr>
<?php
    }
}

?>