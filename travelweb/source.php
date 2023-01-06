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
    <link rel="stylesheet" href="./css/source.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
    <script src="./js/time.js"></script>
    <title>來源</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg fixed-top " id="top">
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
                        <input type="button" class="nav-link active link onPage text-white" onclick="javascript:location.href='source.php'" value="關於">
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
    <div class="container mt-3">
        <caption>組員 : </caption>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>班級</th>
                    <th>學號</th>
                    <th>姓名</th>
                    <th>工作分配</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <p>資管二B</p>
                    </td>
                    <td>
                        <p>410917554</p>
                    </td>
                    <td>
                        <p>林冠廷</p>
                    </td>
                    <td>
                        <p>作業的繳交、報告呈現</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>資管二B</p>
                    </td>
                    <td>
                        <p>410917724</p>
                    </td>
                    <td>
                        <p>黃硯祥</p>
                    </td>
                    <td>
                        <p>網頁的製作、ppt製作</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>資管二B</p>
                    </td>
                    <td>
                        <p>410928050</p>
                    </td>
                    <td>
                        <p>許哲睿</p>
                    </td>
                    <td>
                        <p>美化網頁、增添網頁功能</p>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="container mt-3">
        <caption>其他圖片來源 : </caption>
        <table class="table table-bordered">
            <tbody>
                <tr>
                    <td>
                        <a href="https://www.taichung.gov.tw/1508015/post">世界馳名最美夕陽 安心遊高美濕地療癒身心靈</a>
                    </td>
                    <td>
                        <a href="https://candicecity.com/33335/">【台中景點地圖】沒去過落伍了!2022激推39個台中景點推薦一次看!</a>
                    </td>
                    <td>
                        <a href="https://www.facebook.com/taiwanviptravel/">跟著董事長遊台灣</a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="https://www.millenniumtaichung.com.tw/spot/ins.php?index_m_id=14&index_id=17">國家歌劇院</a>
                    </td>
                    <td>
                        <a href="https://car0126.pixnet.net/blog/post/43975920">2022台中夜景懶人包》台中夜景玩不完 40個推薦夜景 大台中俯瞰星光點點的城市夜景 動人夜色配上滿天星空 百萬夜景盡收眼底 大台中有那些浪漫約會的好去處呢【2022台中夜景推薦 】</a>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="container mt-3">
        <h3>架構圖 :</h3>
        <img src="./image/Architecture.png" alt="架構圖">
        <h3>
            <a href="https://github.com/NTX8205/allproject/tree/master/web">原始碼</a>
        </h3>
    </div>
</body>

</html>