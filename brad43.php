<?php
    $filename = $_POST['filename'];
    $upload = $_FILES['upload'];

    // foreach($upload as $k => $v){
    //     echo "{$k} : {$v}<br />";
    // }

    if ($upload['error'] == 0){
        if (move_uploaded_file($upload['tmp_name'], "upload/{$filename}")){
            echo "Upload Success";
        }else{
            echo "Move Failure";
        }
    }else{
        echo 'Upload Failure';
    }

?>