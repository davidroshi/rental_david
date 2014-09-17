<?php
     session_start();
                
        $db = new PDO("mysql:host=localhost;dbname=rental;charset=utf8", "root","");
        $getFromDB = $db->prepare("SELECT * FROM test");
        $getFromDB->execute();
        $data = $getFromDB->fetchAll(PDO::FETCH_ASSOC);
        $json = json_encode($data);
        echo $json;
        
      
        
        
        

