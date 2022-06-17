<?php
    if (!isset($_GET['account'])) echo -1;

    include("sql.php");
    $account = $_GET['account'];
    $sql = "SELECT account FROM member WHERE account = '{$account}'";
    $result = $mysqli->query($sql);

    echo $result->num_rows;
?>