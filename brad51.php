<meta charset='UTF-8' />
<?php
    $mysqli = new mysqli('localhost', 'root', 'root', 'ispan', 3306);
    $mysqli->set_charset('utf8');

    $sql = "SELECT id, tel, cname `cust-name`, birthday FROM cust";
    
    $result = $mysqli->query($sql);

    //var_dump($result);
    //echo $result->num_rows . '<br />';

    // while ($row = $result->fetch_object()){
    //     echo "{$row->id}:{$row->custName}:{$row->tel}:{$row->birthday}<br />";
    // }

    while ($row = $result->fetch_array()){
        echo "{$row['id']}:{$row['cust-name']}:{$row['tel']}:{$row['birthday']}<br />";
    }

    // $stmt =  $mysqli->prepare($sql);
    // $stmt->execute();
    // $stmt->store_result();

    // echo $stmt->num_rows() . '<br />';

    // $stmt->bind_result($id, $tel, $cname, $birthday);
    // while($stmt->fetch()){
    //     echo "{$id}:{$tel}:{$cname}:{$birthday}<br />";
    // }
    // $stmt->free_result();
    // $stmt->close();






?>