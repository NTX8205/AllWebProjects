<?php

//connect server data

$servername = "localhost";
$username = "user";
$password = "";
$dbname = "board";

$con = new mysqli($servername, $username, $password, $dbname);

$link = mysqli_connect("localhost", "user", "", "per_board") or die("connect error!");
