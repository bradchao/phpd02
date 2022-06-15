<?php
    $passwd = '123456';
    $passwd1 = password_hash($passwd, PASSWORD_DEFAULT);
    echo $passwd1 . '<br />';
    echo strlen($passwd1) . '<br />';

    if (password_verify('123456', $passwd1)){
        echo 'OK';
    }else{
        echo 'XX';
    }

?>