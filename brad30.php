<?php
    // 1. 畫布
    // 2. 作畫
    // 3. 輸出 (browser / file)
    // 4. 清除

    $rate = $_GET['rate'];     // 50%
    $width = 400;
    $gd = imagecreate($width, 20);
    
    $red = imagecolorallocate($gd, 255, 0, 0);
    imagefilledrectangle($gd, 0, 0, $width, 20, $red);

    $yellow = imagecolorallocate($gd, 255, 255, 0);
    imagefilledrectangle($gd, 0, 0, $width*$rate/100, 20, $yellow);

    header('Content-type: image/jpeg');
    imagejpeg($gd);

    imagedestroy($gd);

?>