<?php
  require_once("connMysql.php");
  if(!isset($_COOKIE["username"])) {
    if(isset($_POST["username"]) && isset($_POST["password"])) {
      $sql = "SELECT * FROM admin";
      $result = mysql_query($sql);
      $row = mysql_fetch_assoc($result);
      if($_POST["username"]==$row["username"] && $_POST["password"]==$row["password"]) {
        setcookie("username", $_POST["username"],time()+5);
        header("location:test1.php");
      } else {
        echo "<script type='text/javascript'>";
        echo "alert('帳號密碼錯誤，請查明後再登入!');";
        echo "</script>";
      }
    }
  } else {
    header("location:test1.php");
  }
?>

<html>
<head>
<title>情人私密日誌</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

</head>
<body>
<table class="outtable">
  <tr>
    <td colspan="2" class="menu">
      
    </td>
  </tr>
  <tr>
    <td colspan="2" class="header">[情人私密日誌]</td>
  </tr>
  <tr>
    <td class="title">情人私密日誌登入</td>
    <td class="function">&nbsp;</td>
  </tr>
  <tr>
    <td height="4" colspan="2"><hr></td>
  </tr>
  <tr>
    <td colspan="2" align="center" valign="middle">
      <form action="" method="post">
        <p>管理者帳號：<input type="text" name="username"></p>
        <p>管理者密碼：<input type="password" name="password"></p>
        <p>
          <input type="submit" name="Submit" value="登入">
          <input type="button" name="button" value="回上一頁" onClick="window.history.back();">
        </p>
      </form>
    </td>
  </tr>
</table>
</body>
</html>