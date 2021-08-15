<!DOCTYPE html>
<html lang="en">
<?php
include ("partials/head.php");
?>
<body class="animsition">

	
	<?php
	include ("partials/header.php");
	?>
	<!-- breadcrumb -->
	<div class="container">
	</div>
	<!-- Product Detail -->
	<section class="sec-product-detail bg0 p-t-65 p-b-60">
		<div class="container" style="margin-top: 40px">
			<?php
			include ('partials/connect.php');

			$id=$_GET['details_id'];
			$sql="Select * from products where id='$id'";
			$results=$connect->query($sql);
			$final=$results->fetch_assoc();

			?>
			<div class="row">

				

				<div class="col-md-6 col-lg-7 p-b-30">
					<div class="p-l-25 p-r-30 p-lr-0-lg">
						<div class="wrap-slick3 flex-sb flex-w">
							<div class="wrap-slick3-dots"></div>
							<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

							<div class="slick3 gallery-lb">
								


								<div class="item-slick3" data-thumb="<?php echo $final['picture'] ?>">
									<div class="wrap-pic-w pos-relative" style="height: 600px">
										<img src="<?php echo $final['picture'] ?>" alt="IMG-PRODUCT">

										<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="<?php echo $final['picture'] ?>">
											<i class="fa fa-expand"></i>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-5 p-b-30">
					<div class="p-r-50 p-t-5 p-lr-0-lg">
						<h4 class="mtext-105 cl2 js-name-detail p-b-14">
							<?php echo $final['name'] ?>
						</h4>
						<span class="mtext-106 cl2">
							<?php echo $final['price'] ?> TL 
						</span>
						<p class="stext-102 cl3 p-t-23">
							<?php echo $final['description'] ?>
						</p>
						<br>
						<span><i>En Yüksek Teklif: </i> 
							<?php 
							include ('partials/connect.php');
							$sql="SELECT MAX(offerValue) FROM offers";
							$sorgu=mysqli_query($connect,$sql);
							while( $sonuc=mysqli_fetch_row($sorgu) ){
								echo $sonuc[0];  
							}
							?> TL
						</span>
						<hr>
						<!--<span><i>Tüm Teklifler: </i><br> 
							<?php 
							include ('partials/connect.php');
							$sql="SELECT * FROM offers";
							$results=$connect->query($sql);

							while($final=$results->fetch_assoc()){ ?>
								<h8><?php echo $final['offerValue'] ?></h8> TL <br>
							<?php }
							?>
						</span>-->

						<div class="p-t-33">
							<?php
							include ('partials/connect.php');

							$id=$_GET['details_id'];
							$sql="Select * from products where id='$id'";
							$results=$connect->query($sql);
							$final=$results->fetch_assoc();

							?>
							<div class="flex-w flex-r-m p-b-10">
								<div class="size-204 flex-w flex-m respon6-next">
									
									<div class="row">
										<button onclick="location.href='carthandler.php?cart_id=<?php echo $final['id'] ?> &cart_name=<?php echo $final['name'] ?>&cart_price=<?php echo $final['price'] ?>'" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Sepete Ekle
										</button>
										
										
											<?php 
											include ('partials/connect.php');
											if(isset($_POST['details'])) {
											    $offerValue=$_POST['offerValue'];
											    $sql=("INSERT INTO offers(offerValue) VALUES ('$offerValue')");
											 $connect->query($sql);
											}
											?>

										<form method="POST" class="my-5" action="">
											<div class="row">
											<button name="details" class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
												Teklif Ver
											</button>
											&nbsp;
										<input class="bor10" type="text" name="offerValue" required>
										</div>
										</form>
									
										

									</div>
									<div>
									</div>
								</div>
							</div>	

						</div>

					</div>
				</div>
			</div>

			<div class="bor10 m-t-50 p-t-43 p-b-40">
				<?php
				include ('partials/connect.php');

				$id=$_GET['details_id'];
				$sql="Select * from products where id='$id'";
				$results=$connect->query($sql);
				$final=$results->fetch_assoc();

				?>
				<!-- Tab01 -->
				<div class="tab01">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item p-b-10">
							<a class="nav-link active" data-toggle="tab" href="#description" role="tab">Açıklama</a>
						</li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content p-t-43">
						<!-- - -->
						<div class="tab-pane fade show active" id="description" role="tabpanel">
							<div class="how-pos2 p-lr-15-md">
								<p class="stext-102 cl6">
									<?php echo $final['description'] ?>
								</p>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="bg6 flex-c-m flex-w size-302 m-t-73 p-tb-15">
				<span class="stext-107 cl6 p-lr-25">
					SKU: JAK-01
				</span>

				<span class="stext-107 cl6 p-lr-25">
					Kategori: <?php echo $final['name'] ?>
				</span>
			</div>
		</section>

		<!-- Footer -->

		<?php
		include ('partials/footer.php');
		?>

	</body>
	</html>