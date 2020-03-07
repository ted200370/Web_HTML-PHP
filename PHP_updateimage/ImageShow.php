<?php
 //echo "<img height='400' src='./image/".$row["photo_file"]."'>";
    require_once("connMysql.php");
	$sql = "SELECT * FROM photo where album_id ='100'";
	$result = mysql_query($sql);
	$a=0;
	while($row = mysql_fetch_assoc($result)){
if($a/3==0)
{
 echo "<TABLE border=1><TR>";
 }
 $a=$a+1;
 echo"<TD><img height='400' src='./image/".$row["photo_file"]."'>"."</TD>";
if($a==3)
{
 echo "</TR>";
 $a=0;
 }
 }
 
 "</TABLE>"
 ?>

