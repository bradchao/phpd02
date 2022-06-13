<?php
    $p = array(1 => 0,0,0,0,0,0);

    for ($i = 0; $i < 100000; $i++){
        $p[rand(1,6)]++;
    }

    foreach($p as $point => $times){
        echo "{$point}點出現{$times}次<br />";
    }
?>