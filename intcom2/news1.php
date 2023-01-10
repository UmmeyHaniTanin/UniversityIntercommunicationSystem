<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Lodging - Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_lodging1.css" type="text/css" />
<style type="text/css">
<!--
.style1 {font-family: Arial, Helvetica, sans-serif}
.style3 {font-size: 12px}
-->
</style>
</head>
<body bgcolor="#999966">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	<td width="15" nowrap="nowrap"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
	<td height="60" colspan="3" class="logo" nowrap="nowrap">UNIVERSITY COMMUNICATION SYSTEM </td>
	<td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#a4c2c2">
	<td width="15" nowrap="nowrap">&nbsp;</td>
	<td height="36" colspan="3" id="navigation" class="navText"> <a href="semester.php">SEMESTER</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="main.php">HOME</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="news.php">GENERAL NOTICE </a>&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp; <a href="javascript:;">ARTICLE</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="tinfo.php">TEACHERS</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="contact.php">CONTACT US </a></td>
	<td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#ffffff">
	<td width="230" colspan="2" valign="top" bgcolor="#a4c2c2"><img src="mm_lodging_image.jpg" alt="Home Page Image" width="230" height="240" border="0" />
	<table border="0" cellspacing="0" cellpadding="0" width="230">
		<tr>
		<td width="15">&nbsp;</td>
		<td width="200" class="sidebarText" id="padding"><br />
		&nbsp;<br />		</td>
		<td width="15">&nbsp;</td>
		</tr>
	</table>	</td>
	<td width="50" valign="top"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="440" valign="top"><br />
	<br />
	<table border="0" cellspacing="0" cellpadding="0" width="440">
		<tr>
				</tr>

		<tr>
		<td class="bodyText"><br />	
		<h1>News</h1><hr>
<p><a href="post1.php"> <h3> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Post your news here</h3>
</a></p><hr>


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
		
		
			</td>
		</tr>
	</table>	
	<div class="style1"></div>
	</td>
	<td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr>
	<td width="15">&nbsp;</td>
	<td width="215">&nbsp;</td>
	<td width="50">&nbsp;</td>
	<td width="440">&nbsp;</td>
	<td width="40">&nbsp;</td>
	<td width="100%">&nbsp;</td>
	</tr>
</table>

</body>
</html>
