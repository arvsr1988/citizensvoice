<?php

include("crossdomain.php");

   class issue {
       public $issuetype = "";
       public $location  = "";
       public $datestr = "";
	   public $imageUrl = "";
	   public $status = "";
	   public $votingcount = "";
	   public $id = "";
	   public $descr ="";
	   public $issueowner="";
	   public $comment = array();
   }
    class comment {
		public $commentDescr="";
		public $owner="";
   
   }
   
   
	$obj=json_decode($_POST['json'], false); 
	$con=mysqli_connect("localhost","testuser","testpass","citizen");
	if (mysqli_connect_errno())
	{
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
    $queryStr="select * from  `citizen`.`issue`  where id='".$obj->id."'";
	//print_r($queryStr);
	$result = mysqli_query($con,$queryStr);
	header('Content-Type: application/json');
	
	while($row = mysqli_fetch_array($result))
	{
		$e = new issue();
		$e->id = $row['id'];
		$e->issuetype = $row['issuetype'];
		$e->location  = $row['location'];
		$e->datestr = $row['datestr'];
		$e->imageUrl =$row['imageUrl'];
		$e->status = $row['status'];
		$e->votingCount =$row['votingCount'] ;
		$e->descr=$row['descr'];
		$e->issueowner=$row['issueowner']		;
		$result = mysqli_query($con,"SELECT * FROM comments where issueid='".$e->id."'");
		while($row = mysqli_fetch_array($result)){
			$d = new comment();
			$d->commentDescr = $row['comment'];
			$d->owner  = $row['commentowner']  ;
			array_push($e->comment,$d);
		}
		echo json_encode($e);	
		break;
	}
   
?>