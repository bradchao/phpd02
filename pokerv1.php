<?php
    $poker = array();
    for($i=0; $i<52; $i++){
        $temp = rand(0,51);

        // 檢查機制
        $isRepeat = false;
        for ($j = 0; $j < $i; $j++){
            if ($poker[$j] == $temp){
                // 與前面重複了
                $isRepeat = true;
                break;
            }
        }

        if ($isRepeat){
            $i--;
        }else{
            $poker[$i] = $temp;
            echo "{$poker[$i]}<br />";
        }

    }
?>