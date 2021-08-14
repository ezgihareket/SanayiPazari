<!DOCTYPE html>
<html>

<?php
include ('adminpartials/session.php');
include ('adminpartials/head.php');
?>
<body class="hold-transition skin-blue sidebar-mini">
  <div class="wrapper">

   <?php
   include ('adminpartials/header.php');
   include ('adminpartials/aside.php');
   ?>

   <!-- Left side column. contains the logo and sidebar -->


   <!-- Content Wrapper. Contains page content -->
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Anasayfa</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
        <div class="col-sm-9">
          

          <?php
          include ('../partials/connect.php');
          $sql="Select * from orders";
          $results=$connect->query($sql);

          while($final=$results->fetch_assoc()){ ?>


            <a href="ordershow.php?pro_id=<?php echo $final['id']?>">
              <h3>ID : <?php echo $final['id']?><br>TEL : <?php echo $final['phone']?> <br> TUTAR : <?php echo $final['total']?></h3><br>
            </a>

            <a href="orderdelete.php?del_id=<?php echo $final['id'] ?>">
              <button style="color: red">Sil</button>
            </a><hr>


          <?php }
          ?>

        </div>

        <div class="col-sm-3">
        </div>  
      </div>


    </section>
    <!-- right col -->
  </div>
  <!-- /.row (main row) -->

</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<?php
include ('adminpartials/footer.php');
?>
</body>
</html>



