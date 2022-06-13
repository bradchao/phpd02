<?php
    $a = 7; $b = -5;
    //$temp = $a; $a = $b; $b = $temp;

    //$a = $a + $b;   // 13, 3
    //$b = $a - $b;   // 13, 10
    //$a = $a - $b;   // 3, 10

    $a = $a ^ $b;
    $b = $a ^ $b;
    $a = $a ^ $b;

    echo "a = {$a}; b = {$b}<hr />";

?>