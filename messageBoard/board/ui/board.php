<?php
include("../status/function.php");

if (isset($_SESSION['username'])) {
} else {
    header("location: login.php");
}

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>新增貼文</title>
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
            <h1 class="brandname">新增貼文</h1>
        </a>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item mr-5">
                    <a class="nav-link" href="index.php">首頁</a>
                </li>
            </ul>

        </div>
    </nav>

    <form method="POST" action="../status/function.php?op=add" enctype="multipart/form-data">
        <div class="m-4">
            <div class="input-group">
                <div class="input-group-prepand">
                    <span class="input-group-text">標題: </span>
                </div>
                <input class="form-control" type="text" placeholder="輸入標題" name="title" id="main" class="m-3" required>
            </div>
        </div>

        <div class="m-4">
            <div class="input-group">
                <div class="input-group-prepand">
                    <span class="input-group-text">內容: </span>
                    <div class="form-group">
                        <textarea class="form-control" name="content" cols="261" rows="6" id="borad" placeholder="輸入名稱"
                            required></textarea>
                    </div>
                </div>
            </div>
        </div>

        <div class="m-4">
            <div class="input-group">

                <span class="input-group-text">圖片上傳</span>
                <input type="file" name="file" id="file">
            </div>
        </div>

        <div class="m-3">

            <button type="submit" name="add" value="" class="btn btn-primary" id="send"
                onclick="return confirm('確定要送出？')">送出</button>
            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"
                id="preview">預覽</button>
        </div>
    </form>

    <div class="container">

        <div class="modal fade" id="myModal">
            <div class="modal-dialog modal-xl modal-dialog-centered modal-dialog-scrollable">
                <div class="modal-content">

                    <div class="modal-header">
                        <h2 class="modal-title">文章預覽</h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">
                        <div class="m-4">
                            <div class="container">
                                <div class="card">
                                    <div class="card-header bg-dark text-white">
                                        <h4 class="center" id="previewTitle"></h4>
                                    </div>
                                    <div class="card-body bg-light text-dark" id="previewBoard">
                                        <div class="row">
                                            <div class="col-2">
                                                <img class="card-img-left" src="../img/0640572.png" alt="Card image"
                                                    style="width:100%;">
                                                <h4 id="previewName">
                                                    <?php echo $_SESSION['username'] ?>
                                                </h4>
                                            </div>
                                            <div class="col-10 scroll">
                                                <p id="previewContent"></p>
                                            </div>

                                        </div>
                                        <div class="right">
                                            <a href="#" class="btn btn-warning">編輯</a>
                                            <a href="#" class="btn btn-danger">刪除</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer ">
                        <button type="button" class="btn btn-danger" data-dismiss="modal" id="del">關閉</button>
                    </div>

                </div>
            </div>
        </div>

    </div>
</body>

</html>