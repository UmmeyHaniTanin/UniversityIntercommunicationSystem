<?php
session_start();
$id=$_POST['Id'];



$status = "OK";
$msg="";



if (empty($id)) { // checking your name
$msg .="Please enter a valid id.<BR>"; 
$status= "NOTOK";}

if($status=="OK"){

   $con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Mysql could not connect: ' . mysql_error());
  }
  
mysql_select_db ("intcom", $con);

$result=mysql_query("DELETE FROM data WHERE Id='$id' ");


header("location:adminPortal.php");

}
else {
echo "wrong id ."; 
}


?>