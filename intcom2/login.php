<?php
session_start();
$id=$_POST['id'];
$password=$_POST['password'];


$status = "OK";
$msg="";



if (empty($password)) { // checking your name
$msg .="Please enter your password.<BR>"; 
$status= "NOTOK";}

if($status=="OK"){

   $con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Mysql could not connect: ' . mysql_error());
  }
  
mysql_select_db ("studentdb", $con);

$result=mysql_query("SELECT * FROM reg WHERE id='$id' and password='$password'");

$count=mysql_num_rows($result);

if($count==1){

$row = mysql_fetch_array($result);

$_SESSION['username']= $row['name'] ;
echo "Login Successful.";
header("");
}
else {
echo "wrong email or password.";
}
}
else {
    echo $msg;
}

?>