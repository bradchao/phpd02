<?php
    include("sql.php");
    spl_autoload_register(function($className){
        require_once $className . '.php';
    });
    session_start();

    if (!$_SESSION['member']) header("Location: login.php");

    $member = $_SESSION['member'];
    $cart = $_SESSION['cart'];
?>
Welcom, <?php echo $member->realname; ?>