<?php
$Name=$_POST['Name'];
$Mail=$_POST['Mail'];
$Id=$_POST['Id'];
$User=$_POST['User'];
$Password=$_POST['Password'];


$status = "OK";
$msg="";

if (empty($Name)) { // checking your name
$msg .="Please enter your name.<BR>"; 
$status= "NOTOK";}

if (!stristr($Mail,"@") OR !stristr($Mail,".")) { // checking your email 
$msg .="Your email address is not correct<BR>"; 
$status= "NOTOK";}

if (empty($Id)) { // checking your name
$msg .="Please enter your ID.<BR>"; 
$status= "NOTOK";}

if (empty($User)) { // checking your name
$msg .="mention you are a student or teacher.<BR>"; 
$status= "NOTOK";}

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

mysql_query ("INSERT INTO data(`Name`,`Mail`,`Id`,`User`,`Password`) VALUE ('$Name','$Mail','$Id','$User','$Password' )");


   
  echo "<center><font face='Verdana' size='2' color=green>Thank You $Name, Your registration successfully Completed. </font></center>";
}

header("location:main.php");



?>