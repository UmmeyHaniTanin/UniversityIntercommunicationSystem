<?php
session_start();
$Id=$_POST['Id'];
$Password=$_POST['Password'];


$status = "OK";
$msg="";



if (empty($Password)) { // checking your name
$msg .="Please enter your password.<BR>"; 
$status= "NOTOK";}

if($status=="OK"){

   $con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Mysql could not connect: ' . mysql_error());
  }
  
mysql_select_db ("intcom", $con);

$result=mysql_query("SELECT * FROM admin WHERE Id='$Id' and Password='$Password'");

$count=mysql_num_rows($result);

if($count==1){

$row = mysql_fetch_array($result);

header("location:adminPortal.php");

}
else {
echo "You are not an admin."; 
}
}

?>