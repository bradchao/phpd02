<?php
    $fp =  fopen('dir2/brad1.txt', 'a');
    fwrite($fp, 'Hello, World');
    fclose($fp);
?>