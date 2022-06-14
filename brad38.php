<form action="brad39.php" method="get">
    Account: <input name='account' /><br />
    Password: <input type="password" name='password' /><br />
    Gender: 
        <input type="radio" name="gender" value="m" checked />Male
        <input type="radio" name="gender" value="f" />Female<br />
    Habbit:
        <input type="checkbox" name="habbit[]" value="1">打電腦
        <input type="checkbox" name="habbit[]" value="2">打麻將
        <input type="checkbox" name="habbit[]" value="3">打籃球<br />
        <input type="checkbox" name="habbit[]" value="4">打電玩
        <input type="checkbox" name="habbit[]" value="5">打毛線
        <input type="checkbox" name="habbit[]" value="6">打小孩<br />
    Icon: <input type="file" name="icon" /><br />
    Memo:
        <textarea name="memo"></textarea>
    <input type="submit" value="OK" />
</form>