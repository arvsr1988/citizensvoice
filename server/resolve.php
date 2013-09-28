<?php
$con=mysqli_connect("localhost","testuser","testpass","citizen");
// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$data= $_POST['json'];
$phpobj = json_decode($data,true);

mysqli_query($con,"UPDATE issue SET status='Closed' WHERE id='"+$phpobj->id+"'");

mysqli_close($con);
?>
