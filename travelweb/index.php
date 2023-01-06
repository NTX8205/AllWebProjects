<?php
require('./functions/count.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">

    <link rel="stylesheet" href="./css/web.css">
    <link rel="stylesheet" href="./css/index.css">


    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
    <script src="./js/time.js"></script>
    <title>帶你玩台中</title>
</head>

<body>
    <header id="top"></header>
    <nav class="navbar navbar-expand-lg fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="index.php">帶你玩台中</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item ">
                        <input type="button" class="nav-link active link" onclick="javascript:location.href='attractions.php'" value="⌂景點介紹">
                    </li>
                    <li class="nav-item ">
                        <input type="button" class="nav-link active link" onclick="javascript:location.href='coffee.php'" value="⌂夜景咖啡廳">
                    </li>
                    <li class="nav-item ">
                        <input type="button" class="nav-link active link" onclick="javascript:location.href='source.php'" value="關於">
                    </li>
                </ul>
            </div>
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="count nav-link disabled text-black">瀏覽人數 :<?php echo $people; ?></a>
                </li>
                <li class="nav-item">
                    <a class="count nav-link disabled text-black" id="now"></a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="container">
        <section id="img1" class="img"></section>
        <section id="content1" class="content">各種有趣的景點</section>
        <section id="img2" class="img"></section>
        <section id="content2" class="content">值得留下汗水的地方</section>
        <section id="img3" class="img"></section>
        <section id="content3" class="content">藝術的饗宴</section>
        <section id="img4" class="img"></section>
        <section id="content4" class="content">柔和的黃昏</section>
        <section id="img5" class="img"></section>
        <section id="content5" class="content">夜晚的景色</section>
        <section id="img6" class="img"></section>

    </div>

    <a type="button" href="#" class="btn-bd-primary link gotop text-black"> (つ´ω`)つ TOP </a>
</body>

</html>