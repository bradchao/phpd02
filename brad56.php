<?php
    // https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx

    $json = file_get_contents("https://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvTravelFood.aspx");
    $data = json_decode($json, false);

    foreach($data as $row){
        echo "{$row->Name} : {$row->Address} : {$row->Tel}<br />";
    }

?>