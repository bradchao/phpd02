<?php
    $ary1 = array(1,2,3,4,5,1.234, true, 'brad');
    //$a = 10; $b = 'brad';
    var_dump($ary1);
    echo '<hr />';
    echo count($ary1) . '<br />';
    echo $ary1[4];
    echo '<hr />';
    for ($i = 0; $i < count($ary1); $i++){
        echo "{$i} : {$ary1[$i]}<br />";
    }
    echo '<hr />';
    foreach ($ary1 as $key => $value){
        echo "{$key} : {$value}<br />";
    }
    echo '<hr />';
    foreach ($ary1 as $value){
        echo "{$value}<br />";
    }

?>