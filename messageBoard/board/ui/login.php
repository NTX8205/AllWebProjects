<?php
include("../status/account.php");

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>登入</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=divice-width, intital-scale-1.0">
    <link rel="stylesheet" href="../Bootstrap_4/bootstrap.min.css">
    <link rel="stylesheet" href="../css/account.css">
    <script src="../Bootstrap-4-exwork/Bootstrap_4/jquery-3.5.1.min.js"></script>
    <script src="../Bootstrap_4/popper.min.js"></script>
    <script src="../Bootstrap_4/bootstrap.min.js"></script>
</head>

<body>


    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand">
                    <h1>登入</h1>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item mr-5">
                        <a class="nav-link" href="index.php">首頁</a>
                    </li>
                </ul>

            </div>
            <ul class="navbar-nav">
                <?php
                if (isset($_SESSION['username'])) {
                    echo '<a href="../status/account.php?id=delete" class="btn btn-success">登出</a>';
                } else {
                    echo '<a href="register.php" class="btn btn-outline-success">註冊</a>';
                }
                ?>
            </ul>
        </div>
    </nav>
    <div class="container mt-3">
        <div class="card">
            <div class="card-body">
                <form action="../status/account.php?id=log" method="POST">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">帳號 :</span>
                        </div>
                        <input type="text" class="form-control" placeholder="輸入帳號" id="account" name="username"
                            required>
                    </div>

                    <div class="input-group mb-3">
                        <div class="input-group-append">
                            <span class="input-group-text">密碼 :</span>
                        </div>
                        <input type="password" class="form-control" placeholder="輸入密碼" id="password" name="pw" required>

                    </div>
                    <button type="submit" class="btn btn-primary">登入</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>