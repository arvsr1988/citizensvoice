<?php

$phpobj=json_decode($_POST['json'], false); 
$con=mysqli_connect("localhost","testuser","testpass","citizen");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }

$queryStr="UPDATE issue SET status='Closed' WHERE id='".$phpobj->id."'";
print_r($queryStr);
mysqli_query($con,$queryStr);

mysqli_close($con);

?>
