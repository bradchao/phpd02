<meta charset='UTF-8' />
<?php
    $mysqli = new mysqli('localhost', 'root', 'root', 'ispan', 3306);
    $mysqli->set_charset('utf8');

    // $sql = "INSERT INTO cust (cname,tel,birthday) VALUES ('brad','123','1999-01-02')";
    // if ($mysqli->query($sql)){

    // }else{

    // }

    $cname = 'Brad'; $tel = '9487'; $birthday = '1999-03-04';
    $sql = "INSERT INTO cust (cname,tel,birthday) VALUES (?,?,?)";
    $stmt = $mysqli->prepare($sql);
    //var_dump($stmt);
    $stmt->bind_param('sss', $cname, $tel, $birthday);
    $stmt->execute();



?>