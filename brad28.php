<?php
    function changeA(){
        global $a;
        $a = 100;
        echo "debug: {$a}<br />";
    }

    $a = 10;
    echo $a;
    echo '<hr />';
    changeA();
    echo $a;

    echo '<hr />';
    function changeB(&$c){
        $c = 111;
    }

    $b = 11;
    echo $b;
    echo '<hr />';
    changeB($b);
    echo $b;

?>