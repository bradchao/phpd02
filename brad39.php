<?php
    $account = $_REQUEST['account'];
    $passwd = $_REQUEST['password'];

    foreach($_REQUEST as $k => $v){
        if (gettype($v) == 'array'){
            echo $k . '<br >';
            foreach($v as $h){
                echo "{$h}<br />";
            }
        }else{
            echo "{$k} => {$v}<br />";
        }
    }


?>