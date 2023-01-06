<?php
include("../status/function.php");
$id = $_GET["id"];
$sql = "SELECT * FROM `mesboard` WHERE id = '$id'";
$result = mysqli_query($link, $sql) or die('MySQL query error');
$row = mysqli_fetch_array($result);
?>

<!DOCTYPE html>
<html lang="en" style="background-color: gray;">

<head>

    <title>
        <?php echo $row["title"] ?>
    </title>
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
                    echo '<a href="../status/account.php?id=delete" class="btn btn-outline-danger">登出</a>';
                } else {
                    echo '<a href="login.php" class="btn btn-outline-success">登入</a>';
                } ?>
                <li><a href="../ui/board.php" class="btn btn-outline-success">新增文章</a></li>
            </ul>
        </div>
    </nav>

    <div class="m-4">
        <div class="container">
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h4 class="center">
                        <?php echo $row["title"] ?>
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
                        <div class="col-10">
                            <div class="m-2">
                                <p><?php echo $row["messages"] ?>
                                </p>
                            </div>
                        </div>

                    </div>
                    <div class="right">
                        <?php if (isset($_SESSION['username'])) { ?>
                            <?php if ($_SESSION['username'] == $row['mesUser']) { ?>
                                <a href="../ui/edit.php?id=" <?php echo $row["id"] ?> 
                                class="btn btn-outline-warning" value="edit">編輯</a>
                                <a href="../status/function.php?id=<?php echo $row["id"] ?>&op=delete" 
                                class="btn btn-outline-danger" value="delete" onclick="return confirm('確定要刪除?')">刪除</a>
                                <a href="../ui/respond.php?id=" <?php echo $row["id"] ?> 
                                class=" btn btn-outline-info" value="res">回覆</a>
                            <?php } else { ?>
                                <a href="../ui/respond.php?id=<?php echo $row["id"] ?>" 
                                class="btn btn-outline-info" value="res">回覆</a>
                            <?php } ?>
                        <?php } ?>
                    </div>
                </div>

                <div class="card-footer card bg-secondary text-white">
                    <div class="container">
                        <?php $sql1 = "SELECT * FROM `resmesboard` ORDER BY `id` ASC";
                        $result1 = mysqli_query($link, $sql1) or die('MySQL query error');
                        if (mysqli_num_rows($result1) > 0) {
                            while ($row1 = mysqli_fetch_assoc($result1)) {
                                if ($row1["resid"] == $id) { ?>
                                    <div class="row">
                                        <div class="col-md-2">
                                            <h4><?php echo $row1["resname"] ?>
                                            </h4>
                                        </div>
                                        <div class="col-md-10">
                                            <?php echo $row1["resmes"] ?>
                                            <div class="right">
                                                <?php if (isset($_SESSION['username'])) {
                                                    if ($_SESSION['username'] == $row1['resname']) { ?>
                                                        <a href="../ui/editres.php?id=<?php echo $row1["id"] ?>
                                                        &op=<?php echo $row["id"] ?>"
                                                        class="btn btn-outline-warning" value="edit">編輯</a>
                                                        <a href="../status/function.php?id=<?php echo $row1["id"] ?>
                                                        &op=del&mesid=<?php echo $row["id"] ?>"
                                                        class=" btn btn-outline-danger" value="delete"
                                                        onclick="return confirm('確定要刪除?')">刪除</a>
                                                    <?php } ?>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                            <?php } ?>
                        </div>
                        <?php } ?>
                </div>
            </div>
        </div>
    </div>
</body>

</html>