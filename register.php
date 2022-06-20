<meta charset="utf-8" />
<?php
    include("sql.php");

    if (isset($_REQUEST["account"])){
        $account = $_REQUEST['account'];
        $passwd = password_hash($_REQUEST['passwd'], PASSWORD_DEFAULT);
        $realname = $_REQUEST['realname'];

        $icon = null; $icontype = null;
        if ($_FILES['icon']['error'] == 0){
            //$icon = addslashes(file_get_contents($_FILES['icon']['tmp_name'])) ;

            $icon = mysqli_real_escape_string(file_get_contents($_FILES['icon']['tmp_name']));

            $icontype = $_FILES['icon']['type'];
        }

        $sql = "INSERT INTO member (account,passwd,realname,icon,icontype) VALUES " .
            "('{$account}','{$passwd}','{$realname}','{$icon}','{$icontype}')";
        if ($mysqli->query($sql)){
            header("Location: login.php");
        }else{
            echo "ERROR: " . $sql;
        }

    }


?>
<script>
    var xhttp = new XMLHttpRequest();

    function checkNewAccount(){
        var account = document.getElementById('account').value;

        xhttp.onreadystatechange = function(){
            if (xhttp.readyState == 4 && xhttp.status == 200){
                if (xhttp.responseText != 0){
                    // 帳號重複
                    document.getElementById('mesg').innerHTML = '帳號重複';
                }else{
                    document.getElementById('mesg').innerHTML = '帳號可以';
                }
            }
        };
        xhttp.open("GET", "isNewAccount.php?account=" + account, true);
        xhttp.send();
    }

</script>

<form method="POST" enctype="multipart/form-data">
    Account: <input type="text" id="account" name="account" onchange="checkNewAccount()" />
    <span id="mesg"></span>
    <br />
    Password: <input type="password" name="passwd" /><br />
    Realname: <input type="text" name="realname" /><br />
    Icon: <input type="file" name="icon" /><br />
    <input type="submit" value="Register" /><br />
</form>