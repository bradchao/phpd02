<?php
    include("sql.php");
    spl_autoload_register(function($className){
        require_once $className . '.php';
    });
    session_start();

    if (!$_SESSION['member']) header("Location: login.php");

    $member = $_SESSION['member'];
    $cart = $_SESSION['cart'];

    $icon = base64_encode($member->icon) ;
?>
Welcom, <?php echo $member->realname; ?><br />
<img src="data:<?php echo $member->icontype; ?>;base64, <?php echo $icon; ?>"/>
<hr />
<a href="logout.php">Logout</a>