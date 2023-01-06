<?php
include("./function.php");
?>

<!DOCTYPE html>
<html lang="en" style="background-color: gray;">

<head>

    <title><?php echo $_POST['search'] ?>的相關搜尋結果</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Bootstrap_4/bootstrap.min.css">
    <link rel="stylesheet" href="../css/board.css">
    <script src="../Bootstrap_4/jquery-3.5.1.min.js"></script>
    <script src="../Bootstrap_4/popper.min.js"></script>
    <script src="../Bootstrap_4/bootstrap.min.js"></script>


</head>

<body style="background-color: gray;">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="../ui/index.php">
                    <h1>網路聊天平台</h1>
                </a>
            </div>

            <ul class="navbar-nav">
                <form class="form-inline" action="search.php?op=search" method="POST">
                    <input class="form-control mr-sm-2" type="text" placeholder="搜尋" name="search" id="search" required>
                    <button class="btn btn-success" type="submit">搜尋</button>
                </form>
                <?php
                if (isset($_SESSION['username'])) {
                    echo '<a href="../status/account.php?id=delete" class="btn btn-outline-danger">登出</a>';
                } else {
                    echo '<a href="../ui/login.php" class="btn btn-outline-success">登入</a>';
                }
                ?>
                <li><a href="../ui/board.php" class="btn btn-outline-success">新增文章</a></li>
            </ul>
        </div>
    </nav>

    <?php
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            ?>
    <div class="m-4">
        <div class="container">
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h4 class="center">
                        <a href="#"
                            onclick="window.open
                            ('../ui/fullmes.php?id=<?php echo $row['id'] ?>','<?php echo $row['title'] ?>');">
                            <?php echo $row['title'] ?>
                        </a>
                    </h4>
                </div>
                <div class="card-body bg-light text-dark">
                    <div class="row">
                        <div class="col-2">
                            <img class="card-img-left" src="../img/0640572.png" alt="Card image" style="width: 100px;">
                            <div class="m-2">
                                <h4>
                                    <?php echo $row["mesUser"] ?>
                                </h4>
                            </div>
                        </div>
                        <div class="col-10 scroll">
                            <div class="m-2">
                                <p class="ellipsis">
                                    <?php echo $row["messages"] ?>
                                <p>
                            </div>
                        </div>
                    </div>
                    <div class="right">
                    </div>
                </div>
            </div>
        </div>
    </div>
        <?php } ?>
    <?php } else { ?>
    <h1>
        <p style="text-align: center;">目前沒有<?php echo $_POST['search'] ?>的相關文章</p>
    </h1>
    <?php } ?>
</body>

</html>