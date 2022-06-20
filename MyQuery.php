<?php 
    class MyQuery {
        private $mysqli;
        const QUERY_NAME = 'name';
        const QUERY_TEL = 'tel';
        const QUERY_ADDRESS = 'addr';

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

        // getAllData('city = "台中市"') => data[]
        function getAllAddress($where = ''){
            $sql = "SELECT addr FROM food";
            if (strlen($where) > 0){
                $sql .= " WHERE {$where}";
            }
            $sql .= " ORDER BY id";
            $result = $this->mysqli->query($sql);

            $ret = [];
            while ($row = $result->fetch_object()){
                $ret[] = $row;
            }
            return $ret;
        }

        // $keyword => 'xxx'
        // $keyword => 'xxx; yyy; zzz' => or
        // name, tel, addr
        function getDataByKeyword($keyword = ''){
            $keywords = [];
            if (strpos($keyword, ';') !== false){
                $keywords = explode(';', $keyword);
            }else{
                $keywords[] = $keyword;
            }

            if (strlen($keyword) == 0){
                $sql = "SELECT name,tel,addr FROM food";
            }else{
                $sql = "SELECT name,tel,addr FROM food WHERE";
                foreach($keywords as $i => $key){
                    $key = trim($key);
                    if ($i != 0){
                        $sql .= ' OR ';
                    } 
                    $sql .= " name LIKE '%{$key}%' OR tel LIKE '%{$key}%' OR addr LIKE '%{$key}%'";
                }
            }
            $result = $this->mysqli->query($sql);

            $ret = [];
            while ($row = $result->fetch_object()){
                $ret[] = $row;
            }
            return $ret;
        }

    }
?>