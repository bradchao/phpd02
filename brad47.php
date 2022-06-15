<?php
    include('bradapis.php');

    $s1 = new Student('Brad', 76, 54, 34);
    $s2 = new Student('Kevin', 98, 84, 74);
    $s3 = new Student('Eric', 36, 24, 94);

    echo "{$s1->getName()}: {$s1->sum()} : {$s1->avg()}<br >";
    echo "{$s2->getName()}: {$s2->sum()} : {$s2->avg()}<br >";
    echo "{$s3->getName()}: {$s3->sum()} : {$s3->avg()}<br >";

?>