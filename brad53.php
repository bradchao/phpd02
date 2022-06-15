<meta charset="utf-8" />
<?php
    $mysqli = new mysqli('localhost', 'root', 'root', 'ispan', 3306);
    $mysqli->set_charset('utf8');

    $sql = "SELECT * FROM member";
    $result = $mysqli->query($sql);

?>
<h1>Brad Big Company</h1>
<hr />
<a href='brad54.php'>Add New Member</a><br />
<table border="1" width="100%">
    <tr>
        <th>Account</th>
        <th>Realname</th>
    </tr>
    <?php
        while ($member = $result->fetch_object()){
            echo '<tr>';
            echo "<td>{$member->account}</td>";
            echo "<td>{$member->realname}</td>";
            echo '</tr>';
        }
    ?>
</table>
