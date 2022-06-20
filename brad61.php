<?php 
    include 'sql.php';
    spl_autoload_register(function($className){
        require_once $className . '.php';
    });

    $myquery = new MyQuery($mysqli);
    $name = $myquery->getProductData(127, 'name');
    $tel = $myquery->getProductData(127, 'tel');

    echo "{$name}:{$tel}<hr />";
    
    $allAddr = $myquery->getAllAddress('addr like "%中市%"');
    foreach($allAddr as $address){
        echo "{$address->addr}<br />";
    }
    echo '<hr />';
    $allData = $myquery->getDataByKeyword('87');
    foreach($allData as $data){
        echo "{$data->name} : {$data->tel} : {$data->addr}<br />";
    }

?>