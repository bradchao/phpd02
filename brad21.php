<?php
    $a[] = 12;
    $a[] = 34;
    $a[7] = 'Brad';
    $a[] = 56;
    $a['name'] = 'Brad';
    $a['age'] = 18;
    $a['weight'] = 78;
    var_dump($a);
    echo '<hr />';
    foreach($a as $k => $v){
        echo "{$k} : {$v}<br />";
    }

?>