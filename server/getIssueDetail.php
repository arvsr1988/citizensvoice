<?php
   class issue {
       public $issueType = "";
       public $location  = "";
       public $time = "";
	   public $imageUrl = "";
	   public $status = "";
	   public $votingcount = "";
	   public $id = "";
	   public $desc ="";
	   public $issueOwner="";
	   public $comment = array();
   }
   
   $e = new issue();
   $e->issueType = "Street Light";
   $e->location  = "Vadapalani";   
   $e->time = "5 hour ago";
    $e->ImageUrl = "image/test.jpg";
    $e->status = "Open";
	$e->votingcount = "1";  
	$e->id = "1"; 
	$e->desc="The screet light is glowing during day time";
	$e->issueOwner="siva@neelsoftware.com";
	array_push($e->comment,"This has been the issue for a very long time, please fix it","Why is there a no response");
   echo json_encode($e);
?>