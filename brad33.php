<?php
    $fp = @opendir('c:/') or die('Server Busy');
    //echo gettype($fp);

    while ($file = readdir($fp)){
        echo $file . '<br />';
    }

    closedir($fp);

?>