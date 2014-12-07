<?php

class carSearch
{
    public static function select()
    {
       $db = new PDO("mysql:host=localhost;dbname=carrental;charset=utf8", "root","");
       $getFromDB = $db->prepare("SELECT * FROM main");
        $getFromDB->execute();
        $data = $getFromDB->fetchAll(PDO::FETCH_ASSOC);
        $json = json_encode($data);
        echo $json;
    }
    
}
        carSearch::select();
        
        