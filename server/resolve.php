<?php
$con=mysqli_connect("localhost","testuser","testpass","citizen");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$phpobj=json_decode($_POST['json'], true); 
print_r($phpobj);
mysqli_query($con,"UPDATE issue SET status='Closed' WHERE id='"+$phpobj[0]->id+"'");

mysqli_close($con);
?>
