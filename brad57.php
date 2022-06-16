<?php
    include('bradapis.php');
    session_start();

    $var = new Student('Brad', 90,80,40);
    echo "{$var->sum()} : {$var->avg()}";
    $_SESSION['var'] = $var;

    $var->setMath(100);


?>
<hr />
<a href='brad58.php'>Next Page</a>