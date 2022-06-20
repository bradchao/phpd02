<?php 
    class MyQuery {
        private $mysqli;

        function __construct($mysqli){
            $this->mysqli = $mysqli;
        }

        function getProductData($id, $field){
            $sql = "SELECT * FROM food WHERE id = {$id}";
            $result = $this->mysqli->query($sql);
            if ($result->num_rows == 0){
                return false;
            }else{
                $data = $result->fetch_assoc();
                return $data[$field];
            }
        }
    }
?>