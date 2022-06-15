<?php
    $filename = $_REQUEST['filename'];
    $content = $_REQUEST['content'];

    $fp = fopen("myfiles/{$filename}", 'w');
    fwrite($fp, $content);
    fclose($fp);

    header("Location: myfiles/{$filename}");
?>