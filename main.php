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

    $sql = "SELECT * FROM food ORDER BY id";
    $result = $mysqli->query($sql);

?>
Welcom, <?php echo $member->realname; ?><br />
<img src="data:<?php echo $member->icontype; ?>;base64, <?php echo $icon; ?>"/>
<hr />
<a href="logout.php">Logout</a>
<hr />
<table border="1" width="100%">
    <tr>
        <th>Name</th>
        <th>Tel</th>
        <th>City</th>
        <th>Town</th>
        <th>Image</th>
    </tr>
    <?php
        while ($food = $result->fetch_object()){
            echo "<tr>";
            echo "<td>{$food->name}</td>";
            echo "<td>{$food->tel}</td>";
            echo "<td>{$food->city}</td>";
            echo "<td>{$food->town}</td>";
            echo "<td><img src='{$food->pic}' height='100px'></td>";
            echo "</tr>";
        }
    ?>
</table>