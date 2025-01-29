//add-siswa.php
<?php 

session_start();

if (!isset($_SESSION["ssLogin"])) {
    header("location:../auth/login.php");
    exit;
}

require_once "../config.php";
$title ="Tambah Siswa - SMK MURIHA";
require_once "../template/header.php";
require_once "../template/navbar.php";
require_once "../template/sidebar.php";

$queryNis = mysqli_query($koneksi, "SELECT max(nis) as maxnis FROM tbl_siswa");
$data = mysqli_fetch_array($queryNis);
$maxnis = $data["maxnis"];

$noUrut = (int) substr($maxnis, 4, 3);
$noUrut++;
$maxnis = "2024" . sprintf("%03d", $noUrut);

?>

<div id="layoutSidenav_content">
    <main>
        <div class="container-fluid px-4">
            <h1 class="mt-4">Tambah Siswa</h1>
            <ol class="breadcrumb mb-4">
                <li class="breadcrumb-item"><a href="../index.php">Home</a></li>
                <li class="breadcrumb-item"><a href="siswa.php">Siswa</a></li>
                <li class="breadcrumb-item active">Tambah Siswa</li>
            </ol>
            <form action="proses-siswa.php" method="POST" enctype="multipart/form-data">
            <div class="card">
                <div class="card-header">
                    <span class= "h5 my-2"><i class="fa-solid fa-square-plus"></i> Tambah Siswa</span>
                    <button type= "submit" name="simpan" class="btn btn-primary float-end"><i class="fa-regular fa-floppy-disk"></i> Simpan</button>
                    <button type= "reset" name="reset" class="btn btn-danger float-end me-1"><i class="fa-solid fa-xmark"></i> Reset</button>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-8">
                            <div class="mb-3 row">
                                <label for="nis" class="col-sm-2 col-form-label">NIS</label>
                                <label for="nis" class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-9" style="margin-left: -50px;">
                                    <input type="text" name="nis" readonly class="form-control-plaintext border-bottom ps-2" id="nis" value="<?= $maxnis ?>">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="nama" class="col-sm-2 col-form-label">Nama</label>
                                <label for="nis" class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-9" style="margin-left: -50px;">
                                    <input type="text" name="nama" required class="form-control border-0 border-bottom ps-2" id="nis">
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="kelas" class="col-sm-2 col-form-label">Kelas</label>
                                <label for="nis" class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-9" style="margin-left: -50px;">
                                    <select name="kelas" id="kelas" class="form-select border-0 border-bottom" required>
                                        <option selected>--Pilih Kelas--</option>
                                        <option value="X">X</option>
                                        <option value="XI">XI</option>
                                        <option value="XII">XII</option>
                                    </select>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="jurusan" class="col-sm-2 col-form-label">Jurusan</label>
                                <label for="nis" class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-9" style="margin-left: -50px;">
                                    <select name="jurusan" id="jurusan" class="form-select border-0 border-bottom" required>
                                        <option selected>--Pilih Jurusan--</option>
                                        <option value="Kimia Industri">Kimia Industri</option>
                                        <option value="RPL">RPL</option>
                                        <option value="Akuntansi">Akuntansi</option>
                                    </select>
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                                <label for="nis" class="col-sm-1 col-form-label">:</label>
                                <div class="col-sm-9" style="margin-left: -50px;">
                                    <textarea name="alamat" id="alamat" cols="30" rows="3" placeholder="Masukkan Alamat Siswa" class= "form-control" required></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-4 text-center px-5">
                            <img src="../asset/image/default.png" alt="" class="mb-3" width="40%">
                            <input type="file" name="image" class="form-control form-control-sm">
                            <small class="text-secondary">Pilih foto PNG, JPG, atau JPEG dengan ukuran maximal 1 MB</small>
                            <div><small class="text-secondary">width = height</small></div>
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </main>
<?php 

require_once "../template/footer.php";

?>