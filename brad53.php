<meta charset="utf-8" />
<?php
    include('sql.php');

    if (isset($_GET['delid'])){
        $delid = $_GET['delid'];
        $sql = "DELETE FROM member WHERE id = {$delid}";
        $mysqli->query($sql);
    }

    $sql = "SELECT * FROM member";
    $result = $mysqli->query($sql);

?>
<script>
    function deleteConfirm(name){
        return confirm('Delet ' + name + "?");
    }
</script>
<h1>Brad Big Company</h1>
<hr />
<a href='brad54.php'>Add New Member</a><br />
<table border="1" width="100%">
    <tr>
        <th>Account</th>
        <th>Realname</th>
        <th>Del</th>
        <th>Edit</th>
    </tr>
    <?php
        while ($member = $result->fetch_object()){
            echo '<tr>';
            echo "<td>{$member->account}</td>";
            echo "<td>{$member->realname}</td>";
            echo "<td><a href='?delid={$member->id}' " . 
            "onclick='return deleteConfirm(\"{$member->realname}\");'>Del</a></td>";
            echo "<td><a href='brad55.php?editid={$member->id}'>Edit</a></td>";
            echo '</tr>';
            echo "\n";
        }
    ?>
</table>
