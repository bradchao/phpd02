<?php
    function sayYa(){
        echo 'Ya<br />';
    }
    function sayHello($name){
        echo "Hello, {$name}<br />";
    }
    function sayHelloV2($n, $name){
        for ($i = 0; $i <$n; $i++){
            echo "Hello, {$name}<br />";
        }
    }
    function sayHelloV3($name, $n = 1){
        for ($i = 0; $i <$n; $i++){
            echo "Hello, {$name}<br />";
        }
    }
    function sayHelloV4($n = 1, $name = 'World'){
        for ($i = 0; $i <$n; $i++){
            echo "Hello, {$name}<br />";
        }
    }
    function test1(){
        // func_num_args() ==> 幾個參數
        $args =  func_get_args();
        foreach($args as $v){
            echo "{$v}<br />";
        }
    }

    function sum(){
        $v = 0;
        $args =  func_get_args();
        foreach($args as $arg){
            $v += $arg;
        }
        return $v;
    }

    sayYa();
    sayYa();
    sayHello('Brad');
    sayHello('Tony');
    sayHelloV2(3, 'Brad');
    sayHelloV3('Eric', 2);
    sayHelloV3('Peter');
    sayHelloV4(3, 'Brad');

    test1(1,2,3,4, 'Brad', true);

    $sum = sum(1,2,3,4,5,6,7,8,9,10);
    echo $sum;



?>