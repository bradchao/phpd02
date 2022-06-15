<?php
    define('LETTERS', 'ABCDEFGHJKLMNPQRSTUVXYWZIO');
    function checkTWId($id){
        // 1. length = 10
        // 2. C1 => A -Z
        // 3. C2 => 1/ 2
        // 4. C3-10 => 0 - 9
        // 5. 檢查碼驗證

        $result = false;
        if (preg_match('/^[A-Z][12][0-9]{8}$/', $id)){
            $c1 = substr($id, 0, 1);
            $n12 = strpos(LETTERS, $c1) + 10;
            $n1 = (int)($n12 / 10);
            $n2 = $n12 % 10;
            $n3 = substr($id, 1, 1);
            $n4 = substr($id, 2, 1);
            $n5 = substr($id, 3, 1);
            $n6 = substr($id, 4, 1);
            $n7 = substr($id, 5, 1);
            $n8 = substr($id, 6, 1);
            $n9 = substr($id, 7, 1);
            $n10 = substr($id, 8, 1);
            $n11 = substr($id, 9, 1);
            $sum = $n1*1 + $n2*9 + $n3*8 + $n4*7 + $n5*6 + $n6*5 +
                $n7*4 + $n8*3 + $n9*2 + $n10*1 + $n11*1;
            $result = $sum % 10 == 0;
        }

        return $result;
    }

    function createTWIdByRandom(){
        $gender = rand(1,2) == 1;
        return createTWIdByGender($gender);
    }
    function createTWIdByGender($gender = false){
        $area = substr(LETTERS, rand(0,25), 1);
        return createTWIdByBoth($area, $gender);
    }
    function createTWIdByArea($area = 'B'){
        $gender = rand(1,2) == 1;
        return createTWIdByBoth($area, $gender);
    }
    function createTWIdByBoth($area, $gender){
        $tempId = $area;
        $tempId .= ($gender ? '1' : '2');
        for ($i=0; $i<7;$i++){
            $tempId .= rand(0,9);
        }
        for ($i=0; $i<=9; $i++){
            if (checkTWId($tempId . $i)){
                $tempId .= $i;
                break;
            }
        }
        return $tempId;
    }

    class Student {
        private $name, $ch, $eng, $math;
        function __construct($name, $ch, $eng, $math){
            $this->name = $name;
            $this->ch = $ch;
            $this->eng = $eng;
            $this->math = $math;
        }
        function getName(){
            return $this->name;
        }

        function sum(){
            return $this->ch + $this->eng + $this->math;
        }

        function avg(){
            return $this->sum() / 3;
        }

    }

?>