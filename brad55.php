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

?>
Edit Profile<hr />
<form method="POST">
    <input type="text" name="account" value="<?php echo $member->account; ?>" /><br />
    <input type="password" name="passwd" /><br />
    <input type="text" name="realname" value="<?php echo $member->realname; ?>" /><br />
    <input type="submit" value="Update" />
</form>