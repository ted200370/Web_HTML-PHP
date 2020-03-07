<html>
<body>

<?php
if ($_FILES["file"]["error"] > 0) {
  echo "Error: " . $_FILES["file"]["error"] . "<br>";
} else {
  echo "Upload: " . $_FILES["file"]["name"] . "<br>";
  echo "Type: " . $_FILES["file"]["type"] . "<br>";
  echo "Size: " . ($_FILES["file"]["size"] / 1024) . " kB<br>";
  echo "Stored in: " . $_FILES["file"]["tmp_name"];
     }
	 if ($_FILES["file2"]["error"] > 0) {
  echo "Error: " . $_FILES["file2"]["error"] . "<br>";
} else {
  echo "Upload: " . $_FILES["file2"]["name"] . "<br>";
  echo "Type: " . $_FILES["file2"]["type"] . "<br>";
  echo "Size: " . ($_FILES["file2"]["size"] / 1024) . " kB<br>";
  echo "Stored in: " . $_FILES["file2"]["tmp_name"];
     }
	
	$file_name=$_FILES["file"]["name"];
	 require_once("connMysql.php");
   $sql = "INSERT INTO photo(album_id, photo_file)";
   $sql =$sql. " VALUES('100', '$file_name')";
   mysql_query($sql);
   	
	$file_name2=$_FILES["file2"]["name"];
	 require_once("connMysql.php");
   $sql2 = "INSERT INTO photo(album_id, photo_file)";
   $sql2 =$sql2. " VALUES('100', '$file_name2')";
   mysql_query($sql2);

?>
</body>
</html>