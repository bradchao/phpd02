<?php
    include ("sql.php");
    // https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx

    $json = file_get_contents("https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx");
    $data = json_decode($json, false);

    $sql = "INSERT INTO food (`name`,addr,tel,city,town,pic,lat,lng)" . 
        " VALUES (?,?,?,?,?,?,?,?)";
    $stmt = $mysqli->prepare($sql);
    foreach($data as $row){
        //echo "{$row->Name} : {$row->Address} : {$row->Tel}<br />";
        $stmt->bind_param('ssssssss', 
            $row->Name, $row->Address, $row->Tel,$row->City,
            $row->Town, $row->PicURL, $row->Latitude,$row->Longitude);
        $stmt->execute();
    }

?>