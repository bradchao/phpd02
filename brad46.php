<?php
    class Bike {
        protected $speed;   // private -> protected -> public(var)

        function __construct(){
            $this->speed = 0;
        }

        function upSpeed(){
            $this->speed = $this->speed<1 ? 1 : $this->speed*1.2; 
        }
        function downSpeed(){
            $this->speed = $this->speed<1 ? 0 : $this->speed*0.7; 
        }

        function getSpeed(){
            return $this->speed;
        }
    }

    class Scooter extends Bike {
        function upSpeed(){
            $this->speed = $this->speed<1 ? 1 : $this->speed*3.1; 
        }
        function getSpeed(){
            return $this->speed . ' km/hr';
        }
        function gas(){
            echo 'gas()';
        }
    }

    class Brad {

    }

    $brad = new Brad();
    $b1 = new Bike();
    $s1 = new Scooter();
    
    $b1->upSpeed(); $b1->upSpeed();$b1->upSpeed(); $b1->upSpeed();
    $s1->upSpeed(); $s1->upSpeed();$s1->upSpeed(); $s1->upSpeed();

    // echo $b1->getSpeed() . '<br />';
    // echo $s1->getSpeed() . '<hr />';

    function test1(Bike $obj){
        echo $obj->getSpeed() . '<br />';
        if ($obj instanceof Scooter){
            $obj->gas();
        }
    }

    test1($b1);
    test1($s1);


?>
