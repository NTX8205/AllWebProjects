<?php

$filename = "./functions/files/count.txt";
$file = fopen($filename, "r") or die("failed");
$plus = (int)file_get_contents($filename) + 1;
$count = file_put_contents($filename, $plus);
$people = fread($file, filesize($filename));
fclose($file);
