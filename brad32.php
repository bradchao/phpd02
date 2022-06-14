<?php
    $gd = imagecreatefromjpeg("imgs/coffee.jpg");

    $yellow = imagecolorallocate($gd, 255, 255, 0);
    imagettftext($gd, 36, 30, 100, 400, $yellow, 'fonts/brad.otf', 
    '資策會論壇專屬, 歡迎到連');

    // header('Content-type: image/jpeg');
    // imagejpeg($gd);

    imagejpeg($gd, "imgs/brad.jpg");

    imagedestroy($gd);

?>