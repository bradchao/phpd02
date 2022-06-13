<?php
    define('LETTERS', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ');
    function checkTWId($id){
        // 1. length = 10
        // 2. C1 => A -Z
        // 3. C2 => 1/ 2
        // 4. C3-10 => 0 - 9
        // 5. 檢查碼驗證

        $result = false;
        if (strlen($id) == 10){
            $c1 = substr($id, 0, 1);
            if (strpos(LETTERS, $c1) !== false){
                
            }
        }

        return $result;
    }
?>