<html>
<h1>Teachers' Information</h1><hr>



<?php
mysql_connect("localhost","root","") or die(mysql_error());
mysql_select_db("intcom");

$getnews=mysql_query("SELECT * from data WHERE User='Teacher' ");
while($row=mysql_fetch_assoc($getnews))
{
$Name=$row['Name'];
$Mail=$row['Mail'];

echo "$Name <br>
      $Mail
	  <hr>";
}
?>
</html>