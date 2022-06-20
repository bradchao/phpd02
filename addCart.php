<?php 
    spl_autoload_register(function($className){
        require_once $className . '.php';
    });
    session_start();
    
    $cart = $_SESSION['cart'];
    $pid = $_GET['pid']; $qty = $_GET['qty'];
    
    $cart->addProduct($pid, $qty);

    $list = $cart->getList();
    foreach($list as $pid => $qty){
        echo "{$pid} : {$qty}\n";
    }    
?>