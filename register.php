<script>
    var xhttp = new XMLHttpRequest();

    function checkNewAccount(){
        var account = document.getElementById('account').value;

        xhttp.onreadystatechange = function(){
            if (xhttp.readyState == 4 && xhttp.status == 200){
                if (xhttp.responseText != 0){
                    // 帳號重複
                    document.getElementById('mesg').innerHTML = '帳號重複';
                }else{
                    document.getElementById('mesg').innerHTML = '帳號可以';
                }
            }
        };
        xhttp.open("GET", "isNewAccount.php?account=" + account, true);
        xhttp.send();
    }

</script>

<form method="POST" enctype="multipart/form-data">
    Account: <input type="text" id="account" name="account" onchange="checkNewAccount()" />
    <span id="mesg"></span>
    <br />
    Password: <input type="password" name="passwd" /><br />
    Realname: <input type="text" name="realname" /><br />
    Icon: <input type="file" name="icon" /><br />
    <input type="submit" value="Register" /><br />
</form>