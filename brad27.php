<?php
    include('bradapis.php');

    if (checkTWId('A123456789')){
        echo 'OK';
    }else{
        echo 'XX';
    }
    echo '<hr />';
    echo 'Random:' . createTWIdByRandom() . '<br />';
    echo '女生:' . createTWIdByGender() . '<br />';
    echo '男生:' . createTWIdByGender(true) . '<br />';
    echo '嘉義:' . createTWIdByArea('I') . '<br />';
    echo '高雄女生:' . createTWIdByArea('S', false) . '<br />';

?>