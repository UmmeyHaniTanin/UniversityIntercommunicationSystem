<?php
$filename="testfile.txt";
$filehandle= fopen($filename,'r')or die ("cant creat a new file");

$data=fread($filehandle,5);
fclose($filehandle);

echo"$data";
?>