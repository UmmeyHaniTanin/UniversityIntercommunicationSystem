<html>
<h1>News</h1><hr>
<p><a href="post1.php"> Post your news here</a></p><hr>


<?php
mysql_connect("localhost","root","") or die(mysql_error());
mysql_select_db("intcom");
$getnews=mysql_query("SELECT * from note");
while($row=mysql_fetch_assoc($getnews))
{
$Id=$row['Id'];
$Title=$row['Title'];
$Body=$row['Body'];
$Date=$row['Date'];
echo "$Title posted on $Date<br>
      $Body
	  <hr>";
}
?>
</html>