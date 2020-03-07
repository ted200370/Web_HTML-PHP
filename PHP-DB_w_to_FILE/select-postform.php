<html>
<head><title>Select查詢和顯示</title></head>
<body>
<?php
  $db_link = @mysql_connect("localhost", "root", "1234")
             or die("MySQL伺服器連結失敗!<br>");  //如果連結失敗，則終止程式執行，並顯示連結失敗的訊息
  $select_db = @mysql_select_db("phpbook_db");
  mysql_query("SET NAMES 'utf8'"); 
  mysql_query("SET CHARACTER_SET_CLIENT=utf8"); 
  mysql_query("SET CHARACTER_SET_RESULTS=utf8");
  if(!$select_db)
  {
    die("無法開啟資料庫!<br>");
  }
  else
  {
    echo "member資料庫開啟成功!<br/>";
	echo "內容已經覆蓋寫入到newfile2.txt<br/>";
	echo "單項查詢不儲存<br/>";
 if(!$_POST["id"]){
  //顯示使用者資料
  $sql = "SELECT * from `member`";
  $result=mysql_query($sql);
  $myfile = fopen("newfile2.txt", "w") or die("Unable to open file!");

//$txt = "Jane Doe\n";
//fwrite($myfile, $txt);

  echo "<TABLE border=1>
    <TR>
     <TD>編號</TD>
     <TD>姓名</TD>
	 <TD>帳號</TD>
	 <TD>密碼</TD>
	 <TD>性別</TD>
	 <TD>生日</TD>
	 <TD>電子郵件</TD>
	 <TD>個人網頁</TD>
	 <TD>電話</TD>
	 <TD>地址</TD>
	 <TD>連絡方式</TD>
	 <TD>備註</TD>
     </TR>";

 
  while($row=mysql_fetch_array($result)){
   echo "<TR>
     <TD>".$row["id"]."</TD>
     <TD>".$row["name"]."</TD>
	 <TD>".$row["account"]."</TD>
	 <TD>".$row["password"]."</TD>
	 <TD>".$row["sex"]."</TD>
	 <TD>".$row["birthday"]."</TD>
	 <TD>".$row["email"]."</TD>
	 <TD>".$row["url"]."</TD>
	 <TD>".$row["telephone"]."</TD>
	 <TD>".$row["address"]."</TD>
	 <TD>".$row["contact"]."</TD>
	 <TD>".$row["memo"]."</TD>
     </TR>";
	 
	 $txt =$row["id"].
     " ".$row["name"].
	 " ".$row["account"].
	 " ".$row["password"].
	 " ".$row["sex"].
	 " ".$row["birthday"].
	 " ".$row["email"].
	 " ".$row["url"].
	 " ".$row["telephone"].
	 " ".$row["address"].
	 " ".$row["contact"].
	 " ".$row["memo"]." ";
	fwrite($myfile, $txt);

  }
   fclose($myfile);  
  echo "</TABLE>";
 }

 else
 {   
  //顯示指定使用者的資訊
  $sql="SELECT * from `member` WHERE `id` = ".$_POST["id"];
  $result=mysql_query($sql);
  $row=mysql_fetch_array($result);
  echo "編號：".$row["id"].
  "<br>姓名：".$row["name"].
  "帳號".$row["account"].
  "密碼".$row["password"].
  "性別".$row["sex"].
  "生日".$row["birthday"].
  "電子郵件".$row["email"].
  "個人網頁".$row["url"].
  "電話".$row["telephone"].
  "地址".$row["address"].
  "連絡方式".$row["contact"].
  "備註".$row["memo"]."<BR>";
  		   
 }

}//end if 

 
  mysql_close($db_link);
?>
</body>
</html>