<?php
//include("crossdomain.php");

$obj=json_decode($_POST['json'], false); 
$con=mysqli_connect("localhost","testuser","testpass","citizen");
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$location = 'POINT(' . $obj->lat . " " . $obj->lon . ')';

$queryStr="INSERT INTO `citizen`.`issue` (`issuetype` ,`location` ,`datestr` ,`imageUrl` ,`status` ,`votingCount` ,`descr` ,`issueowner`,`lat`,`lon` ) VALUES ( '".$obj->issuetype."', '".$obj->location."', '".$obj->datestr."', '".$obj->imageUrl."', '".$obj->status."','".$obj->votingCount."', '".$obj->descr."', '".$obj->issueowner."', ".$obj->lat.",".$obj->lon.") ";
//print_r($queryStr);
mysqli_query($con,$queryStr);

mysqli_close($con);

class response {
	public $returnStatus="200";
	public $ErrorMessage="";
   
   }
   header('Content-Type: application/json');
    $e = new response();
	echo json_encode($e);
   
?>
