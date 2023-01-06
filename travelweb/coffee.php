<?php
require('./functions/count.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/web.css">
    <link rel="stylesheet" href="./css/coffee.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
        integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js"
        integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous">
    </script>
    <script src="./js/time.js"></script>
    <title>夜景咖啡廳</title>
</head>

<body>
    <div class="bg">
        <img src="./image/p49.jpg">
    </div>
    <nav class="navbar navbar-expand-lg fixed-top " id="top">
        <div class="container-fluid">
            <a class="navbar-brand text-white" href="index.php">帶你玩台中</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item ">
                        <input type="button" class="nav-link active link"
                            onclick="javascript:location.href='attractions.php'" value="⌂景點介紹">
                    </li>
                    <li class="nav-item ">
                        <input type="button" class="nav-link active link onPage text-white"
                            onclick="javascript:location.href='coffee.php'" value="⌂夜景咖啡廳">
                    </li>
                    <li class="nav-item ">
                        <input type="button" class="nav-link active link"
                            onclick="javascript:location.href='source.php'" value="關於">
                    </li>
                </ul>
            </div>
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="count nav-link disabled text-white">瀏覽人數 :<?php echo $people; ?></a>
                </li>
                <li class="nav-item">
                    <a class="count nav-link disabled text-white" id="now"></a>
                </li>
            </ul>
        </div>
    </nav>
    <table>
        <tr>
            <th>
                <img src="./image/s1.jpg">
            </th>
            <th>
                <br>
                <h2>若茵農場（圖／阿蒯的家）:</h2>
                <p>
                    曾被網友票選為「隱藏版在地景點」第一名的若茵農場，海拔約1100公尺，<br>
                    除了經營民宿外，也是個看雲海、夕陽、夜景的絕佳景點。在觀景台上可眺望石岡水庫、<br>
                    東勢林場、大甲溪、大安溪等壯闊景致，更可一覽東勢、卓蘭城市風光。<br><br>

                    地址：台中市和平區雪山路1號<br>
                    電話：(04)2597-1218<br>
                    櫃檯服務時間：上午9:00～下午6:00<br>

                    <iframe class="map" style="border:0" loading="lazy" allowfullscreen
                        src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJY463BZsdaTQR3u05rb7xdhw&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>

                </p>
            </th>
        </tr>
    </table><br><br>
    <table>
        <tr>
            <th>
                <img src="./image/s2.jpg">
            </th>
            <th>
                <br>
                <h2>不夜天夜景餐廳(圖／取自不夜天夜景餐廳粉絲專頁):</h2>
                <p>
                    想邊吃美食邊欣賞美景嗎？位於龍井區的不夜天夜景餐廳，耗資千萬打造出全透明玻璃屋，<br>
                    讓不喜歡在外曬太陽或吹風的顧客，坐在室內同樣可以享受到絕佳夜景。除提供簡餐、<br>
                    義大利麵外，還有現點現做的窯烤披薩，配上一望無際的美景，實在愜意！<br><br>



                    地址：台中市龍井區台灣大道六段55號<br>
                    電話：(04)2652-9989<br>
                    營業時間：週二～週四17:00～0:00，週五～週日17:00～1:00<br>

                    <iframe class="map" loading="lazy" allowfullscreen
                        src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJYQam-oMVaTQRd32z0Vf0wXU&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>

                </p>
            </th>
        </tr>
    </table><br>

    <table>
        <tr>
            <th>
                <img src="./image/s4.jpg">
            </th>
            <th>
                <br><br><br>
                <h2>星星複合式夜景餐廳。（圖／涼子是也）</h2>
                <p>
                    這裡的地點可以說是位於台中海線夜景的制高點，除了視野遼闊的景色之外，<br>
                    還有一些現場駐唱等特色，最吸引我的是那令人食指大動的單人日式炭烤燒肉能享用，<br>
                    可說是視覺與味覺的饗宴啊。<br><br>



                    地址：台中市沙鹿區東晉東路58-9號<br>
                    電話：(04)2633-2338<br>
                    營業時間：週一～週日16:00～01:30<br>

                    <iframe class="map" loading="lazy" allowfullscreen
                        src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJG0bARHUVaTQROmBcq-Zaksk&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>

                </p><br><br><br>
            </th>
        </tr>
    </table>


</body>

</html>
