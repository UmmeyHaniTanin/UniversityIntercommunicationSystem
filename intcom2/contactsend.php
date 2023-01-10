<?php

session_start();
$name=$_POST['name' ];
$email=$_POST['email'];
$comments=$_POST['message'];
$to="uh6468tanin@gmail.com";
$message="Name: $name \n\n Email: $email\n\n Comments: $comments";



if(mail($to,"Contact From your website",$message,"From:$email")){
echo "Thank you $name .Your email has been sent.";
}
else{
echo "Sorry an error occured .Try again please.";
}

?>