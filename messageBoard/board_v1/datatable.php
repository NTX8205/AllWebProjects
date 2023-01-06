<?php

$servername = "localhost";
$user = "user";
$password = "";
$dbname = "mesboard";

$charset = "utf8mb4";
$connect = "mysql:host=" . $servername . ";dbname=" . $dbname . ";charset=" . $charset;

$opts = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES => false,
];
