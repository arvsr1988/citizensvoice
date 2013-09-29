<?php
include("crossdomain.php");

$obj=json_decode($_POST['json'], false); 
$con=mysqli_connect("localhost","testuser","testpass","citizen");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }


$queryStr="INSERT INTO `citizen`.`issue` (`id` ,`issuetype` ,`location` ,`datestr` ,`imageUrl` ,`status` ,`votingCount` ,`descr` ,`issueowner` ) VALUES ('".$obj->issueid."', '".$obj->issuetype."', '".$obj->location."', '".$obj->datestr."', '".$obj->imageUrl."', '".$obj->status."','".$obj->votingCount."', '".$obj->descr."', '".$obj->issueowner."') ";
print_r($queryStr);
mysqli_query($con,$queryStr);

mysqli_close($con);
?>
