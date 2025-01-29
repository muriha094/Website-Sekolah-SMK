<?php 

require_once "../config.php";

$sekolah = mysqli_query($koneksi, "SELECT * FROM tbl_sekolah WHERE id = 1");
$data = mysqli_fetch_array($sekolah);

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login - SMK MURIHA</title>
        <link href="<?= $main_url ?>asset/sb-admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
        <link rel="icon" type="image/x-icon" href="<?= $main_url ?>asset/image/school.png">
        <style>
            #bgLogin {
                background-image: url("../asset/image/<?= $data['gambar'] ?>");
                background-size: cover;
                background-position: center center;
            }
            .password-wrapper {
                position: relative;
            }
            .password-wrapper button {
                position: absolute;
                top: 50%;
                right: 10px;
                transform: translateY(-50%);
                border: none;
                background: none;
                cursor: pointer;
            }
        </style>
    </head>
    <body id="bgLogin">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container mt-4">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <h4 class="text-center font-weight-light my-4">Login - SMK MURIHA</h4>
                                    </div>
                                    <div class="card-body">
                                        <form action="proses-login.php" method="POST">
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="username" name="username" type="text" pattern="[A-Za-z0-9]{3,}" title="kombinasi huruf minimal 3 karakter" placeholder="Username" autocomplete="off" required />
                                                <label for="username">Username</label>
                                            </div>
                                            <div class="form-floating mb-3 password-wrapper">
                                                <input class="form-control" id="inputPassword" type="password" placeholder="Password" minlength="4" name="password" required />
                                                <label for="inputPassword">Password</label>
                                                <button type="button" id="toggle-password">
                                                    <i class="bi bi-eye" id="icon-password"></i>
                                                </button>
                                            </div>
                                            <button type="submit" name="login" class="btn btn-primary col-12 rounded-pill my-2">Login</button>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="text-muted small">Copyright &copy; SMK MURIHA <?= date("Y") ?></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script>
            document.getElementById("toggle-password").addEventListener("click", function() {
                const passwordField = document.getElementById("inputPassword");
                const iconPassword = document.getElementById("icon-password");

                if (passwordField.type === "password") {
                    passwordField.type = "text";
                    iconPassword.classList.remove("bi-eye");
                    iconPassword.classList.add("bi-eye-slash");
                } else {
                    passwordField.type = "password";
                    iconPassword.classList.remove("bi-eye-slash");
                    iconPassword.classList.add("bi-eye");
                }
            });
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="<?= $main_url ?>asset/sb-admin/js/scripts.js"></script>
    </body>
</html>
