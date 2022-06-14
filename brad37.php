<table border="1" width="100%">
    <?php
        $content = file("dir2/Fstdata.csv");
        foreach($content as $i => $line){
            $data = explode(',', $line);
            echo '<tr>';
            if ($i == 0){
                echo "<th>{$data[1]}</th>";                
                echo "<th>{$data[2]}</th>";                
                echo "<th>{$data[5]}</th>";                
                echo "<th>{$data[7]}</th>";                
            }else{
                echo "<td>{$data[1]}</td>";                
                echo "<td>{$data[2]}</td>";                
                echo "<td>{$data[5]}</td>";                
                echo "<td>{$data[7]}</td>";                
            }
            echo '</tr>';
        }
    ?>
</table>
