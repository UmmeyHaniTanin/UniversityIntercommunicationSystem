<?php
session_start();
$id=$_POST['Id'];
$password=$_POST['Password'];


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
  
mysql_select_db ("intcom", $con);

$result=mysql_query("SELECT * FROM data WHERE Id='$id' and Password='$password'");

$count=mysql_num_rows($result);

if($count==1){

$row = mysql_fetch_array($result);

$_SESSION['username']= $row['Name'] ;
header("location:main.php");

}
else {
echo "wrong id or password."; 
}
}
else {
    echo $msg;
}

?>