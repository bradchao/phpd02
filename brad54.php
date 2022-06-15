<?php
    if (isset($_POST['account'])){
        $account = $_POST['account'];
        $passwd = password_hash($_POST['passwd'], PASSWORD_DEFAULT);
        $realname = $_POST['realname'];

        $mysqli = new mysqli('localhost', 'root', 'root', 'ispan', 3306);
        $mysqli->set_charset('utf8');
    
        $sql = "INSERT INTO member (account,passwd,realname)" .
            " VALUES ('{$account}','{$passwd}','{$realname}')";
        if ($mysqli->query($sql)){
            header("Location: brad53.php");
        }else{
            
        }
    }
?>
<form method="POST">
    <input type="text" name="account" /><br />
    <input type="password" name="passwd" /><br />
    <input type="text" name="realname" /><br />
    <input type="submit" value="Add" />
</form>