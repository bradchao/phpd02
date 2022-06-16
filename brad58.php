Page 2
<hr />
<?php
    include('bradapis.php');
    session_start();

    $var = $_SESSION['var'];
    echo "{$var->sum()} : {$var->avg()}";

?>
<hr />
<a href="brad59.php">Logout</a>