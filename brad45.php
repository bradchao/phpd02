<?php
    $upload = $_FILES['upload'];

    foreach($upload['error'] as $k => $v){
        if ($v == 0){
            if (move_uploaded_file($upload['tmp_name'][$k],
             "upload/{$upload['name'][$k]}")){

            }
        }
    }

?>