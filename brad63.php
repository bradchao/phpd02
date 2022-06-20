<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
    function addProduct(){
        var pid = $('#pid').val();
        var qty = $('#qty').val();
        //console.log(pid + ":" + qty);
        $.get("addCart.php?pid="+pid+"&qty="+qty, 
            function(data,status){
                if (status == 'success'){
                    alert(data);
                }
            });
    }
</script>

<?php 
    spl_autoload_register(function($className){
        require_once $className . '.php';
    });
    session_start();
    
    $cart = $_SESSION['cart'];
    $list = $cart->getList();
?>


Pid: <input type="text" id="pid" /><br />
Qty: <input type="number" id="qty" /><br />
<button onclick="addProduct()">Add</button>
<hr >
Page2<hr />
MemberiD: <?php echo $cart->getMemberId(); ?><br />
<?php 
    foreach($list as $pid => $qty){
        echo "{$pid} : {$qty}<br />";
    }
?>
<hr />
<a href="cash.php">Next</a>