<?php

$file = fopen("./other/count.txt","r") or die("failed");
if(is_readable("./other/count.txt")){
    $update = "./other/count.txt";
    $plus=(int)file_get_contents($update)+1;
    $count = file_put_contents("./other/count.txt",$plus);

}
echo "瀏覽人數:";
echo fread($file,filesize("./other/count.txt"));


fclose($file);


?>