<?php

session_start();
include ('../partials/connect.php');

$total=$_POST['total'];
$phone=$_POST['phone'];
$address=$_POST['address'];
$customerid=$_SESSION['customerid'];

$sql="INSERT INTO orders(customer_id, address, phone, total) VALUES('$customerid', '$address', '$phone', '$total')";
$connect->query($sql);

$sql2="Select id from orders order by id DESC limit 1";
$result=$connect->query($sql2);
$final=$result->fetch_assoc();
$orderid=$final['id'];


foreach ($_SESSION['cart'] as $key => $value) {
	$proid=$value['item_id'];
	$quantity=$value['quantity'];

	$sql3="INSERT INTO order_details(order_id, product_id, quantity) VALUES('$orderid', '$proid', '$quantity')";
	$connect->query($sql3);
}


echo "<script> alert('sipariş verildi');
window.location.href='../index.php';
</script>";

unset($_SESSION['cart']);

?>