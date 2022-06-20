<?php
    class Cart {
        private $list;  // [] => [$pid] = qty
        private $memberId;
        function __construct($memberId){
            $this->list = array();
            $this->memberId = $memberId;
        }

        function addProduct($pid, $qty){
            if (!array_key_exists($pid, $this->list)){
                $this->list[$pid] = $qty;
                return true;
            }else{
                return false;
            }
        }

        function removeProduct($pid){
            if (array_key_exists($pid, $this->list)){
                unset($this->list[$pid]);
            }
        }

        function editProduct($pid, $qty){
            if (array_key_exists($pid, $this->list)){
                $this->list[$pid] = $qty;
                return true;
            }else{
                return false;
            }

        }

        function getList(){
            return $this->list;
        }

        function getMemberId(){
            return $this->memberId;
        }


    }
?>