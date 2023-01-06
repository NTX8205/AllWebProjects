<?php
include("../status/function.php");
$id = $_GET["id"];
$mesid = $_GET["op"];
$sql = "SELECT * FROM `resmesboard` WHERE id = '$id'";
$result = mysqli_query($link, $sql) or die('MySQL query error');
$row = mysqli_fetch_array($result);
if (isset($_SESSION['username'])) {
} else {
    header("location: login.php");
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>回覆留言</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Bootstrap_4/bootstrap.min.css">
    <link rel="stylesheet" href="../css/board.css">
    <script src="../Bootstrap_4/jquery-3.5.1.min.js"></script>
    <script src="../Bootstrap_4/popper.min.js"></script>
    <script src="../Bootstrap_4/bootstrap.min.js"></script>
    <script src="../javascript/board.js"></script>
</head>

<body>
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand">
            <h1 class="brandname">回覆</h1>
        </a>
       <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item mr-5">
                        <a class="nav-link" href="index.php">首頁</a>
                    </li>
                </ul>

            </div>
    </nav>

    <form method="POST"
        action="../status/function.php?op=editres&mesid=<?php echo $mesid?>">

        <div class="m-4">
            <div class="input-group">
                <div class="input-group-prepand">
                    <span class="input-group-text">內容: </span>
                    <div class="form-group">
                        <textarea class="form-control" name="content" cols="261" rows="6" id="borad" placeholder="輸入名稱"
                            required><?php echo $row["resmes"] ?></textarea>
                    </div>
                </div>
            </div>
        </div>

        <div class="m-3">
            <input type="hidden" name="id" value="<?php echo $id ?>">
            <button type="submit" name="add" value="" class="btn btn-primary" id="send"
                onclick="return confirm('確定要送出？')">送出</button>
        </div>
    </form>

</body>

</html>