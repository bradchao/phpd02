<meta charset='UTF-8' />
<?php
    $mysqli = new mysqli('localhost', 'root', 'root', 'ispan', 3306);
    $mysqli->set_charset('utf8');

    $cname = 'Justin'; $tel = '1234'; $birthday = '1999-05-06';
    $id = 2;
    $sql = "UPDATE cust SET cname = ?, tel = ?, birthday = ? WHERE id = ?";
    $stmt = $mysqli->prepare($sql);
    $stmt->bind_param('sssi', $cname, $tel, $birthday, $id);
    $stmt->execute();



?>