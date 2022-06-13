<?php
    $poker = range(0,51);
    shuffle($poker);

    // foreach($poker as $card){
    //     echo "{$card}<br />";
    // }
    // echo '<hr />';

    $players = [[],[],[],[]];
    foreach($poker as $i => $card){
        $players[$i % 4][(int)($i / 4)] = $card;
    }

    // foreach($players[1] as $card){
    //     echo "{$card}<br />";
    // }

?>
<!-- &spades; &hearts; &diams; &clubs; -->


<table border="1" width="100%">
<?php
    $suits = ["&spades;", "<font color='red'>&hearts;</font>", 
        "<font color='red'>&diams;</font>", "&clubs;"];
    $values = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K'];

    foreach($players as $player){
        sort($player);
        echo '<tr>';
        foreach($player as $card){
            $suit = $suits[(int)($card / 13)];
            $value = $values[$card % 13];
            echo "<td>{$suit}{$value}</td>";
        }
        echo '</tr>';
    }
?>
</table>

