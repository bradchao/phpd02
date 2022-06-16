<meta charset="utf-8" />
<?php
    include('sql.php');

    if (isset($_GET['editid'])){
        // 撈原資料
        $editid = $_GET['editid'];
        $sql = "SELECT * FROM member WHERE id = {$editid}";
        $result = $mysqli->query($sql);
        $member = $result->fetch_object();
    }
    if (isset($_GET['updateid'])){
        $updateid = $_GET['updateid'];
        $account = $_GET['account'];
        $passwd = $_GET['passwd'];
        $realname = $_GET['realname'];
        if (strlen(trim($passwd)) == 0){
            $sql = "UPDATE member SET account = '{$account}'," .
                "realname = '{$realname}' WHERE id = {$updateid}";
        }else{
            $passwd = password_hash($passwd, PASSWORD_DEFAULT);
            $sql = "UPDATE member SET account = '{$account}'," .
                "passwd = '{$passwd}', " .
                "realname = '{$realname}' WHERE id = {$updateid}";
        }
        if  ($mysqli->query($sql)){
            header("Location: brad53.php");
        }else{
            
        }
    }

?>
Edit Profile<hr />
<form method="GET">
    <input type="hidden" name="updateid" value="<?php echo $member->id; ?>" />
    <input type="text" name="account" value="<?php echo $member->account; ?>" /><br />
    <input type="password" name="passwd" /><br />
    <input type="text" name="realname" value="<?php echo $member->realname; ?>" /><br />
    <input type="submit" value="Update" />
</form>