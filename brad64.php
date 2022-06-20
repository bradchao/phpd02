<?php 
    $cont = file_get_contents("books.xml");
    $xml = simplexml_load_string($cont);
    var_dump($xml);
    echo '<hr />';
    echo $xml->getName() . " : " . $xml->count();
    echo '<hr />';
    foreach($xml as $book){
        echo $book->getName() . ":" . gettype($book) .'<br />';
    }
    echo '<hr />';

    $attrs = $xml->book[0]->attributes();
    foreach($attrs as $k => $v){
        echo "{$k} : {$v}<br />";
    }
    echo '<hr />';
    echo $xml->book[1]['price'];

    echo '<hr />';
    $b0 = $xml->book[0]->children();
    foreach($b0 as $k => $v){
        echo "{$k} : {$v}<br />";
    }
    echo '<hr />';
    $as = $xml->book[0]->authors->author;
    foreach($as as $k => $v){
        echo "{$k} : {$v}<br />";
    }



?>