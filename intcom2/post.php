<?php
$Id=$_POST['Id'];
$Title=$_POST['Title'];
$Body=$_POST['Body'];
$Date=$_POST['Date'];


$status = "OK";
$msg="";




if (empty($Title)) { // checking your name
$msg .="Please enter your Title.<BR>"; 
$status= "NOTOK";}

if (empty($Body)) { // checking your name
$msg .="Enter the news.<BR>"; 
$status= "NOTOK";}


if($status=="OK"){

   $con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Mysql could not connect: ' . mysql_error());
  }
  

mysql_select_db ("intcom", $con);

mysql_query ("INSERT INTO note(`Id`,`Title`,`Body`,`Date`) VALUE ('$Id','$Title','$Body','Date' )");


   
  header("location:news.php");
}

else{// display the error message
echo "<center><font face='Verdana' size='2' color=red>$msg</font></center>";
}


?>