<?php
    $ary2[0] = 123;
    $ary2[4] = 12.3;
    $ary2[7] = 'brad';
    $ary2[1] = true;
    var_dump($ary2);
    echo '<hr />';
    for ($i=0; $i < 8; $i++){
        echo "{$i} : {$ary2[$i]}<br />";
    }
    echo '<hr />';
    foreach ($ary2 as $key => $value){
        echo "{$key} : {$value}<br />";
    }
    echo '<hr />';
    foreach ($ary2 as $value){
        echo "{$value}<br />";
    }    
?>