<?php 
    $cont = file_get_contents("https://gis.taiwan.net.tw/XMLReleaseALL_public/scenic_spot_C_f.xml");
    $xml = simplexml_load_string($cont);

    echo $xml->Infos->Info[0]->Name . '<hr />';
    foreach($xml->Infos->Info as $info){
        echo "{$info->Name}<br />";
    }


?>