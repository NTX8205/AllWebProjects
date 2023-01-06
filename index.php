<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>個人頁面</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <style>
    .row {
        line-height: 2cm;
        text-align: center;
    }
    </style>
</head>

<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Eighth navbar example">
        <div class="container">
            <a class="navbar-brand" href="#">索引</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07"
                aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExample07">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="../dashboard/index.html">xampp 介紹</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/phpmyadmin/">phpmyadmin</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="info.php">phpinfo</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container-fluid mt-3">
        <div class="row">
            <div class="col-3">
                <a href="workshop/CodeIgniter3/index.php/article/index">
                    CI3
                </a>
            </div>

            <div class="col-3">
                <a href="messageBoard\board\ui\index.php">
                    留言板v1
                </a>
            </div>
            <div class="col-3">
                <a href="messageBoard\board_v2\board\board.php">
                    留言板v2
                </a>
            </div>
            <div class="col-3">
                <a href="web/index.php">
                    練習
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-3"><a href="./learning/ajax/opendata/index.html">開放資料</a></div>
            <div class="col-3">
                <a href="messageboard/board_v3/src/article/list.php">
                    留言板v3
                </a>
            </div>
            <div class="col-3">
                <a href="messageBoard/message_board/src/article/list.php">
                    留言板V3_2
                </a>
            </div>
            <div class="col-3"><a href="learning/Guestbook/index.php">
                    留言板
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-3">.col-sm-3</div>
            <div class="col-3">.col-sm-3</div>
            <div class="col-3">.col-sm-3</div>
            <div class="col-3">.col-sm-3</div>
        </div>
    </div>

</body>


</html>