<?php

include ("../partials/connect.php");
$newid=$_GET['del_id'];

$sql="Delete from categories where id='$newid'";

if (mysqli_query($connect,$sql)) {
	header('location: categoryshow.php');
}else{
	echo "Not Delete";
}


?>