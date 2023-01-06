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
    <link rel="stylesheet" href="./css/image.css">
    <link rel="stylesheet" href="./css/attractions.css">
    <link rel="stylesheet" href="./css/sidebars.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
    <script src="./js/time.js"></script>
    <title>景點介紹</title>
</head>

<body>
    <main>
        <nav class="navbar navbar-expand-lg fixed-top " id="top">
            <div class="container-fluid">
                <a class="navbar-brand text-white" href="index.php">帶你玩台中</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item ">
                            <input type="button" class="nav-link active link onPage text-white" onclick="javascript:location.href='attractions.php'" value="⌂景點介紹">
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
        <div class="row">
            <div class="col-2" style="background-color: rgb(167, 231, 233);">
                <div class="flex-shrink-0 p-3 fixed-bottom" style="width: 160px;">
                    <ul class="list-unstyled ps-0">
                        <li class="mb-1">
                            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">
                                功能
                            </button>
                            <div class="collapse" id="home-collapse" style="">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li><a href="#" class="link-dark d-inline-flex text-decoration-none rounded">回到頂端</a>
                                    </li>
                                    <li><a href="#bottom" class="link-dark d-inline-flex text-decoration-none rounded">到底部</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="mb-1">
                            <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
                                地區
                            </button>
                            <div class="collapse" id="dashboard-collapse">
                                <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                    <li>
                                        <a href="#place1" class="link-dark d-inline-flex text-decoration-none rounded">中區</a>
                                    </li>
                                    <li>
                                        <a href="#place2" class="link-dark d-inline-flex text-decoration-none rounded">南區</a>
                                    </li>
                                    <li>
                                        <a href="#place3" class="link-dark d-inline-flex text-decoration-none rounded">西區</a>
                                    </li>
                                    <li>
                                        <a href="#place4" class="link-dark d-inline-flex text-decoration-none rounded">北區</a>
                                    </li>
                                    <li>
                                        <a href="#place5" class="link-dark d-inline-flex text-decoration-none rounded">和平區</a>
                                    </li>
                                    <li>
                                        <a href="#place6" class="link-dark d-inline-flex text-decoration-none rounded">北屯區</a>
                                    </li>
                                    <li>
                                        <a href="#place7" class="link-dark d-inline-flex text-decoration-none rounded">南屯區</a>
                                    </li>
                                    <li>
                                        <a href="#place8" class="link-dark d-inline-flex text-decoration-none rounded">西屯區</a>
                                    </li>
                                    <li>
                                        <a href="#place9" class="link-dark d-inline-flex text-decoration-none rounded">清水區</a>
                                    </li>
                                    <li>
                                        <a href="#place10" class="link-dark d-inline-flex text-decoration-none rounded">霧峰區</a>
                                    </li>
                                    <li>
                                        <a href="#place11" class="link-dark d-inline-flex text-decoration-none rounded">新社區</a>
                                    </li>
                                    <li>
                                        <a href="#place12" class="link-dark d-inline-flex text-decoration-none rounded">后里區</a>
                                    </li>
                                    <li>
                                        <a href="#place13" class="link-dark d-inline-flex text-decoration-none rounded">沙鹿區</a>
                                    </li>
                                    <li>
                                        <a href="#place14" class="link-dark d-inline-flex text-decoration-none rounded">神岡區</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-10">
                <table id="place1">
                    <caption>
                        <h1 class="place">中區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <div class="rwd_slider_container_wrapper">
                                <div class="rwd_slider_container">
                                    <div class="slider_container">
                                        <div>
                                            <img src="./image/p11-4.jpg" alt="pure css slider" class="view1">
                                        </div>
                                        <div>
                                            <img src="./image/p11-3.jpg" alt="pure css slider" class="view1">
                                        </div>
                                        <div>
                                            <img src="./image/p11-1.jpg" alt="pure css slider" class="view1">
                                        </div>
                                        <div>
                                            <img src="./image/p11-5.jpg" alt="pure css slider" class="view1">
                                        </div>
                                        <div>
                                            <img src="./image/p11.jpg" alt="pure css slider" class="view1">
                                        </div>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <h1>宮原眼科</h1><br>
                            <h2>地址:台中市中區中山路20號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ-bIJXaeQbjQRBlsPVLME9EY&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                愛吃甜點的你來到台中中區，那你一定不可錯過的的地方就是宮原眼科，<br>
                                這裡不但保有老房子的味道，重建後更能回憶起當年的情景，<br>
                                著實是一座令人嘆為觀止的建築，天花板的透光玻璃將光線自然引進，陽光灑進屋裡甚是美麗；<br>
                                室內的裝潢也相當有氣勢，挑高的設計像極了哈利波特內霍格華茲學院的場景，<br>
                                以木頭建造的書架和櫃子營造出一種特有的質感美。
                            </a>
                            <a>
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                    <tr>

                    </tr>
                    <tr>
                        <th>
                            <img src="./image/p17.jpg" class="view">
                            <p>source by:<a href="https://zh.wikipedia.org/wiki/%E4%B8%AD%E5%B1%B1%E7%B6%A0%E6%A9%8B">維基百科</a>
                            </p><br>
                            <h1>中山綠橋</h1><br>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市中區中山路31號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ_UaGiBM9aTQRgas8AJumjSo&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                台灣最古老的一座橋，經過政府的整理後成了知名打卡拍照點，<br>
                                距離宮原眼科很近，去完後能過來踏踏青，<br>
                                早上與晚上也有不同的樣貌，值得來拍照留念。
                            </a>

                            <a>
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place2">
                    <caption>
                        <h1 class="place">南區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p18.jpg" class="view">
                            <p>source by:<a href="https://zh.wikipedia.org/wiki/%E5%8F%B0%E4%B8%AD%E5%B8%82%E5%9F%8E%E9%9A%8D%E5%BB%9F">維基百科</a>
                            </p><br>
                            <h1>台中城隍廟</h1><br>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <h2>地址:臺灣臺中市南區城隍里合作街94巷50號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJz9gHTRo9aTQRyC2LSjz_mT4&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                為清領時期臺灣建省後臺灣府之府城隍廟，城隍封號為「威靈公」，<br>
                                而且具說因城隍身旁的文判官掌管生死簿，有些老醫師會指導患者家屬到此廟來求延壽一說，<br>
                                到這裡時也值得來這裡拜拜參觀。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <img src="./image/p19.jpg" class="view">
                            <p>source by:<a href="https://www.fun-life.com.tw/taichung-zhongxiao-night-market/">台中忠孝夜市
                                    |老饕激推在地台中夜市，牛排/火鍋/滷味/炸物/飲料/住宿精選懶人包</a></p><br>
                            <h1>忠孝路觀光夜市</h1><br>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台灣台中市南區忠孝路</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJrRij4hk9aTQRA8KWA4fO47g&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                範圍從台中路至國光路的開放式夜市，而這裡以美食而聞名的商圈，<br>
                                鄰近的第三市場歇業時，就是夜市活耀的時刻，因為範圍大的關係，<br>
                                美食可是多到你吃不完呢!!!⁽⁽٩(๑˃̶͈̀ ᗨ ˂̶͈́)۶⁾⁾<br><br>
                            </a>

                            <a>
                                👉詳細美食推薦👈
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place3">
                    <caption>
                        <h1 class="place">西區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p20.jpg" class="view">
                            <h1>動漫彩繪巷</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:403台中市西區林森路100巷</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJN_NZXQk9aTQRTJVxW1kkEz8&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                如果是個動漫迷的話，一定要來這裡拍照欣賞自己喜愛的角色，<br>
                                首先你會經過龍貓的車站，你是否感覺到有台公車緩緩向你開來，<br>
                                彷彿帶你穿越了空間抵達名為動漫的世界，接著不同的角色出現在你眼前，<br>
                                走到巷子的盡頭你會發現，你在這瞬間走進了不同的空間裡，像是四分之三的巷子般，<br>
                                值得大家來此處一遊。(°ཀ°)
                            </a>
                            <a>
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <img src="./image/p23.jpg" class="view2">
                            <p>source by:<a href="https://zh.wikipedia.org/wiki/%E5%8B%A4%E7%BE%8E%E8%AA%A0%E5%93%81%E7%B6%A0%E5%9C%92%E9%81%93">維基百科</a>
                            </p><br>
                            <h1>勤美 誠品綠園道</h1><br>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市西區公益路68號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJEQD-2Z09aTQRZnVyOL2OnW8&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                這是一個中型的購物中心，商場主力核心店為誠品書店、UNIQLO、大創百貨、UFC GYM、各式主題餐廳，<br>
                                如果是愛shopping的你來這裡就對了(=^-ω-^=)
                            </a>

                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <img src="./image/p24.jpg" class="view">
                            <p>source by:<a href="https://fuyan0131.pixnet.net/blog/post/144051761">台中 | 微旅行 勤美綠園道、勤美術館</a></p>
                            <br>
                            <h1>勤美術館</h1><br>
                        </th>
                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市西區館前路71號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJRxkatp09aTQRfnLfiIp-FFE&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                一個以大自然為主的美術館，也是以有機最為題的美術館，<br>
                                進而較接近人們能理解的一些藝術。<br><br>
                            </a>

                            <a href="http://cmpblockmuseum.tw/">
                                <mark>👉勤美術館官網👈</mark>
                            </a>

                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place4">
                    <caption>
                        <h1 class="place">北區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p26.jpg" class="view">
                            <p>source by:<a href="https://grand.inhousehotel.com/places/yizhong-night-market/">一中商圈</a></p><br>
                            <h1>一中街</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市北區一中街</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:EjVZaXpob25nIFN0LCBOb3J0aCBEaXN0cmljdCwgVGFpY2h1bmcgQ2l0eSwgVGFpd2FuIDQwNCIuKiwKFAoSCQ3-De9oPWk0ETAq_hAdL9CtEhQKEgnv3HpZYT1pNBH5xp_NuFHvuw&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                一中街是學生們最喜歡去的一個商圈，<br>
                                不僅美食甚多，附近也說是要什麼有麼的地方，<br>
                                是個能與朋友度過沒好時光的地方。<br><br>
                            </a>
                            <a>
                                👉美食推薦👈
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p27.jpg" class="view">
                            <p>source by:<a href="https://slycool.com/listing/tcjb/">捷比漫畫便利屋｜台中店</a></p><br>
                            <h1>捷比漫畫便利屋</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市北區太平路53號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ_7XlP2k9aTQRJVDwF1KpH_8&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                動漫迷們的世界，<br>
                                來到這裡請鞏固好自己的錢包，因為這裡可是會誘惑著你花錢喔(╯✧∇✧)╯
                            </a>

                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place5">
                    <caption>
                        <h1 class="place">和平區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p29.jpg" class="view">
                            <p>source by:<a href="https://www.hotelscombined.com.tw/news/%E8%B0%B7%E9%97%9C%E6%BA%AB%E6%B3%89%E4%BD%8F%E5%AE%BF-top5-%E6%8E%A8%E8%96%A6/">【谷關溫泉推薦】泡了會上癮！台中谷關溫泉飯店，這5間回訪率超高！</a>
                            </p><br>
                            <h1>谷關溫泉</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市和平區博愛里的大甲溪河谷</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJZShLk2nkaDQRs6iqHhis_Kg&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                依地質分類屬於雪山山脈帶的變質岩溫泉。日治時代稱明治溫泉，與富士溫泉、櫻溫泉並稱中部三大溫泉。<br><br>
                            </a>
                            <a>
                                👉溫泉飯店推薦👈
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <div class="rwd_slider_container_wrapper">
                                <div class="rwd_slider_container">
                                    <div class="slider_container">
                                        <div>
                                            <img src="./image/p28-4.jpg" alt="pure css slider" class="view1">
                                        </div>
                                        <div>
                                            <img src="./image/p28-3.jpg" alt="pure css slider" class="view1">
                                        </div>
                                        <div>
                                            <img src="./image/p28-2.jpg" alt="pure css slider" class="view1">
                                        </div>
                                        <div>
                                            <img src="./image/p28-1.jpg" alt="pure css slider" class="view1">
                                        </div>
                                        <div>
                                            <img src="./image/p28.jpg" alt="pure css slider" class="view1">
                                        </div>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h1>武陵農場</h1><br>
                            <h2>地址:台中市和平區武陵路3-1號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJw2g-MZ_xaDQRiTnTz7upGWg&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                賞櫻的最佳景點(個人看法)，能更加親近大自然的地方，<br>
                                到這裡一定得放鬆去體會自然的芬芳，不同季節也會帶給你不同景色意境。
                            </a>

                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place6">
                    <caption>
                        <h1 class="place">北屯區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p30.jpg" class="view">
                            <p>source by:<a href="https://www.marry.com.tw/studio-works-kwmi9993mmwi26644mm.html">歡沁會館全廳 -
                                    心之芳庭作品-
                                    結婚吧</a></p><br>
                            <h1>心之芳庭</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市北屯區芳庭路1號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ08JpKjofaTQRxQEa4hE7l2I&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                這裡有個非常大的草原，適合一家人出去走走放風一下，<br>
                                對於喜歡攝影的人非常推薦來這裡。
                            </a>

                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p32.jpg" class="view">
                            <p>source by:<a href="https://travel.1111.com.tw/News_Detail.asp?autono=16556">台中大坑　紙箱王創意園區</a></p>
                            <br>
                            <h1>紙箱王創意園區大坑店</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市北屯區廊 子 路 六五一巷2號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJZUb4xkYYaTQRRgyudAlvOcY&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                在這裡頭的東西大部分都是有紙所構成的非常有趣，<br>
                                可以過來拍照打卡也能帶孩子來玩增進親子間的感情。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place7">
                    <caption>
                        <h1 class="place">南屯區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p36.jpg" class="view">
                            <p>source by:<a href="https://www.mirrormedia.mg/story/20220213soc008/">【彩虹眷村鬧醜聞1】控彩虹奶奶是「粉紅收屍隊」　經紀人高調救援慘遭打臉</a>
                            </p>
                            <br>
                            <h1>彩虹眷村</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市南屯區春安路56巷25號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ25Ul-Ic-aTQRNnMAjMs2iJo&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                這裡有著大量的彩繪作品使得成為了外國人也喜愛來拍照的聖地。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p37.jpg" class="view">
                            <p>source by:<a href="https://cindypark.cc/blog/post/32271934-%e3%80%90%e5%8f%b0%e4%b8%ad%e5%8d%97%e5%b1%af%e3%80%91%e7%ad%8f%e5%ad%90%e6%ba%aa%e8%bf%8e%e8%b3%93%e5%bb%8a%e9%81%93%ef%bd%9c%e5%8f%b0%e4%b8%ad%e6%96%b0%e5%9c%b0%e6%a8%99%ef%bc%8c">【台中南屯】筏子溪迎賓廊道｜台中新地標，IG新打卡景點，4公尺高TAICHUNG字樣夜晚會發光</a>
                            </p><br>
                            <h1>筏子溪門戶迎賓水岸廊道</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市南屯區筏子東街一段33-59號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJY7MHzBY9aTQR4kySYOTbk5U&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                有著4公尺高TAICHUNG字樣夜晚會發光(會有漸層式的燈光變換)的熱門拍照景點。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place8">
                    <caption>
                        <h1 class="place">西屯區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p38.jpg" class="view">
                            <p>source by:<a href="https://travel.taichung.gov.tw/zh-tw/Attractions/Intro/818/">秋紅谷廣場－臺中觀光旅遊網
                                    Taichung
                                    Tourism</a></p><br>
                            <h1>秋紅谷廣場</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:中市西屯區朝富路30號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJLfH_-vM9aTQRpL9e_PxZTxU&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                不論什麼時節，漫步在秋紅谷廣場都是個賞心悅目的享受！<br>
                                位於臺中市臺灣大道旁的秋紅谷廣場，是臺中地區特有的凹型市民休閒綠地，<br>
                                占地3公頃多的秋紅谷公園，擁有湖泊、紅樹、綠草坪、觀景橋，<br>
                                相當適合散步、約會、運動，白天有舒服的綠意；<br>
                                夜晚有著精采萬變的不夜燈火，開放迄今迅速成為臺中最火紅的景點之一。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p15.jpg" class="view">
                            <p>source by:<a href="https://www.millenniumtaichung.com.tw/spot/ins.php?index_m_id=14&index_id=17">國家歌劇院-台中日月千禧酒店</a>
                            </p><br>
                            <h1>臺中國家歌劇院</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市西屯區惠來路二段101號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJcaKjTOw9aTQR4mAeJzejtdg&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                臺中國家歌劇院是位於臺灣臺中市西屯區七期重劃區裡的大型公有展演空間，<br>
                                為日本建築師伊東豊雄設計，佔地57,685平方公尺。<br>
                                歌劇院內擁有大劇院、中劇院、小劇場以及一個小型戶外劇場，另有餐飲空間與空中花園。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p39.jpg" class="view">
                            <p>source by:<a href="https://anrine910070.pixnet.net/blog/post/229106552-">【逢甲夜市必吃美食】2022逢甲美食推薦地圖！雞排蛋餅甜點小吃全攻略</a>
                            </p><br>
                            <h1>逢甲夜市</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市西屯區文華路</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJK4W2WSIWaTQROebP2ugIGg8&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                這裡應該算是夜市裡人潮最多的一個了，<br>
                                應為誰能抵擋美食的誘惑呢。<br><br>
                            </a>

                            <a>
                                👉美食推薦👈
                            </a>

                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place9">
                    <caption>
                        <h1 class="place">清水區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p3.jpg" class="view">
                            <p>source by:<a href="https://www.taichung.gov.tw/1508015/post">世界馳名最美夕陽 安心遊高美濕地療癒身心靈</a></p>
                            <br>
                            <h1>高美濕地</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市清水區美堤街8號(遊客中心)</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJQ2FsFjwTaTQRKb4VYUrXd4Y&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                泥質及沙質灘地兼具的「高美濕地」，與河口沼澤地帶相存，<br>
                                孕育豐富濕地生態，也因為地形多變，讓生物種類相當複雜，<br>
                                主要種類為鳥類、魚類、蟹類及其他無脊椎類等生物。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p40.jpg" class="view">
                            <p>source by:<a href="https://www.travelking.com.tw/tourguide/scenery660.html">梧棲港觀光漁巿</a></p>
                            <br>
                            <h1>梧棲港觀光漁市</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市清水區</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJq6qqqroTaTQR13S7PwWhty8&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                梧棲港觀光漁市位於台中清水區，古稱「竹筏穴」，<br>
                                因昔日位於牛罵頭西五水叉口，故又名「五叉港」。<br>
                                為全國首創的人工觀光漁港，是集合漁業生產、觀光、休閒、娛樂<br>
                                的多功能漁港，滿足你味覺視覺的饗宴。<br><br>
                            </a>

                            <a>
                                👉美食推薦👈
                            </a>

                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place10">
                    <caption>
                        <h1 class="place">霧峰區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p41.jpg" class="view">
                            <p>source by:<a href="https://www.travelking.com.tw/tourguide/scenery105076.html">亞洲大學現代美術館</a></p>
                            <br>
                            <h1>亞洲大學現代美術館</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市霧峰區柳豐路500號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJc0ed-Bc7aTQRf8OBIqtfGXU&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                希望直接以環境影響學生，提供一個可接觸國際級大師藝術創作的機會，<br>
                                因而委託日本建築大師安藤忠雄為亞洲大學設計藝術館。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place11">
                    <caption>
                        <h1 class="place">新社區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p42.jpg" class="view">
                            <p>source by:<a href="https://www.cardu.com.tw/travel/detail.php?18731">網美必訪歐式莊園！台中新社古堡一日遊，門票、交通、必拍景點懶人包</a></p>
                            <br>
                            <h1>新社莊園古堡</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市新社區協中街23號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJCaPtUs4eaTQRQkwZ7aZ07hU&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                新社古堡花園是依地勢打造、利用舊材砌起一磚一瓦的莊園，<br>
                                其反璞歸真、和大自然相依的精神讓它的美景格具有意義喔，<br>
                                大自然的景緻、歐式莊園的浪漫一定能讓你忘記城市的喧囂。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p43.jpg" class="view">
                            <p>source by:<a href="https://okgo.tw/discountview.html?id=41034">民宿鄰近有很多景點 薰衣草森林 沐心泉</a></p>
                            <br>
                            <h1>薰衣草森林</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市新社區中興街20號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJD9GIn30faTQRIp0yWTjPWoM&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                是創始於台灣中部地區以薰衣草香草植栽為名的花園農場休閒景點，<br>
                                看這那隨風飄逸的薰衣草，聞著那薰衣草的花香，身心靈都舒暢了，<br>
                                非常適合網美來拍照留戀。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place12">
                    <caption>
                        <h1 class="place">后里區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p44.jpg" class="view">
                            <p>source by:<a href="https://blog.xuite.net/kwi3/twblog/123099180">中社觀光花市 @ 阿蒯的家 :: 隨意窩 Xuite日誌</a></p>
                            <br>
                            <h1>中社觀光花市花海</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市后里區三豐路五段333號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJG8k0XaMaaTQRLsko2uoD5Rs&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                這裡有著不同種的花海(晚香玉、野薑花、玫瑰花、向日葵、香水蓮花等)，<br>
                                而鬱金香配上風車在搭上演奏者的音樂有種自身在荷蘭一般的風味，<br>
                                在花海中共享天倫之樂！
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p45.jpg" class="view">
                            <p>source by:<a href="https://chevigal.com/lihpaoland/">麗寶Outlet Mall二期試營運！全球獨家星巴克鐘樓、秀泰影城進駐，商家目前近6成開幕</a></p>
                            <br>
                            <h1>麗寶樂園outlet</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市后里區福容路200號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ4bfpTQMQaTQR0p1lxTN2gBM&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                這裡不但是孩子們能玩樂的場所，<br>
                                大人們更是能盡情的逛副署商圈。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place13">
                    <caption>
                        <h1 class="place">沙鹿區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p46.jpg" class="view">
                            <p>source by:<a href="https://niceclaup313.pixnet.net/blog/post/230820142">【台中景點】沙鹿『美仁里彩繪村』復古的主題彩繪親切又有趣～順遊走走打發時間也不錯</a></p>
                            <br>
                            <h1>美仁里彩繪村</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市沙鹿區中正街美秀巷1號一帶</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJDw1mBeMUaTQRHvwOaZYIW_c&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                這裡有著很復古的風格，能逛逛順便打發時間也不錯。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>

                    <tr>
                        <th>
                            <img src="./image/p47.jpg" class="view">
                            <p>source by:<a href="https://www.fun-life.com.tw/shalu-dream-street/">沙鹿夢想街 |來去沙鹿一日遊，沙鹿夢想街籃球牆必拍景點啊！</a></p>
                            <br>
                            <h1>沙鹿夢想街</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市沙鹿區晉文路3巷21號</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJ76T67KsVaTQROQIgGcBwuvE&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                沙鹿夢想街最人氣的莫過於這籃球牆面，整個繽紛又迷人，(つ´ω`)つ更是人氣打卡點啊！
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>

                <table id="place14">
                    <caption>
                        <h1 class="place">神岡區</h1>
                    </caption><br><br>
                    <tr>
                        <th>
                            <img src="./image/p48.jpg" class="view">
                            <p>source by:<a href="https://taiwan.sharelife.tw/article_aid-5997.html">S彎道、波浪道，台中「潭雅神綠園道」超美自行車新熱點</a></p>
                            <br>
                            <h1>潭雅神綠園道</h1><br>
                        </th>

                    </tr>
                    <tr>
                        <th>
                            <h2>地址:台中市神岡區</h2><br>
                            <iframe width="500" height="300" style="border:0" loading="lazy" allowfullscreen src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJDfFZfkYXaTQRJxvCWohoeXk&key=AIzaSyBuO4vH4Uhq_SlTKbCTnv0V47wB_5x8XXo"></iframe>
                            <br>
                            <a>
                                整段道路兩旁種滿行道樹，綠意盎然，騎乘自行車非常舒服，<br>
                                即使在夏天，由於兩側路樹的樹蔭，也不會直接曝曬陽光而感到炎熱。<br>
                                沿途會經過台中原縣區的各種鄉鎮風光，會有一種深度小旅行的感受。
                            </a>
                            <br><br><br><br>
                            <hr>
                        </th>
                    </tr>
                </table>
            </div>
        </div>
    </main>
    <footer id="bottom">

    </footer>
</body>

</html>