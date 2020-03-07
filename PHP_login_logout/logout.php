<?php
  //清除cookie內容
  setcookie("username", "");
  //將使用者導回主網頁
  header("location:login.php");
?>