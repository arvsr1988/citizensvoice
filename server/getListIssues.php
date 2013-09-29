<?php

  $con=mysqli_connect("localhost","testuser","testpass","citizen");
  if (mysqli_connect_errno())
  {
     echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
  header('Content-Type: application/json');
   class issue {
       public $issueType = "";
       public $location  = "";
       public $time = "";
	   public $imageUrl = "";
	   public $status = "";
	   public $votingcount = "";
	   public $id = "";
	   public $descr="";
	   public $issueowner="";
	   public $comment = array();
   }
   
   class comment {
	public $commentDescr="";
	public $owner="";
   
   }
   $result = mysqli_query($con,"SELECT * FROM issue");
   $c = array();
while($row = mysqli_fetch_array($result))
  {
  
    $e = new issue();
    $e->issueType = $row['issuetype'];
    $e->location  = $row['location']  ;
    $e->time = $row['datestr'];
    $e->ImageUrl = $row['imageUrl'];
    $e->status = $row['status'];
    $e->votingcount = $row['votingCount'];
    $e->descr = $row['descr'];
    $e->issueowner = $row['issueowner'];
    $e->id = $row['id'];
	
	
	$result = mysqli_query($con,"SELECT * FROM comments where issueid='".$e->id."'");
	while($row = mysqli_fetch_array($result)){
		$d = new comment();
		$d->commentDescr = $row['comment'];
		$d->owner  = $row['commentowner']  ;
		array_push($e->comment,$d);
	}
   array_push($c,$e);
}
   echo json_encode($c);
?>