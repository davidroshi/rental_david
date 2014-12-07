<?php


$connection = mysql_connect("localhost", "root", ""); 
$db = mysql_select_db("carrental", $connection); // Selecting Database
//Fetching Values from URL
$name2=$_POST['name'];
$email2=$_POST['registeremail'];
$password2=$_POST['registerpassword'];
$contact2=$_POST['contact'];
//Insert query
$query = mysql_query("insert into userinfo(name, email, password, contact) values ('$name2', '$email2', '$password2','$contact2')");
echo "Form Submitted Succesfully";
mysql_close($connection); // Connection Closed
?>