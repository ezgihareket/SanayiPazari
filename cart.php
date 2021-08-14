<!DOCTYPE html>
<html lang="en">
<?php
session_start();
include ("partials/head.php");
?>
<body class="animsition">
	
	<?php
	include ("partials/header.php");
	?>

	<!-- breadcrumb -->
	<div class="container" style="margin-top: 60px">
		<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
			<a href="index.html" class="stext-109 cl8 hov-cl1 trans-04">
				Anasayfa
				<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
			</a>

			<span class="stext-109 cl4">
				Alışveriş Kartı
			</span>
		</div>
	</div>


	<!-- Shoping Cart -->
	<div class="bg0 p-t-75 p-b-85">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
					<div class="m-l-25 m-r--38 m-lr-0-xl">
						<div class="wrap-table-shopping-cart">
							<table class="table-shopping-cart">
								<tr class="table_head">
									<th class="column-1">Sil</th>
									<th class="column-2">İsim</th>
									<th class="column-3">Fiyat</th>
									<th class="column-4">Miktar</th>
									<th class="column-5">Güncelle</th>
								</tr>

								<?php
								$total=0;
								if (isset($_SESSION['cart'])) {
									
									foreach ($_SESSION['cart'] as $key => $value) {
										$total=$total+$value['item_price']*$value['quantity'];
										?>
										<tr class="table_row">
											<td class="column-1">
												<div class="">
													<form action="cartremove.php" method="POST">
														<button class="btn btn-sm btn-outline-danger" name="remove">Sil</button>
														<input type="hidden" name="item_name" value="<?php echo $value['item_name'] ?>">
													</form>

												</div>
											</td>
											<td class="column-2"><?php echo $value['item_name'] ?></td>
											<td class="column-3"><?php echo $value['item_price'] ?> TL</td>
											<td class="column-4">
												<form action="cartupdate.php" method="POST">


													<div class="wrap-num-product flex-w m-l-auto m-r-0">
														<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
															<i class="fs-16 zmdi zmdi-minus"></i>
														</div>

														<input name="quantity" class="mtext-104 cl3 txt-center num-product" type="number" name="num-product1" value="<?php echo $value['quantity'] ?>" >

														<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
															<i class="fs-16 zmdi zmdi-plus"></i>
														</div>
													</div>
												</td>
												<td class="column-5">
													<button class="flex stext-101 cl2 size-105 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10" name="update">Güncelle</button>
													<input type="hidden" name="item_name" value="<?php echo $value['item_name'] ?>">
												</form>
											</td>
										</tr>

									<?php }
								} ?>

							</table>
						</div>

						<div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">

							</div>

						</div>
					</div>
				</div>

				<div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
					<div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
						<h4 class="mtext-109 cl2 p-b-30">
							Sepet Toplam
						</h4>

						<div class="flex-w flex-t bor12 p-b-13">
							<div class="size-208">
								<span class="stext-110 cl2">
									Toplam:
								</span>
							</div>

							<div class="size-209">
								<span class="mtext-110 cl2">
									<?php echo $total ?> TL
								</span>
							</div>
						</div>
						

						<input type="hidden" name="total" value="<?php echo $total ?>">
						<button onclick="location.href='cart2.php'" class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer" type="submit" name="placeorder">
							Proceed to Checkout
						</button>
					</form>
				</div>
			</div>

		</div>
	</div>
</div>
</div>
</div>




<!-- Footer -->
<?php
include ('partials/footer.php');
?>
</body>
</html>