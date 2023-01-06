<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link href="/allproject/board_v2/mes.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <script src="/allproject/board_v2/mes.js"></script>
    <title>註冊</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <h3>註冊</h3>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page"
                            href="/allproject/messageboard/board_v2/board/board.php">留言板</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="/allproject/messageboard/board_v2/userdata/login.php">登入</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container-fluid mid">
        <form action="method.php" method="post">
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">帳號</label>
                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="輸入帳號" name="user"
                    value="" require>
            </div>
            <div class="mb-3">
                <label for="exampleFormControlTextarea1" class="form-label">密碼</label>
                <input type="password" class="form-control" placeholder="輸入密碼" name="password" value="" require>
            </div>
            <div class="mb-3">
                <button type="submit" class="btn btn-outline-info" name="method" value="register">註冊</button>
            </div>
        </form>
    </div>
</body>

</html>