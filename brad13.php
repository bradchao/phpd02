<?php
    $i = 0;
    for ( drawHead() ; $i < 10 ; drawHr() ){
        echo "{$i}<br />";
        $i++;
    }

    function drawHead(){
        echo 'Brad<br />';
        drawHr();
    }

    function drawHr(){
        echo '<hr />';
    }

?>