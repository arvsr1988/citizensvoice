<?php
$con=mysqli_connect("localhost","testuser","testpass","citizen");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$phpobj=json_decode($_POST['json'], false); 
$queryStr="UPDATE issue SET votingCount=votingCount+1 WHERE id='".$phpobj->id."'";
print_r($queryStr);
mysqli_query($con,$queryStr);

mysqli_close($con);
?>
