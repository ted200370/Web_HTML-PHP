<?php
$vote = $_REQUEST['vote'];

//get content of textfile
$filename = "poll_result.txt";
$content = file($filename);

//put content in array
$array = explode(" ", $content[0]);
$item1 = $array[0];
$item2 = $array[1];
$item3 = $array[2];
$item4 = $array[3];

if ($vote == 0) {
  $item1 = $item1 + 1;
}
if ($vote == 1) {
  $item2 = $item2 + 1;
}
if ($vote == 2) {
  $item3 = $item3 + 1;
}
if ($vote == 3) {
  $item4 = $item4 + 1;
}


//insert votes to txt file
$insertvote = $item1." ".$item2." ".$item3." ".$item4;
$fp = fopen($filename,"w");
fputs($fp,$insertvote);
fclose($fp);
?>

<h2>Result:</h2>
<table>
<tr>
<td>item1:</td>
<td>
<img src="poll.gif"
width='<?php echo(100*round($item1/($item4+$item3+$item2+$item1),2)); ?>'
height='20'>
<?php echo(100*round($item1/($item4+$item3+$item2+$item1),2)); ?>%
</td>
</tr>
<tr>
<td>item2:</td>
<td>
<img src="poll.gif"
width='<?php echo(100*round($item2/($item4+$item3+$item2+$item1),2)); ?>'
height='20'>
<?php echo(100*round($item2/($item4+$item3+$item2+$item1),2)); ?>%
</td>
</tr>
<tr>
<td>item3:</td>
<td>
<img src="poll.gif"
width='<?php echo(100*round($item3/($item4+$item3+$item2+$item1),2)); ?>'
height='20'>
<?php echo(100*round($item3/($item4+$item3+$item2+$item1),2)); ?>%
</td>
</tr>
<tr>
<td>item4:</td>
<td>
<img src="poll.gif"
width='<?php echo(100*round($item4/($item4+$item3+$item2+$item1),2)); ?>'
height='20'>
<?php echo(100*round($item4/($item4+$item3+$item2+$item1),2)); ?>%
</td>
</tr>
</table>