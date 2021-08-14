<?php



if (empty($_SESSION['email'] AND $_SESSION['password'])) {
	echo "<script> alert('Lütfen Giriş Yapın');
	window.location.href='customerforms.php';
	</script>";
}



?>