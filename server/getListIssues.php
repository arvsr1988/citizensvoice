<?php
   class issue {
       public $issueType = "";
       public $location  = "";
       public $time = "";
	   public $imageUrl = "";
	   public $status = "";
	   public $votingcount = "";
	   public $id = "";
	   
   }
   
   $e = new issue();
   $e->issueType = "Street Light";
   $e->location  = "Vadapalani";   
   $e->time = "5 hour ago";
    $e->ImageUrl = "image/test.jpg";
    $e->status = "Open";
	$e->votingcount = "1";  
	$e->id = "1"; 
$c = array($e,$e);
   echo json_encode($c);
?>