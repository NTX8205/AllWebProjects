<!DOCTYPE html>
<html lang="zh-TW">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>楊子青簡介</title>

	<style type="text/css">
		* { 
			font-family: "標楷體"; }

		header { 
			font-size: 36px;
			color: #55ff55; }
		.col-lg-4 {
		border: 1px solid; }

	</style>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<script>
		$(document).ready(function(){
			$("#I").hover(function(){
				$("#PICTURE").attr("src","family.jpg");
			});

			$("#PU").hover(function(){
				$("#PICTURE").attr("src","pu.jpg");
			});

			$("#CSIM").hover(function(){
				$("#PICTURE").attr("src","pucsim.jpg");
			});

			$("#PICTURE").click(function(){
				$("#PICTURE").hide();
				$("#PICTURE").fadeIn("slow")
			});
		});
	</script>

</head>
<body>
	<nav class="navbar navbar-expand-md bg-primary navbar-dark">
		<a class="navbar-brand" href="#">MENU</a>
					
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#aboutme">關於我</a></li>
				<li class="nav-item"><a class="nav-link" href="#bookmark">珍藏書籤</a></li>
				<li class="nav-item"><a class="nav-link" href="#youtube">推薦影片</a></li>
			</ul>
		</div>
	</nav>

	<main class="container-fluid bg-primary text-white text-center">
		<nav>
			<h1><a href="http://www1.pu.edu.tw/~tcyang" class="text-reset text-decoration-none text-white bg-primary" target="_blank" id="I">楊子青 (Tzyy-Ching Yang)</a></h1>
			<h2><a href="https://www.pu.edu.tw/" class="text-reset text-decoration-none text-white bg-primary" id="PU">靜宜大學</a> 
			/  <a href="https://csim.pu.edu.tw/" class="text-reset text-decoration-none text-white bg-primary" id="CSIM">資訊管理學系</a></h2>
		</nav>
	

		<img src="family.jpg" alt="照片" class="img-fluid rounded-circle" id="PICTURE">
		<br><br><br>
		<div class="row">
			<section id="aboutme" class="col-lg-4">
				<header>關於我</header>
				<h3>職稱：靜宜大學資訊管理學系副教授</h3>
				<h3>經歷：靜宜大學服務學習發展中心兼產業學院推動辦公室主任(2012年8月～2015年8月)</h3>
				<h3>Tel: <a href="tel:0426328001,18110" class="text-reset text-decoration-none text-white bg-info">04-26328001#18110</a></h3>
				<h3>E-Mail: <a href="mailto:tcyang@pu.edu.tw" class="text-reset text-decoration-none text-white bg-info">tcyang@pu.edu.tw</a></h3>
			</section>
		
		
					
			<article id="bookmark" class="col-lg-4">
				<header>珍藏書籤</header>
				<h3>生命中的每一剎時間</h3>
				<h3>都是向永恆借來的片羽</h3>
				<h3>胸襟中的每一縷柔情</h3>
				<h3>都是無限天機所流瀉的微光</h3>
			</article>

			<aside id="youtube" class="col-lg-4">
				<header>推薦影片</header>
				<div class="embed-responsive embed-responsive-16by9">
					<iframe src="https://www.youtube.com/embed/pW88QFpHXa8" allowfullscreen></iframe>
				</div>
			</aside>
		</div><br><br>

		<footer>
			Copyright © <?php echo date("Y-m-d") ?> 楊子青. All Rights Reserved.
		</footer>

	</main>
</body>
</html>